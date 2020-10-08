from typing import Any, Dict

from kivy.app import App
from kivy.core.window import Window
from kivy.lang import Builder
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.button import Button
from kivy.uix.checkbox import CheckBox
from kivy.uix.gridlayout import GridLayout
from kivy.uix.label import Label
from kivy.uix.stacklayout import StackLayout
from kivy.uix.textinput import TextInput
import requests

import widgets.state
from widgets.info_bubble import print_on_info_bubble
from widgets.watering_scheduler_communicator import WateringSchedulerCommunicator
from widgets.weedays_popup import WeekdaysPopupLayout


class WeekdaysButton(Button):

    def __init__(self, relay: Dict[str, Any], **kwargs):
        self.relay = relay
        super(WeekdaysButton, self).__init__(text=self._create_text_label(),
                                            **kwargs)

    def _create_text_label(self):
        weekdays_text = ''
        for weekday in self.relay['weekdays']:
            weekdays_text += f'{weekday}'
        return weekdays_text

class RelayControlerWidget(BoxLayout):

    def __init__(self, relay: Dict[str, Any], **kwargs):
        super(RelayControlerWidget, self).__init__(**kwargs)
        orientation = 'horizontal'
        self.cols = 5
        self.relay = relay
        self._generate_widgets()

    def _generate_widgets(self) -> None:
        self.label = Label(text=f'{self.relay["section_name"]} ({self.relay["channel"]})')

        def validate_time_input(time_str):
            '''Checks if the string representing time is well formed'''
            is_valid = True
            hours = int(time_str.split(':')[0])
            if (hours >= 24) | (hours < 0):
                is_valid = False

            minutes = int(time_str.split(':')[1])
            if (minutes >= 60) | (minutes < 0):
                is_valid = False
            return is_valid

        def _time_start_on_enter(instance):
            is_valid = validate_time_input(instance.text)
            if is_valid:
                for relay_nr, relay in enumerate(widgets.state.relays):
                    if relay['channel'] == self.relay['channel']:
                        widgets.state.relays[relay_nr]['start'] = instance.text

        # self.time_start = TextInput(text=self.relay['start'],
        #                             multiline=False,
        #                             halign='center',
        #                             on_text_validate=_time_start_on_enter,
        #                            )

        # def _time_end_on_enter(instance):
        #     is_valid = validate_time_input(instance.text)
        #     if is_valid:
        #         for relay_nr, relay in enumerate(widgets.state.relays):
        #             if relay['channel'] == self.relay['channel']:
        #                 widgets.state.relays[relay_nr]['end'] = instance.text

        # self.time_end = TextInput(text=self.relay['end'],
        #                           multiline=False,
        #                           halign='center',
        #                           on_text_validate=_time_end_on_enter,
        #                          )
        # self.weekdays_layout = WeekdaysPopupLayout(self.relay['channel'], self.relay['weekdays'])
        # self.weekday_button = WeekdaysButton(self.relay,
        #                                     on_release=self.weekdays_layout.popup.open,
        #                                     )
        # self.manual_checkbox = CheckBox()

        self.add_widget(self.label)
        # self.add_widget(self.time_start)
        # self.add_widget(self.time_end)
        # self.add_widget(self.weekday_button)
        # self.add_widget(self.manual_checkbox)

class RelayControlersLayout(StackLayout):

    def __init__(self, **kwargs):
        super(RelayControlersLayout, self).__init__(**kwargs)
        self.relays_control_widgets = []

        # self.create_relay_controler_widgets()
        self.communicator = WateringSchedulerCommunicator(widgets.state.host)

    def create_relay_controler_widgets(self):
        button_settings = {
            'size_hint': (None, None),
            'width': Window.width,
            'height': int(Window.height)/15.,
        }

        self.relays_control_widgets = [RelayControlerWidget(relay,
                                                            size_hint=(1, 0.06),
                                                            spacing=(0, 0),
                                                           )
                                       for relay in widgets.state.relays
                                      ]
        for relays_control_widget in self.relays_control_widgets:
            self.add_widget(relays_control_widget)

    def remove_relay_controler_widgets(self):
        self.clear_widgets()

    def update_relay_widgets(self, *args):
        self.remove_relay_controler_widgets()
        self.create_relay_controler_widgets()

    def delete_all_schedule(self, *args):
        self.communicator.delete_all_schedule(widgets.state.relays)

        widgets.state.relays = self.communicator.get_formatted_relays_data()
        self.update_relay_widgets(None)

    def send_schedule_to_host(self, *args):
        self.communicator.delete_all_schedule(widgets.state.relays)
        self.communicator.send_all_schedule_to_host(widgets.state.relays)