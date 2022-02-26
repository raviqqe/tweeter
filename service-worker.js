chrome.action.onClicked.addListener(async () => {
  const tab = await chrome.tabs.getCurrent();

  chrome.tabs.create({
    active: true,
    url: "https://twitter.com/intent/tweet?url=" + tab.url,
  });
});
