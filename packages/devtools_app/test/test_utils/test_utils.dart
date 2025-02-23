// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';

import 'package:devtools_app/devtools_app.dart';

SyncTimelineEvent testSyncTimelineEvent(TraceEventWrapper eventWrapper) =>
    SyncTimelineEvent(eventWrapper);

TraceEvent testTraceEvent(Map<String, dynamic> json) =>
    TraceEvent(jsonDecode(jsonEncode(json)));

int _testTimeReceived = 0;
TraceEventWrapper testTraceEventWrapper(Map<String, dynamic> json) {
  return TraceEventWrapper(testTraceEvent(json), _testTimeReceived++);
}
