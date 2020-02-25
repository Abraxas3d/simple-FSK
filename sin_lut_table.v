 


/*
module sin_lut_table(
	 .clk( ),  
	 .addr( ) , 
	 .q( )
	); 
*/

module sin_lut_table(   //  3 clock delay 
	input clk,  
	input [8:0]addr , 
	output reg [11:0]q
	); 

reg [8:0] addrr;
reg [11:0] qr;
always @(posedge clk) addrr<=addr;	
//always @(posedge clk)   q <= $signed (qr) >>> 1 ;
always @(posedge clk)   q <=  qr  ;

always @ (posedge clk)
case (addrr)
   0: qr <= 12'h000 ;
   1: qr <= 12'h024 ;
   2: qr <= 12'h047 ;
   3: qr <= 12'h06b ;
   4: qr <= 12'h08f ;
   5: qr <= 12'h0b2 ;
   6: qr <= 12'h0d6 ;
   7: qr <= 12'h0fa ;
   8: qr <= 12'h11d ;
   9: qr <= 12'h140 ;
  10: qr <= 12'h164 ;
  11: qr <= 12'h187 ;
  12: qr <= 12'h1aa ;
  13: qr <= 12'h1cd ;
  14: qr <= 12'h1ef ;
  15: qr <= 12'h212 ;
  16: qr <= 12'h235 ;
  17: qr <= 12'h257 ;
  18: qr <= 12'h279 ;
  19: qr <= 12'h29b ;
  20: qr <= 12'h2bc ;
  21: qr <= 12'h2de ;
  22: qr <= 12'h2ff ;
  23: qr <= 12'h320 ;
  24: qr <= 12'h341 ;
  25: qr <= 12'h362 ;
  26: qr <= 12'h382 ;
  27: qr <= 12'h3a2 ;
  28: qr <= 12'h3c1 ;
  29: qr <= 12'h3e1 ;
  30: qr <= 12'h400 ;
  31: qr <= 12'h41f ;
  32: qr <= 12'h43d ;
  33: qr <= 12'h45b ;
  34: qr <= 12'h479 ;
  35: qr <= 12'h497 ;
  36: qr <= 12'h4b4 ;
  37: qr <= 12'h4d1 ;
  38: qr <= 12'h4ed ;
  39: qr <= 12'h509 ;
  40: qr <= 12'h524 ;
  41: qr <= 12'h540 ;
  42: qr <= 12'h55a ;
  43: qr <= 12'h575 ;
  44: qr <= 12'h58f ;
  45: qr <= 12'h5a8 ;
  46: qr <= 12'h5c1 ;
  47: qr <= 12'h5da ;
  48: qr <= 12'h5f2 ;
  49: qr <= 12'h60a ;
  50: qr <= 12'h621 ;
  51: qr <= 12'h638 ;
  52: qr <= 12'h64e ;
  53: qr <= 12'h664 ;
  54: qr <= 12'h679 ;
  55: qr <= 12'h68e ;
  56: qr <= 12'h6a2 ;
  57: qr <= 12'h6b6 ;
  58: qr <= 12'h6c9 ;
  59: qr <= 12'h6db ;
  60: qr <= 12'h6ee ;
  61: qr <= 12'h6ff ;
  62: qr <= 12'h710 ;
  63: qr <= 12'h721 ;
  64: qr <= 12'h731 ;
  65: qr <= 12'h740 ;
  66: qr <= 12'h74f ;
  67: qr <= 12'h75d ;
  68: qr <= 12'h76b ;
  69: qr <= 12'h778 ;
  70: qr <= 12'h784 ;
  71: qr <= 12'h790 ;
  72: qr <= 12'h79c ;
  73: qr <= 12'h7a7 ;
  74: qr <= 12'h7b1 ;
  75: qr <= 12'h7ba ;
  76: qr <= 12'h7c3 ;
  77: qr <= 12'h7cc ;
  78: qr <= 12'h7d3 ;
  79: qr <= 12'h7da ;
  80: qr <= 12'h7e1 ;
  81: qr <= 12'h7e7 ;
  82: qr <= 12'h7ec ;
  83: qr <= 12'h7f1 ;
  84: qr <= 12'h7f5 ;
  
  
  85: qr <= 12'h7f8 ;
  86: qr <= 12'h7fa ;
  87: qr <= 12'h7fc ;
  88: qr <= 12'h7fd ;
  89: qr <= 12'h7fe ;
  
  90: qr <= 12'h7ff ;
  
  91: qr <= 12'h7fe ;
  92: qr <= 12'h7ff ;
  93: qr <= 12'h7fc ;
  94: qr <= 12'h7fa ;
  95: qr <= 12'h7f8 ;
  
  
  
  96: qr <= 12'h7f5 ;
  97: qr <= 12'h7f1 ;
  98: qr <= 12'h7ec ;
  99: qr <= 12'h7e7 ;
 100: qr <= 12'h7e1 ;
 101: qr <= 12'h7da ;
 102: qr <= 12'h7d3 ;
 103: qr <= 12'h7cc ;
 104: qr <= 12'h7c3 ;
 105: qr <= 12'h7ba ;
 106: qr <= 12'h7b1 ;
 107: qr <= 12'h7a7 ;
 108: qr <= 12'h79c ;
 109: qr <= 12'h790 ;
 110: qr <= 12'h784 ;
 111: qr <= 12'h778 ;
 112: qr <= 12'h76b ;
 113: qr <= 12'h75d ;
 114: qr <= 12'h74f ;
 115: qr <= 12'h740 ;
 116: qr <= 12'h731 ;
 117: qr <= 12'h721 ;
 118: qr <= 12'h710 ;
 119: qr <= 12'h6ff ;
 120: qr <= 12'h6ee ;
 121: qr <= 12'h6db ;
 122: qr <= 12'h6c9 ;
 123: qr <= 12'h6b6 ;
 124: qr <= 12'h6a2 ;
 125: qr <= 12'h68e ;
 126: qr <= 12'h679 ;
 127: qr <= 12'h664 ;
 128: qr <= 12'h64e ;
 129: qr <= 12'h638 ;
 130: qr <= 12'h621 ;
 131: qr <= 12'h60a ;
 132: qr <= 12'h5f2 ;
 133: qr <= 12'h5da ;
 134: qr <= 12'h5c1 ;
 135: qr <= 12'h5a8 ;
 136: qr <= 12'h58f ;
 137: qr <= 12'h575 ;
 138: qr <= 12'h55a ;
 139: qr <= 12'h540 ;
 140: qr <= 12'h524 ;
 141: qr <= 12'h509 ;
 142: qr <= 12'h4ed ;
 143: qr <= 12'h4d1 ;
 144: qr <= 12'h4b4 ;
 145: qr <= 12'h497 ;
 146: qr <= 12'h479 ;
 147: qr <= 12'h45b ;
 148: qr <= 12'h43d ;
 149: qr <= 12'h41f ;
 150: qr <= 12'h400 ;
 151: qr <= 12'h3e1 ;
 152: qr <= 12'h3c1 ;
 153: qr <= 12'h3a2 ;
 154: qr <= 12'h382 ;
 155: qr <= 12'h362 ;
 156: qr <= 12'h341 ;
 157: qr <= 12'h320 ;
 158: qr <= 12'h2ff ;
 159: qr <= 12'h2de ;
 160: qr <= 12'h2bc ;
 161: qr <= 12'h29b ;
 162: qr <= 12'h279 ;
 163: qr <= 12'h257 ;
 164: qr <= 12'h235 ;
 165: qr <= 12'h212 ;
 166: qr <= 12'h1ef ;
 167: qr <= 12'h1cd ;
 168: qr <= 12'h1aa ;
 169: qr <= 12'h187 ;
 170: qr <= 12'h164 ;
 171: qr <= 12'h140 ;
 172: qr <= 12'h11d ;
 173: qr <= 12'h0fa ;
 174: qr <= 12'h0d6 ;
 175: qr <= 12'h0b2 ;
 176: qr <= 12'h08f ;
 177: qr <= 12'h06b ;
 178: qr <= 12'h047 ;
 179: qr <= 12'h024 ;
 180: qr <= 12'h000 ;
 181: qr <= 12'hfdc ;
 182: qr <= 12'hfb9 ;
 183: qr <= 12'hf95 ;
 184: qr <= 12'hf71 ;
 185: qr <= 12'hf4e ;
 186: qr <= 12'hf2a ;
 187: qr <= 12'hf06 ;
 188: qr <= 12'hee3 ;
 189: qr <= 12'hec0 ;
 190: qr <= 12'he9c ;
 191: qr <= 12'he79 ;
 192: qr <= 12'he56 ;
 193: qr <= 12'he33 ;
 194: qr <= 12'he11 ;
 195: qr <= 12'hdee ;
 196: qr <= 12'hdcb ;
 197: qr <= 12'hda9 ;
 198: qr <= 12'hd87 ;
 199: qr <= 12'hd65 ;
 200: qr <= 12'hd44 ;
 201: qr <= 12'hd22 ;
 202: qr <= 12'hd01 ;
 203: qr <= 12'hce0 ;
 204: qr <= 12'hcbf ;
 205: qr <= 12'hc9e ;
 206: qr <= 12'hc7e ;
 207: qr <= 12'hc5e ;
 208: qr <= 12'hc3f ;
 209: qr <= 12'hc1f ;
 210: qr <= 12'hc00 ;
 211: qr <= 12'hbe1 ;
 212: qr <= 12'hbc3 ;
 213: qr <= 12'hba5 ;
 214: qr <= 12'hb87 ;
 215: qr <= 12'hb69 ;
 216: qr <= 12'hb4c ;
 217: qr <= 12'hb2f ;
 218: qr <= 12'hb13 ;
 219: qr <= 12'haf7 ;
 220: qr <= 12'hadc ;
 221: qr <= 12'hac0 ;
 222: qr <= 12'haa6 ;
 223: qr <= 12'ha8b ;
 224: qr <= 12'ha71 ;
 225: qr <= 12'ha58 ;
 226: qr <= 12'ha3f ;
 227: qr <= 12'ha26 ;
 228: qr <= 12'ha0e ;
 229: qr <= 12'h9f6 ;
 230: qr <= 12'h9df ;
 231: qr <= 12'h9c8 ;
 232: qr <= 12'h9b2 ;
 233: qr <= 12'h99c ;
 234: qr <= 12'h987 ;
 235: qr <= 12'h972 ;
 236: qr <= 12'h95e ;
 237: qr <= 12'h94a ;
 238: qr <= 12'h937 ;
 239: qr <= 12'h925 ;
 240: qr <= 12'h912 ;
 241: qr <= 12'h901 ;
 242: qr <= 12'h8f0 ;
 243: qr <= 12'h8df ;
 244: qr <= 12'h8cf ;
 245: qr <= 12'h8c0 ;
 246: qr <= 12'h8b1 ;
 247: qr <= 12'h8a3 ;
 248: qr <= 12'h895 ;
 249: qr <= 12'h888 ;
 250: qr <= 12'h87c ;
 251: qr <= 12'h870 ;
 252: qr <= 12'h864 ;
 253: qr <= 12'h859 ;
 254: qr <= 12'h84f ;
 255: qr <= 12'h846 ;
 256: qr <= 12'h83d ;
 257: qr <= 12'h834 ;
 258: qr <= 12'h82d ;
 259: qr <= 12'h826 ;
 260: qr <= 12'h81f ;
 261: qr <= 12'h819 ;
 262: qr <= 12'h814 ;
 263: qr <= 12'h80f ;
 
 
 
 
 
 
 
 264: qr <= 12'h80b ;
 265: qr <= 12'h808 ;
 266: qr <= 12'h805 ;
 267: qr <= 12'h803 ;
 268: qr <= 12'h801 ;
 
 269: qr <= 12'h800 ;
 
 270: qr <= 12'h800 ;
 271: qr <= 12'h800 ;
 272: qr <= 12'h801 ;
 273: qr <= 12'h803 ;
 274: qr <= 12'h805 ;
 
 275: qr <= 12'h808 ;
 276: qr <= 12'h80b ;
 277: qr <= 12'h80f ;
 278: qr <= 12'h814 ;
 279: qr <= 12'h819 ;
 280: qr <= 12'h81f ;
 281: qr <= 12'h826 ;
 282: qr <= 12'h82d ;
 283: qr <= 12'h834 ;
 284: qr <= 12'h83d ;
 285: qr <= 12'h846 ;
 286: qr <= 12'h84f ;
 287: qr <= 12'h859 ;
 288: qr <= 12'h864 ;
 289: qr <= 12'h870 ;
 290: qr <= 12'h87c ;
 291: qr <= 12'h888 ;
 292: qr <= 12'h895 ;
 293: qr <= 12'h8a3 ;
 294: qr <= 12'h8b1 ;
 295: qr <= 12'h8c0 ;
 296: qr <= 12'h8cf ;
 297: qr <= 12'h8df ;
 298: qr <= 12'h8f0 ;
 299: qr <= 12'h901 ;
 300: qr <= 12'h912 ;
 301: qr <= 12'h925 ;
 302: qr <= 12'h937 ;
 303: qr <= 12'h94a ;
 304: qr <= 12'h95e ;
 305: qr <= 12'h972 ;
 306: qr <= 12'h987 ;
 307: qr <= 12'h99c ;
 308: qr <= 12'h9b2 ;
 309: qr <= 12'h9c8 ;
 310: qr <= 12'h9df ;
 311: qr <= 12'h9f6 ;
 312: qr <= 12'ha0e ;
 313: qr <= 12'ha26 ;
 314: qr <= 12'ha3f ;
 315: qr <= 12'ha58 ;
 316: qr <= 12'ha71 ;
 317: qr <= 12'ha8b ;
 318: qr <= 12'haa6 ;
 319: qr <= 12'hac0 ;
 320: qr <= 12'hadc ;
 321: qr <= 12'haf7 ;
 322: qr <= 12'hb13 ;
 323: qr <= 12'hb2f ;
 324: qr <= 12'hb4c ;
 325: qr <= 12'hb69 ;
 326: qr <= 12'hb87 ;
 327: qr <= 12'hba5 ;
 328: qr <= 12'hbc3 ;
 329: qr <= 12'hbe1 ;
 330: qr <= 12'hc00 ;
 331: qr <= 12'hc1f ;
 332: qr <= 12'hc3f ;
 333: qr <= 12'hc5e ;
 334: qr <= 12'hc7e ;
 335: qr <= 12'hc9e ;
 336: qr <= 12'hcbf ;
 337: qr <= 12'hce0 ;
 338: qr <= 12'hd01 ;
 339: qr <= 12'hd22 ;
 340: qr <= 12'hd44 ;
 341: qr <= 12'hd65 ;
 342: qr <= 12'hd87 ;
 343: qr <= 12'hda9 ;
 344: qr <= 12'hdcb ;
 345: qr <= 12'hdee ;
 346: qr <= 12'he11 ;
 347: qr <= 12'he33 ;
 348: qr <= 12'he56 ;
 349: qr <= 12'he79 ;
 350: qr <= 12'he9c ;
 351: qr <= 12'hec0 ;
 352: qr <= 12'hee3 ;
 353: qr <= 12'hf06 ;
 354: qr <= 12'hf2a ;
 355: qr <= 12'hf4e ;
 356: qr <= 12'hf71 ;
 357: qr <= 12'hf95 ;
 358: qr <= 12'hfb9 ;
 359: qr <= 12'hfdc ;
 360: qr <= 12'h000 ;
 361: qr <= 12'h024 ;
 362: qr <= 12'h047 ;
 363: qr <= 12'h06b ;
 364: qr <= 12'h08f ;
 365: qr <= 12'h0b2 ;
 366: qr <= 12'h0d6 ;
 367: qr <= 12'h0fa ;
 368: qr <= 12'h11d ;
 369: qr <= 12'h140 ;
 370: qr <= 12'h164 ;
 371: qr <= 12'h187 ;
 372: qr <= 12'h1aa ;
 373: qr <= 12'h1cd ;
 374: qr <= 12'h1ef ;
 375: qr <= 12'h212 ;
 376: qr <= 12'h235 ;
 377: qr <= 12'h257 ;
 378: qr <= 12'h279 ;
 379: qr <= 12'h29b ;
 380: qr <= 12'h2bc ;
 381: qr <= 12'h2de ;
 382: qr <= 12'h2ff ;
 383: qr <= 12'h320 ;
 384: qr <= 12'h341 ;
 385: qr <= 12'h362 ;
 386: qr <= 12'h382 ;
 387: qr <= 12'h3a2 ;
 388: qr <= 12'h3c1 ;
 389: qr <= 12'h3e1 ;
 390: qr <= 12'h400 ;
 391: qr <= 12'h41f ;
 392: qr <= 12'h43d ;
 393: qr <= 12'h45b ;
 394: qr <= 12'h479 ;
 395: qr <= 12'h497 ;
 396: qr <= 12'h4b4 ;
 397: qr <= 12'h4d1 ;
 398: qr <= 12'h4ed ;
 399: qr <= 12'h509 ;
 400: qr <= 12'h524 ;
 401: qr <= 12'h540 ;
 402: qr <= 12'h55a ;
 403: qr <= 12'h575 ;
 404: qr <= 12'h58f ;
 405: qr <= 12'h5a8 ;
 406: qr <= 12'h5c1 ;
 407: qr <= 12'h5da ;
 408: qr <= 12'h5f2 ;
 409: qr <= 12'h60a ;
 410: qr <= 12'h621 ;
 411: qr <= 12'h638 ;
 412: qr <= 12'h64e ;
 413: qr <= 12'h664 ;
 414: qr <= 12'h679 ;
 415: qr <= 12'h68e ;
 416: qr <= 12'h6a2 ;
 417: qr <= 12'h6b6 ;
 418: qr <= 12'h6c9 ;
 419: qr <= 12'h6db ;
 420: qr <= 12'h6ee ;
 421: qr <= 12'h6ff ;
 422: qr <= 12'h710 ;
 423: qr <= 12'h721 ;
 424: qr <= 12'h731 ;
 425: qr <= 12'h740 ;
 426: qr <= 12'h74f ;
 427: qr <= 12'h75d ;
 428: qr <= 12'h76b ;
 429: qr <= 12'h778 ;
 430: qr <= 12'h784 ;
 431: qr <= 12'h790 ;
 432: qr <= 12'h79c ;
 433: qr <= 12'h7a7 ;
 434: qr <= 12'h7b1 ;
 435: qr <= 12'h7ba ;
 436: qr <= 12'h7c3 ;
 437: qr <= 12'h7cc ;
 438: qr <= 12'h7d3 ;
 439: qr <= 12'h7da ;
 440: qr <= 12'h7e1 ;
 441: qr <= 12'h7e7 ;
 442: qr <= 12'h7ec ;
 443: qr <= 12'h7f1 ;
 444: qr <= 12'h7f5 ;
 
 
 360 + 85: qr <= 12'h7f8 ;
 360 + 86: qr <= 12'h7fa ;
 360 + 87: qr <= 12'h7fc ;
 360 + 88: qr <= 12'h7fd ;
 360 + 89: qr <= 12'h7fe ;
  
 360 + 90: qr <= 12'h7ff ;
  
 360 + 91: qr <= 12'h7fe ;
 360 + 92: qr <= 12'h7ff ;
 360 + 93: qr <= 12'h7fc ;
 360 + 94: qr <= 12'h7fa ;
 360 + 95: qr <= 12'h7f8 ;
 
 
 456: qr <= 12'h7f5 ;
 457: qr <= 12'h7f1 ;
 458: qr <= 12'h7ec ;
 459: qr <= 12'h7e7 ;
 460: qr <= 12'h7e1 ;
 461: qr <= 12'h7da ;
 462: qr <= 12'h7d3 ;
 463: qr <= 12'h7cc ;
 464: qr <= 12'h7c3 ;
 465: qr <= 12'h7ba ;
 466: qr <= 12'h7b1 ;
 467: qr <= 12'h7a7 ;
 468: qr <= 12'h79c ;
 469: qr <= 12'h790 ;
 470: qr <= 12'h784 ;
 471: qr <= 12'h778 ;
 472: qr <= 12'h76b ;
 473: qr <= 12'h75d ;
 474: qr <= 12'h74f ;
 475: qr <= 12'h740 ;
 476: qr <= 12'h731 ;
 477: qr <= 12'h721 ;
 478: qr <= 12'h710 ;
 479: qr <= 12'h6ff ;
 480: qr <= 12'h6ee ;
 481: qr <= 12'h6db ;
 482: qr <= 12'h6c9 ;
 483: qr <= 12'h6b6 ;
 484: qr <= 12'h6a2 ;
 485: qr <= 12'h68e ;
 486: qr <= 12'h679 ;
 487: qr <= 12'h664 ;
 488: qr <= 12'h64e ;
 489: qr <= 12'h638 ;
 490: qr <= 12'h621 ;
 491: qr <= 12'h60a ;
 492: qr <= 12'h5f2 ;
 493: qr <= 12'h5da ;
 494: qr <= 12'h5c1 ;
 495: qr <= 12'h5a8 ;
 496: qr <= 12'h58f ;
 497: qr <= 12'h575 ;
 498: qr <= 12'h55a ;
 499: qr <= 12'h540 ;
 500: qr <= 12'h524 ;
 501: qr <= 12'h509 ;
 502: qr <= 12'h4ed ;
 503: qr <= 12'h4d1 ;
 504: qr <= 12'h4b4 ;
 505: qr <= 12'h497 ;
 506: qr <= 12'h479 ;
 507: qr <= 12'h45b ;
 508: qr <= 12'h43d ;
 509: qr <= 12'h41f ;
 510: qr <= 12'h400 ;
 511: qr <= 12'h3e1 ;


 default qr<=0;
 endcase 
 
endmodule



