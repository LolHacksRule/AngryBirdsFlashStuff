package com.rovio.adobe.crypto
{
   import com.rovio.adobe.utils.IntUtil;
   import flash.utils.ByteArray;
   import mx.utils.Base64Encoder;
   
   public class SHA256
   {
      
      public static var digest:ByteArray;
       
      
      public function SHA256()
      {
         super();
      }
      
      public static function hash(s:String) : String
      {
         var blocks:Array = createBlocksFromString(s);
         var byteArray:ByteArray = hashBlocks(blocks);
         return IntUtil.toHex(byteArray.readInt(),true) + IntUtil.toHex(byteArray.readInt(),true) + IntUtil.toHex(byteArray.readInt(),true) + IntUtil.toHex(byteArray.readInt(),true) + IntUtil.toHex(byteArray.readInt(),true) + IntUtil.toHex(byteArray.readInt(),true) + IntUtil.toHex(byteArray.readInt(),true) + IntUtil.toHex(byteArray.readInt(),true);
      }
      
      public static function hashBytes(data:ByteArray) : String
      {
         var blocks:Array = createBlocksFromByteArray(data);
         var byteArray:ByteArray = hashBlocks(blocks);
         return IntUtil.toHex(byteArray.readInt(),true) + IntUtil.toHex(byteArray.readInt(),true) + IntUtil.toHex(byteArray.readInt(),true) + IntUtil.toHex(byteArray.readInt(),true) + IntUtil.toHex(byteArray.readInt(),true) + IntUtil.toHex(byteArray.readInt(),true) + IntUtil.toHex(byteArray.readInt(),true) + IntUtil.toHex(byteArray.readInt(),true);
      }
      
      public static function hashToBase64(s:String) : String
      {
         var byte:uint = 0;
         var blocks:Array = createBlocksFromString(s);
         var byteArray:ByteArray = hashBlocks(blocks);
         var charsInByteArray:String = "";
         byteArray.position = 0;
         for(var j:int = 0; j < byteArray.length; j++)
         {
            byte = byteArray.readUnsignedByte();
            charsInByteArray += String.fromCharCode(byte);
         }
         var encoder:Base64Encoder = new Base64Encoder();
         encoder.encode(charsInByteArray);
         return encoder.flush();
      }
      
      private static function hashBlocks(blocks:Array) : ByteArray
      {
         var a:int = 0;
         var b:int = 0;
         var c:int = 0;
         var d:int = 0;
         var e:int = 0;
         var f:int = 0;
         var g:int = 0;
         var h:int = 0;
         var t:int = 0;
         var s0:* = 0;
         var maj:* = 0;
         var t2:int = 0;
         var s1:* = 0;
         var ch:* = 0;
         var t1:int = 0;
         var ws0:* = 0;
         var ws1:* = 0;
         var h0:int = 1779033703;
         var h1:int = 3144134277;
         var h2:int = 1013904242;
         var h3:int = 2773480762;
         var h4:int = 1359893119;
         var h5:int = 2600822924;
         var h6:int = 528734635;
         var h7:int = 1541459225;
         var k:Array = new Array(1116352408,1899447441,3049323471,3921009573,961987163,1508970993,2453635748,2870763221,3624381080,310598401,607225278,1426881987,1925078388,2162078206,2614888103,3248222580,3835390401,4022224774,264347078,604807628,770255983,1249150122,1555081692,1996064986,2554220882,2821834349,2952996808,3210313671,3336571891,3584528711,113926993,338241895,666307205,773529912,1294757372,1396182291,1695183700,1986661051,2177026350,2456956037,2730485921,2820302411,3259730800,3345764771,3516065817,3600352804,4094571909,275423344,430227734,506948616,659060556,883997877,958139571,1322822218,1537002063,1747873779,1955562222,2024104815,2227730452,2361852424,2428436474,2756734187,3204031479,3329325298);
         var len:int = blocks.length;
         var w:Array = new Array(64);
         for(var i:int = 0; i < len; i += 16)
         {
            a = h0;
            b = h1;
            c = h2;
            d = h3;
            e = h4;
            f = h5;
            g = h6;
            h = h7;
            for(t = 0; t < 64; t++)
            {
               if(t < 16)
               {
                  w[t] = blocks[i + t];
                  if(isNaN(w[t]))
                  {
                     w[t] = 0;
                  }
               }
               else
               {
                  ws0 = IntUtil.ror(w[t - 15],7) ^ IntUtil.ror(w[t - 15],18) ^ w[t - 15] >>> 3;
                  ws1 = IntUtil.ror(w[t - 2],17) ^ IntUtil.ror(w[t - 2],19) ^ w[t - 2] >>> 10;
                  w[t] = w[t - 16] + ws0 + w[t - 7] + ws1;
               }
               s0 = IntUtil.ror(a,2) ^ IntUtil.ror(a,13) ^ IntUtil.ror(a,22);
               maj = a & b ^ a & c ^ b & c;
               t2 = s0 + maj;
               s1 = IntUtil.ror(e,6) ^ IntUtil.ror(e,11) ^ IntUtil.ror(e,25);
               ch = e & f ^ ~e & g;
               t1 = h + s1 + ch + k[t] + w[t];
               h = g;
               g = f;
               f = e;
               e = d + t1;
               d = c;
               c = b;
               b = a;
               a = t1 + t2;
            }
            h0 += a;
            h1 += b;
            h2 += c;
            h3 += d;
            h4 += e;
            h5 += f;
            h6 += g;
            h7 += h;
         }
         var byteArray:ByteArray = new ByteArray();
         byteArray.writeInt(h0);
         byteArray.writeInt(h1);
         byteArray.writeInt(h2);
         byteArray.writeInt(h3);
         byteArray.writeInt(h4);
         byteArray.writeInt(h5);
         byteArray.writeInt(h6);
         byteArray.writeInt(h7);
         byteArray.position = 0;
         digest = new ByteArray();
         digest.writeBytes(byteArray);
         digest.position = 0;
         return byteArray;
      }
      
      private static function createBlocksFromByteArray(data:ByteArray) : Array
      {
         var oldPosition:int = data.position;
         data.position = 0;
         var blocks:Array = new Array();
         var len:int = data.length * 8;
         for(var i:int = 0; i < len; i += 8)
         {
            blocks[i >> 5] |= (data.readByte() & 255) << 24 - i % 32;
         }
         blocks[len >> 5] |= 128 << 24 - len % 32;
         blocks[(len + 64 >> 9 << 4) + 15] = len;
         data.position = oldPosition;
         return blocks;
      }
      
      private static function createBlocksFromString(s:String) : Array
      {
         var blocks:Array = new Array();
         var len:int = s.length * 8;
         for(var i:int = 0; i < len; i += 8)
         {
            blocks[i >> 5] |= (s.charCodeAt(i / 8) & 255) << 24 - i % 32;
         }
         blocks[len >> 5] |= 128 << 24 - len % 32;
         blocks[(len + 64 >> 9 << 4) + 15] = len;
         return blocks;
      }
   }
}
