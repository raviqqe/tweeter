chrome.action.onClicked.addListener(async () => {
  const [tab] = await chrome.tabs.query({
    active: true,
    currentWindow: true,
  });

  if (!tab) { return}

  chrome.tabs.create({
    active: true,
    url: "https://twitter.com/intent/tweet?url=" + tab.url,
  });
});
