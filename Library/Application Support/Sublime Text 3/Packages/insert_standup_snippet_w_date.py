import sublime
import sublime_plugin
import time


class insert_sublime_snippet_w_date(sublime_plugin.TextCommand):
    def run(self, edit):
        date = time.strftime("%Y-%m-%d")
        self.view.run_command("insert_snippet", {
            "name": "Packages/User/standup.sublime-snippet",
            "DATE": date
        })
