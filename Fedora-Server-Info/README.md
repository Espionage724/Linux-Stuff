This folder contains text documents containing a list of software choices offered during a Fedora Server install. I didn't see it clearly mentioned anywhere else, so hopefully this helps someone :)

It comes from a Fedora 22 install, and may vary with older or newer versions (I'll try to keep it up-to-date when a new version arrives).

To get the information, run the following commands:

sudo dnf grouplist
sudo dnf groupinfo "NAME"

"NAME" being the name of the group you want to query. Fedora Server specifically gives you the choice of Minimal Install, Fedora Server, Web Server, and Infrastructure Server.
