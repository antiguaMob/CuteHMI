import qbs 1.0

import cutehmi

//<cutehmi_qmlplugindump-1.workaround target="Qt" cause="missing">
// This tool is provided as a workaround.
Project {
	name: "cutehmi_qmlplugindump"

	condition: !qbs.targetOS.contains("android")

	cutehmi.Tool {
		condition: Qt.core.versionMajor === 5 && [12, 13].contains(Qt.core.versionMinor)

		name: parent.name

		consoleApplication: true

		major: 0

		vendor: "CuteHMI"

		domain: "cutehmi.kde.org"

		friendlyName: "QML Plugin Dump"

		description: "A tool that generates qmltypes files."

		author: "The Qt Company Ltd"

		copyright: "The Qt Company Ltd"

		license: "GNU General Public License, v. 3.0"

		Group {
			name: "5.12 branch"

			condition: Qt.core.versionMajor === 5 && Qt.core.versionMinor === 12

			files: [
			 "src/5/12/6/main.cpp",
			 "src/5/12/6/qmlstreamwriter.cpp",
			 "src/5/12/6/qmlstreamwriter.h",
			 "src/5/12/6/qmltypereader.cpp",
			 "src/5/12/6/qmltypereader.h",
			 ]
		}

		Group {
			name: "5.13 branch"

			condition: Qt.core.versionMajor === 5 && Qt.core.versionMinor === 13

			files: [
				"src/5/13/2/main.cpp",
				"src/5/13/2/qmlstreamwriter.cpp",
				"src/5/13/2/qmlstreamwriter.h",
				"src/5/13/2/qmltypereader.cpp",
				"src/5/13/2/qmltypereader.h",
			 ]
		}

		files: [
			"README.md",
		]

		Group {
			fileTagsFilter: ["application"]
			fileTags: ["qmlplugindump"]
		}

		Depends { name: "Qt.core" }

		Depends { name: "Qt.qml-private" }

		Depends { name: "Qt.quick-private" }
	}
}
//</cutehmi_qmlplugindump-1.workaround>

//(c)C: Copyright © 2019, CuteHMI. All rights reserved.
//(c)C: This file is a part of CuteHMI.
//(c)C: CuteHMI is free software: you can redistribute it and/or modify it under the terms of the GNU Lesser General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
//(c)C: CuteHMI is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for more details.
//(c)C: You should have received a copy of the GNU Lesser General Public License along with CuteHMI.  If not, see <https://www.gnu.org/licenses/>.
