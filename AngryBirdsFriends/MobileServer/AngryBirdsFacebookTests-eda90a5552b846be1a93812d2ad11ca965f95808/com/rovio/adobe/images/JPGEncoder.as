package com.rovio.adobe.images
{
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
   public class JPGEncoder
   {
       
      
      private var ZigZag:Array;
      
      private var YTable:Array;
      
      private var UVTable:Array;
      
      private var fdtbl_Y:Array;
      
      private var fdtbl_UV:Array;
      
      private var YDC_HT:Array;
      
      private var UVDC_HT:Array;
      
      private var YAC_HT:Array;
      
      private var UVAC_HT:Array;
      
      private var std_dc_luminance_nrcodes:Array;
      
      private var std_dc_luminance_values:Array;
      
      private var std_ac_luminance_nrcodes:Array;
      
      private var std_ac_luminance_values:Array;
      
      private var std_dc_chrominance_nrcodes:Array;
      
      private var std_dc_chrominance_values:Array;
      
      private var std_ac_chrominance_nrcodes:Array;
      
      private var std_ac_chrominance_values:Array;
      
      private var bitcode:Array;
      
      private var category:Array;
      
      private var byteout:ByteArray;
      
      private var bytenew:int = 0;
      
      private var bytepos:int = 7;
      
      private var DU:Array;
      
      private var YDU:Array;
      
      private var UDU:Array;
      
      private var VDU:Array;
      
      public function JPGEncoder(quality:Number = 50)
      {
         this.ZigZag = [0,1,5,6,14,15,27,28,2,4,7,13,16,26,29,42,3,8,12,17,25,30,41,43,9,11,18,24,31,40,44,53,10,19,23,32,39,45,52,54,20,22,33,38,46,51,55,60,21,34,37,47,50,56,59,61,35,36,48,49,57,58,62,63];
         this.YTable = new Array(64);
         this.UVTable = new Array(64);
         this.fdtbl_Y = new Array(64);
         this.fdtbl_UV = new Array(64);
         this.std_dc_luminance_nrcodes = [0,0,1,5,1,1,1,1,1,1,0,0,0,0,0,0,0];
         this.std_dc_luminance_values = [0,1,2,3,4,5,6,7,8,9,10,11];
         this.std_ac_luminance_nrcodes = [0,0,2,1,3,3,2,4,3,5,5,4,4,0,0,1,125];
         this.std_ac_luminance_values = [1,2,3,0,4,17,5,18,33,49,65,6,19,81,97,7,34,113,20,50,129,145,161,8,35,66,177,193,21,82,209,240,36,51,98,114,130,9,10,22,23,24,25,26,37,38,39,40,41,42,52,53,54,55,56,57,58,67,68,69,70,71,72,73,74,83,84,85,86,87,88,89,90,99,100,101,102,103,104,105,106,115,116,117,118,119,120,121,122,131,132,133,134,135,136,137,138,146,147,148,149,150,151,152,153,154,162,163,164,165,166,167,168,169,170,178,179,180,181,182,183,184,185,186,194,195,196,197,198,199,200,201,202,210,211,212,213,214,215,216,217,218,225,226,227,228,229,230,231,232,233,234,241,242,243,244,245,246,247,248,249,250];
         this.std_dc_chrominance_nrcodes = [0,0,3,1,1,1,1,1,1,1,1,1,0,0,0,0,0];
         this.std_dc_chrominance_values = [0,1,2,3,4,5,6,7,8,9,10,11];
         this.std_ac_chrominance_nrcodes = [0,0,2,1,2,4,4,3,4,7,5,4,4,0,1,2,119];
         this.std_ac_chrominance_values = [0,1,2,3,17,4,5,33,49,6,18,65,81,7,97,113,19,34,50,129,8,20,66,145,161,177,193,9,35,51,82,240,21,98,114,209,10,22,36,52,225,37,241,23,24,25,26,38,39,40,41,42,53,54,55,56,57,58,67,68,69,70,71,72,73,74,83,84,85,86,87,88,89,90,99,100,101,102,103,104,105,106,115,116,117,118,119,120,121,122,130,131,132,133,134,135,136,137,138,146,147,148,149,150,151,152,153,154,162,163,164,165,166,167,168,169,170,178,179,180,181,182,183,184,185,186,194,195,196,197,198,199,200,201,202,210,211,212,213,214,215,216,217,218,226,227,228,229,230,231,232,233,234,242,243,244,245,246,247,248,249,250];
         this.bitcode = new Array(65535);
         this.category = new Array(65535);
         this.DU = new Array(64);
         this.YDU = new Array(64);
         this.UDU = new Array(64);
         this.VDU = new Array(64);
         super();
         if(quality <= 0)
         {
            quality = 1;
         }
         if(quality > 100)
         {
            quality = 100;
         }
         var sf:int = 0;
         if(quality < 50)
         {
            sf = int(5000 / quality);
         }
         else
         {
            sf = int(200 - quality * 2);
         }
         this.initHuffmanTbl();
         this.initCategoryNumber();
         this.initQuantTables(sf);
      }
      
      private function initQuantTables(sf:int) : void
      {
         var i:int = 0;
         var t:Number = NaN;
         var col:int = 0;
         var YQT:Array = [16,11,10,16,24,40,51,61,12,12,14,19,26,58,60,55,14,13,16,24,40,57,69,56,14,17,22,29,51,87,80,62,18,22,37,56,68,109,103,77,24,35,55,64,81,104,113,92,49,64,78,87,103,121,120,101,72,92,95,98,112,100,103,99];
         for(i = 0; i < 64; i++)
         {
            t = Math.floor((YQT[i] * sf + 50) / 100);
            if(t < 1)
            {
               t = 1;
            }
            else if(t > 255)
            {
               t = 255;
            }
            this.YTable[this.ZigZag[i]] = t;
         }
         var UVQT:Array = [17,18,24,47,99,99,99,99,18,21,26,66,99,99,99,99,24,26,56,99,99,99,99,99,47,66,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99];
         for(i = 0; i < 64; i++)
         {
            t = Math.floor((UVQT[i] * sf + 50) / 100);
            if(t < 1)
            {
               t = 1;
            }
            else if(t > 255)
            {
               t = 255;
            }
            this.UVTable[this.ZigZag[i]] = t;
         }
         var aasf:Array = [1,1.387039845,1.306562965,1.175875602,1,0.785694958,0.5411961,0.275899379];
         i = 0;
         for(var row:int = 0; row < 8; row++)
         {
            for(col = 0; col < 8; col++)
            {
               this.fdtbl_Y[i] = 1 / (this.YTable[this.ZigZag[i]] * aasf[row] * aasf[col] * 8);
               this.fdtbl_UV[i] = 1 / (this.UVTable[this.ZigZag[i]] * aasf[row] * aasf[col] * 8);
               i++;
            }
         }
      }
      
      private function computeHuffmanTbl(nrcodes:Array, std_table:Array) : Array
      {
         var j:int = 0;
         var codevalue:int = 0;
         var pos_in_table:int = 0;
         var HT:Array = new Array();
         for(var k:int = 1; k <= 16; k++)
         {
            for(j = 1; j <= nrcodes[k]; j++)
            {
               HT[std_table[pos_in_table]] = new BitString();
               HT[std_table[pos_in_table]].val = codevalue;
               HT[std_table[pos_in_table]].len = k;
               pos_in_table++;
               codevalue++;
            }
            codevalue *= 2;
         }
         return HT;
      }
      
      private function initHuffmanTbl() : void
      {
         this.YDC_HT = this.computeHuffmanTbl(this.std_dc_luminance_nrcodes,this.std_dc_luminance_values);
         this.UVDC_HT = this.computeHuffmanTbl(this.std_dc_chrominance_nrcodes,this.std_dc_chrominance_values);
         this.YAC_HT = this.computeHuffmanTbl(this.std_ac_luminance_nrcodes,this.std_ac_luminance_values);
         this.UVAC_HT = this.computeHuffmanTbl(this.std_ac_chrominance_nrcodes,this.std_ac_chrominance_values);
      }
      
      private function initCategoryNumber() : void
      {
         var nr:int = 0;
         var nrlower:* = 1;
         var nrupper:* = 2;
         for(var cat:int = 1; cat <= 15; cat++)
         {
            for(nr = nrlower; nr < nrupper; nr++)
            {
               this.category[32767 + nr] = cat;
               this.bitcode[32767 + nr] = new BitString();
               this.bitcode[32767 + nr].len = cat;
               this.bitcode[32767 + nr].val = nr;
            }
            for(nr = -(nrupper - 1); nr <= -nrlower; nr++)
            {
               this.category[32767 + nr] = cat;
               this.bitcode[32767 + nr] = new BitString();
               this.bitcode[32767 + nr].len = cat;
               this.bitcode[32767 + nr].val = nrupper - 1 + nr;
            }
            nrlower <<= 1;
            nrupper <<= 1;
         }
      }
      
      private function writeBits(bs:BitString) : void
      {
         var value:int = bs.val;
         var posval:int = bs.len - 1;
         while(posval >= 0)
         {
            if(value & uint(1 << posval))
            {
               this.bytenew |= uint(1 << this.bytepos);
            }
            posval--;
            --this.bytepos;
            if(this.bytepos < 0)
            {
               if(this.bytenew == 255)
               {
                  this.writeByte(255);
                  this.writeByte(0);
               }
               else
               {
                  this.writeByte(this.bytenew);
               }
               this.bytepos = 7;
               this.bytenew = 0;
            }
         }
      }
      
      private function writeByte(value:int) : void
      {
         this.byteout.writeByte(value);
      }
      
      private function writeWord(value:int) : void
      {
         this.writeByte(value >> 8 & 255);
         this.writeByte(value & 255);
      }
      
      private function fDCTQuant(data:Array, fdtbl:Array) : Array
      {
         var tmp0:Number = NaN;
         var tmp1:Number = NaN;
         var tmp2:Number = NaN;
         var tmp3:Number = NaN;
         var tmp4:Number = NaN;
         var tmp5:Number = NaN;
         var tmp6:Number = NaN;
         var tmp7:Number = NaN;
         var tmp10:Number = NaN;
         var tmp11:Number = NaN;
         var tmp12:Number = NaN;
         var tmp13:Number = NaN;
         var z1:Number = NaN;
         var z2:Number = NaN;
         var z3:Number = NaN;
         var z4:Number = NaN;
         var z5:Number = NaN;
         var z11:Number = NaN;
         var z13:Number = NaN;
         var i:int = 0;
         var dataOff:int = 0;
         for(i = 0; i < 8; i++)
         {
            tmp0 = data[dataOff + 0] + data[dataOff + 7];
            tmp7 = data[dataOff + 0] - data[dataOff + 7];
            tmp1 = data[dataOff + 1] + data[dataOff + 6];
            tmp6 = data[dataOff + 1] - data[dataOff + 6];
            tmp2 = data[dataOff + 2] + data[dataOff + 5];
            tmp5 = data[dataOff + 2] - data[dataOff + 5];
            tmp3 = data[dataOff + 3] + data[dataOff + 4];
            tmp4 = data[dataOff + 3] - data[dataOff + 4];
            tmp10 = tmp0 + tmp3;
            tmp13 = tmp0 - tmp3;
            tmp11 = tmp1 + tmp2;
            tmp12 = tmp1 - tmp2;
            data[dataOff + 0] = tmp10 + tmp11;
            data[dataOff + 4] = tmp10 - tmp11;
            z1 = (tmp12 + tmp13) * 0.707106781;
            data[dataOff + 2] = tmp13 + z1;
            data[dataOff + 6] = tmp13 - z1;
            tmp10 = tmp4 + tmp5;
            tmp11 = tmp5 + tmp6;
            tmp12 = tmp6 + tmp7;
            z5 = (tmp10 - tmp12) * 0.382683433;
            z2 = 0.5411961 * tmp10 + z5;
            z4 = 1.306562965 * tmp12 + z5;
            z3 = tmp11 * 0.707106781;
            z11 = tmp7 + z3;
            z13 = tmp7 - z3;
            data[dataOff + 5] = z13 + z2;
            data[dataOff + 3] = z13 - z2;
            data[dataOff + 1] = z11 + z4;
            data[dataOff + 7] = z11 - z4;
            dataOff += 8;
         }
         dataOff = 0;
         for(i = 0; i < 8; i++)
         {
            tmp0 = data[dataOff + 0] + data[dataOff + 56];
            tmp7 = data[dataOff + 0] - data[dataOff + 56];
            tmp1 = data[dataOff + 8] + data[dataOff + 48];
            tmp6 = data[dataOff + 8] - data[dataOff + 48];
            tmp2 = data[dataOff + 16] + data[dataOff + 40];
            tmp5 = data[dataOff + 16] - data[dataOff + 40];
            tmp3 = data[dataOff + 24] + data[dataOff + 32];
            tmp4 = data[dataOff + 24] - data[dataOff + 32];
            tmp10 = tmp0 + tmp3;
            tmp13 = tmp0 - tmp3;
            tmp11 = tmp1 + tmp2;
            tmp12 = tmp1 - tmp2;
            data[dataOff + 0] = tmp10 + tmp11;
            data[dataOff + 32] = tmp10 - tmp11;
            z1 = (tmp12 + tmp13) * 0.707106781;
            data[dataOff + 16] = tmp13 + z1;
            data[dataOff + 48] = tmp13 - z1;
            tmp10 = tmp4 + tmp5;
            tmp11 = tmp5 + tmp6;
            tmp12 = tmp6 + tmp7;
            z5 = (tmp10 - tmp12) * 0.382683433;
            z2 = 0.5411961 * tmp10 + z5;
            z4 = 1.306562965 * tmp12 + z5;
            z3 = tmp11 * 0.707106781;
            z11 = tmp7 + z3;
            z13 = tmp7 - z3;
            data[dataOff + 40] = z13 + z2;
            data[dataOff + 24] = z13 - z2;
            data[dataOff + 8] = z11 + z4;
            data[dataOff + 56] = z11 - z4;
            dataOff++;
         }
         for(i = 0; i < 64; i++)
         {
            data[i] = Math.round(data[i] * fdtbl[i]);
         }
         return data;
      }
      
      private function writeAPP0() : void
      {
         this.writeWord(65504);
         this.writeWord(16);
         this.writeByte(74);
         this.writeByte(70);
         this.writeByte(73);
         this.writeByte(70);
         this.writeByte(0);
         this.writeByte(1);
         this.writeByte(1);
         this.writeByte(0);
         this.writeWord(1);
         this.writeWord(1);
         this.writeByte(0);
         this.writeByte(0);
      }
      
      private function writeSOF0(width:int, height:int) : void
      {
         this.writeWord(65472);
         this.writeWord(17);
         this.writeByte(8);
         this.writeWord(height);
         this.writeWord(width);
         this.writeByte(3);
         this.writeByte(1);
         this.writeByte(17);
         this.writeByte(0);
         this.writeByte(2);
         this.writeByte(17);
         this.writeByte(1);
         this.writeByte(3);
         this.writeByte(17);
         this.writeByte(1);
      }
      
      private function writeDQT() : void
      {
         var i:int = 0;
         this.writeWord(65499);
         this.writeWord(132);
         this.writeByte(0);
         for(i = 0; i < 64; i++)
         {
            this.writeByte(this.YTable[i]);
         }
         this.writeByte(1);
         for(i = 0; i < 64; i++)
         {
            this.writeByte(this.UVTable[i]);
         }
      }
      
      private function writeDHT() : void
      {
         var i:int = 0;
         this.writeWord(65476);
         this.writeWord(418);
         this.writeByte(0);
         for(i = 0; i < 16; i++)
         {
            this.writeByte(this.std_dc_luminance_nrcodes[i + 1]);
         }
         for(i = 0; i <= 11; i++)
         {
            this.writeByte(this.std_dc_luminance_values[i]);
         }
         this.writeByte(16);
         for(i = 0; i < 16; i++)
         {
            this.writeByte(this.std_ac_luminance_nrcodes[i + 1]);
         }
         for(i = 0; i <= 161; i++)
         {
            this.writeByte(this.std_ac_luminance_values[i]);
         }
         this.writeByte(1);
         for(i = 0; i < 16; i++)
         {
            this.writeByte(this.std_dc_chrominance_nrcodes[i + 1]);
         }
         for(i = 0; i <= 11; i++)
         {
            this.writeByte(this.std_dc_chrominance_values[i]);
         }
         this.writeByte(17);
         for(i = 0; i < 16; i++)
         {
            this.writeByte(this.std_ac_chrominance_nrcodes[i + 1]);
         }
         for(i = 0; i <= 161; i++)
         {
            this.writeByte(this.std_ac_chrominance_values[i]);
         }
      }
      
      private function writeSOS() : void
      {
         this.writeWord(65498);
         this.writeWord(12);
         this.writeByte(3);
         this.writeByte(1);
         this.writeByte(0);
         this.writeByte(2);
         this.writeByte(17);
         this.writeByte(3);
         this.writeByte(17);
         this.writeByte(0);
         this.writeByte(63);
         this.writeByte(0);
      }
      
      private function processDU(CDU:Array, fdtbl:Array, DC:Number, HTDC:Array, HTAC:Array) : Number
      {
         var i:int = 0;
         var startpos:int = 0;
         var nrzeroes:int = 0;
         var nrmarker:int = 0;
         var EOB:BitString = HTAC[0];
         var M16zeroes:BitString = HTAC[240];
         var DU_DCT:Array = this.fDCTQuant(CDU,fdtbl);
         for(i = 0; i < 64; i++)
         {
            this.DU[this.ZigZag[i]] = DU_DCT[i];
         }
         var Diff:int = this.DU[0] - DC;
         DC = this.DU[0];
         if(Diff == 0)
         {
            this.writeBits(HTDC[0]);
         }
         else
         {
            this.writeBits(HTDC[this.category[32767 + Diff]]);
            this.writeBits(this.bitcode[32767 + Diff]);
         }
         var end0pos:int = 63;
         while(end0pos > 0 && this.DU[end0pos] == 0)
         {
            end0pos--;
         }
         if(end0pos == 0)
         {
            this.writeBits(EOB);
            return DC;
         }
         i = 1;
         while(i <= end0pos)
         {
            startpos = i;
            while(this.DU[i] == 0 && i <= end0pos)
            {
               i++;
            }
            nrzeroes = i - startpos;
            if(nrzeroes >= 16)
            {
               for(nrmarker = 1; nrmarker <= nrzeroes / 16; nrmarker++)
               {
                  this.writeBits(M16zeroes);
               }
               nrzeroes = int(nrzeroes & 15);
            }
            this.writeBits(HTAC[nrzeroes * 16 + this.category[32767 + this.DU[i]]]);
            this.writeBits(this.bitcode[32767 + this.DU[i]]);
            i++;
         }
         if(end0pos != 63)
         {
            this.writeBits(EOB);
         }
         return DC;
      }
      
      private function RGB2YUV(img:BitmapData, xpos:int, ypos:int) : void
      {
         var x:int = 0;
         var P:uint = 0;
         var R:Number = NaN;
         var G:Number = NaN;
         var B:Number = NaN;
         var pos:int = 0;
         for(var y:int = 0; y < 8; y++)
         {
            for(x = 0; x < 8; x++)
            {
               P = img.getPixel32(xpos + x,ypos + y);
               R = Number(P >> 16 & 255);
               G = Number(P >> 8 & 255);
               B = Number(P & 255);
               this.YDU[pos] = 0.299 * R + 0.587 * G + 0.114 * B - 128;
               this.UDU[pos] = -0.16874 * R + -0.33126 * G + 0.5 * B;
               this.VDU[pos] = 0.5 * R + -0.41869 * G + -0.08131 * B;
               pos++;
            }
         }
      }
      
      public function encode(image:BitmapData) : ByteArray
      {
         var xpos:int = 0;
         var fillbits:BitString = null;
         this.byteout = new ByteArray();
         this.bytenew = 0;
         this.bytepos = 7;
         this.writeWord(65496);
         this.writeAPP0();
         this.writeDQT();
         this.writeSOF0(image.width,image.height);
         this.writeDHT();
         this.writeSOS();
         var DCY:Number = 0;
         var DCU:Number = 0;
         var DCV:Number = 0;
         this.bytenew = 0;
         this.bytepos = 7;
         for(var ypos:int = 0; ypos < image.height; ypos += 8)
         {
            for(xpos = 0; xpos < image.width; xpos += 8)
            {
               this.RGB2YUV(image,xpos,ypos);
               DCY = this.processDU(this.YDU,this.fdtbl_Y,DCY,this.YDC_HT,this.YAC_HT);
               DCU = this.processDU(this.UDU,this.fdtbl_UV,DCU,this.UVDC_HT,this.UVAC_HT);
               DCV = this.processDU(this.VDU,this.fdtbl_UV,DCV,this.UVDC_HT,this.UVAC_HT);
            }
         }
         if(this.bytepos >= 0)
         {
            fillbits = new BitString();
            fillbits.len = this.bytepos + 1;
            fillbits.val = (1 << this.bytepos + 1) - 1;
            this.writeBits(fillbits);
         }
         this.writeWord(65497);
         return this.byteout;
      }
   }
}
