import sublime_plugin


class InsertHeaderCommand(sublime_plugin.TextCommand):

    def run(self, edit):
        def on_done(input_string):
            rulers = self.view.settings().get("rulers", [])
            maxlength = min(rulers) if rulers else 80

            dashlength = maxlength - len(input_string) - 5
            if dashlength < 0:
                print("Section header is too large:", input_string)
                return

            string = "\n### {} {}\n$0".format(input_string, "—" * dashlength)
            self.view.run_command("insert_snippet", {"contents": string})

        def on_change(input_string):
            print("Input changed: %s" % input_string)

        def on_cancel():
            print("User cancelled the input")

        window = self.view.window()
        window.show_input_panel("Section title:", "",
                                on_done, on_change, on_cancel)
