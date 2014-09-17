/*
 * Copyright (c) 2011-2014 BlackBerry Limited.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import bb.cascades 1.2

Page {
    Container {
        layout: DockLayout {}
        horizontalAlignment: HorizontalAlignment.Fill
        verticalAlignment: VerticalAlignment.Fill
        Container {
            layout: StackLayout {}
            horizontalAlignment: HorizontalAlignment.Center
            verticalAlignment: VerticalAlignment.Center
            Container {
                bottomPadding: 30
                CustomButton {
                    text: "Share on BBM in C++"
                    onClicked: {
                        _app.shareOnBBM()
                    }
                }
            }
            Container {
                CustomButton {            
                    text: "Share on BBM in QML"
                    onClicked: {
                        invoke.trigger("bb.action.SHARE");
                    }
                    attachedObjects: [      
                        Invocation {
                            id: invoke
                            query {
                                mimeType: "text/plain"
                                invokeTargetId: "sys.bbm.sharehandler"
                                data: (qsTr("TaxCalc is now available.  Get it here: http://appworld.blackberry.com/webstore/content/54009887") + Retranslate.onLocaleOrLanguageChanged);
                            }
                        }
                    ]
                }
            }
        }
    }
}
