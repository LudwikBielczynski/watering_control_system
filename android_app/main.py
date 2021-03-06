from kivy.app import App
from kivy.clock import Clock
from kivy.lang import Builder
from kivy.uix.screenmanager import ScreenManager, Screen
from kivy.uix.bubble import Bubble

import widgets.state
from widgets.relay_settings.weekdays_popup import WeekdaysPopupLayout
from transition.relay_controller import maybe_switch_to_relay_controller

widgets.state.DEBUG = True

# Declare info bubble to which the text is logged
Builder.load_file('widgets/info_bubble.kv')
class InfoBubble(Bubble): ...

# Declare all screens
Builder.load_file('screen/login.kv')
class LoginScreen(Screen): ...

Builder.load_file('screen/relay_controller.kv')
class RelayControllerScreen(Screen): ...

Builder.load_file('screen/relay_settings.kv')
class RelaySettingsScreen(Screen):

    def open_weekday_popup(self):
        popup_layout = WeekdaysPopupLayout()
        popup_layout.popup.open()

# Create the screen manager
class WateringControlSystemScreenManager(ScreenManager):

    def __init__(self, **kwargs):
        self.message = 'WateringControlSystemScreenManager'
        super(WateringControlSystemScreenManager, self).__init__(**kwargs)

        self.login_screen = LoginScreen(name='login')
        self.relay_controller_screen = RelayControllerScreen(name='relay_controller')
        self.relay_settings_screen = RelaySettingsScreen(name='relay_settings')

        self.add_widget(self.login_screen)
        self.add_widget(self.relay_controller_screen)
        self.add_widget(self.relay_settings_screen)

class WateringControlSystemApp(App):

    def __init__(self, **kwargs):
        self.message = 'WateringControlSystemApp'
        super(WateringControlSystemApp, self).__init__(**kwargs)

    def build(self):
        self.screen_manager = WateringControlSystemScreenManager()
        return self.screen_manager

    def set_state_host(self):
        widgets.state.host = self.root.current_screen.ids.host_name.text

    def set_state_username(self):
        widgets.state.username = self.root.current_screen.ids.username.text

    def set_state_password(self):
        widgets.state.password = self.root.current_screen.ids.password.text

if __name__ == '__main__':
    Clock.schedule_interval(maybe_switch_to_relay_controller, 1)
    app = WateringControlSystemApp()
    app.run()
