0
1
4
5
7
8
9
10
11
12
14
16
17
18
19
20
21
22
23
24
25
27
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
58
59
60
61
62
63
64
65
67
68
70
71
72
73
74
75
76
77
78
81
82
83
84
85
86
87
88
89
90
91
92
93
96
97
98
99
101
102
103
104
105
106
107
108
109
110
111
112
114
115
117
119
120
121
123
124
125
126
127
128
129
130
131
132
133
134
135
136
137
138
139
140
142
143
144
145
146
147
148
149
150
151
152
153
154
155
156
157
158
159
160
161
162
163
164
165
166
168
169
170
171
172
173
175
176
177
178
179
180
181
182
183
184
185
186
187
188
189
190
193
194
195
196
197
198
199
200
201
202
203
204
205
206
207
208
209
210
211
212
213
214
215
216
217
218
219
220
221
222
223
224
225
226
227
228
229
230
231
233
234
235
236
237
238
239
240
242
243
244
245
247
249
251
253
254
255
256
257
258
259
260
261
262
263
264
265
266
267
268
269
270
271
273
274
275
276
277
278
279
280
281
282
283
284
285
286
287
288
289
290
291
292
294
295
296
297
298
299
300
301
302
303
304
305
306
307
308
309
310
313
314
315
316
318
319
320
321
323
326
327
328
329
330
331
332
334
335
336
337
339
340
341
342
343
345
346
347
348
349
350
351
352
353
354
355
356
357
358
359
360
361
363
364
365
366
367
368
369
370
371
372
373
374
375
376
377
378
379
380
381
382
383
385
386
387
389
390
391
393
394
395
396
397
398
399
400
401
402
403
404
405
406
407
408
409
410
411
412
413
414
415
416
417
418
419
422
423
424
425
428
429
430
431
432
433
434
435
436
437
438
439
440
441
442
443
444
445
446
447
448
449
450
451
452
453
455
456
457
459
460
461
462
463
464
465
466
467
468
470
471
472
473
475
476
477
479
480
481
482
483
484
485
486
487
488
489
490
491
493
494
495
496
497
499
