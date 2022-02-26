chrome.action.onClicked.addListener(() => {
  chrome.windows.getCurrent().open("https://twitter.com", "_blank");
});
