package §^!+§
{
   import § !'§.§4!+§;
   import § !'§.§[!$§;
   import §<&§.§^b§;
   import §`s§.§0p§;
   import §`s§.getNextPowerOfTwo;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import flash.utils.getQualifiedClassName;
   
   public class Texture
   {
       
      
      private var §&!;§:Rectangle;
      
      private var §%1§:Boolean;
      
      public function Texture()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
         while(true)
         {
            if(getQualifiedClassName(this) == "starling.textures::Texture")
            {
               if(_loc2_ || _loc1_)
               {
                  break;
               }
               while(true)
               {
               }
               addr74:
            }
            while(true)
            {
               this.§%1§ = false;
               if(!_loc1_)
               {
                  break;
               }
               §§goto(addr74);
            }
            if(!_loc1_)
            {
               return;
            }
         }
         throw new §[!$§();
      }
      
      public static function §@#§(param1:Context3D, param2:Bitmap, param3:Boolean = true, param4:Boolean = false) : §^!+§.Texture
      {
         return §>x§(param1,param2.bitmapData,param3,param4);
      }
      
      public static function §>x§(param1:Context3D, param2:BitmapData, param3:Boolean = true, param4:Boolean = false) : §^!+§.Texture
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc9_:BitmapData = null;
         var _loc10_:§+!I§ = null;
         var _loc11_:flash.display3D.textures.Texture = null;
         var _loc5_:int = param2.width;
         var _loc6_:int = param2.height;
         §§push(_loc5_);
         if(!(_loc13_ && param3))
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(_loc6_);
         if(!(_loc13_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc8_:* = §§pop();
         if(!_loc13_)
         {
            if(param1 != null)
            {
               if(!_loc13_)
               {
                  §§push(int(getNextPowerOfTwo(param2.width)));
                  if(!(_loc13_ && param1))
                  {
                     _loc7_ = §§pop();
                     §§goto(addr81);
                  }
                  _loc8_ = §§pop();
                  addr81:
                  if(!_loc13_)
                  {
                     addr75:
                     §§push(int(getNextPowerOfTwo(param2.height)));
                  }
                  _loc11_ = param1.createTexture(_loc7_,_loc8_,Context3DTextureFormat.BGRA,param4);
                  if(_loc12_ || §^!+§.Texture)
                  {
                     §§push(_loc7_);
                     if(_loc12_)
                     {
                        §§push(_loc5_);
                        if(_loc12_)
                        {
                           §§push(§§pop() > §§pop());
                           if(!_loc13_)
                           {
                              if(!§§pop())
                              {
                                 if(!(_loc13_ && param3))
                                 {
                                    §§pop();
                                    if(_loc12_)
                                    {
                                       §§goto(addr121);
                                    }
                                    §§goto(addr134);
                                 }
                              }
                           }
                           addr121:
                           §§goto(addr120);
                        }
                        addr120:
                        §§goto(addr119);
                     }
                     addr119:
                     §§goto(addr118);
                  }
                  addr118:
                  if(_loc8_ > _loc6_)
                  {
                     if(_loc12_)
                     {
                        addr134:
                        (_loc9_ = new BitmapData(_loc7_,_loc8_,true,0)).copyPixels(param2,param2.rect,new Point(0,0));
                        param2 = _loc9_;
                     }
                     §§goto(addr159);
                  }
                  uploadBitmapData(_loc11_,param2,param3);
                  §§goto(addr159);
               }
               §§goto(addr75);
            }
            addr159:
            _loc10_ = new §+!I§(_loc11_,_loc7_,_loc8_,param3,true,param4);
            if(!_loc13_)
            {
               §§push(§^b§.§16§);
               while(true)
               {
                  if(!§§pop())
                  {
                     if(_loc9_)
                     {
                        while(true)
                        {
                           _loc9_.dispose();
                           §§goto(addr272);
                        }
                     }
                     §§goto(addr257);
                  }
                  §§goto(addr276);
               }
            }
            addr272:
            while(true)
            {
            }
            addr237:
            if(!_loc13_)
            {
               if(_loc13_ && param3)
               {
                  loop10:
                  while(true)
                  {
                     addr257:
                     while(true)
                     {
                        §§push(_loc5_);
                        loop3:
                        while(true)
                        {
                           §§push(_loc7_);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop() == §§pop());
                              loop5:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc13_)
                                          {
                                             if(!_loc12_)
                                             {
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(_loc6_);
                                                   if(!_loc12_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(_loc8_);
                                                   if(_loc13_ && §^!+§.Texture)
                                                   {
                                                      continue loop4;
                                                   }
                                                   §§push(§§pop() == §§pop());
                                                   if(!(_loc13_ && param2))
                                                   {
                                                      if(!_loc13_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      continue loop5;
                                                   }
                                                   addr263:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      continue loop7;
                                                   }
                                                }
                                                continue loop3;
                                             }
                                             if(_loc13_ && param3)
                                             {
                                                break;
                                             }
                                             if(_loc12_ || param2)
                                             {
                                                return _loc10_;
                                             }
                                             addr276:
                                             while(true)
                                             {
                                                _loc10_.§;x§(param2);
                                                continue loop10;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr237);
                                          }
                                       }
                                       §§goto(addr172);
                                    }
                                    §§goto(addr272);
                                    addr215:
                                 }
                                 §§goto(addr263);
                              }
                           }
                        }
                     }
                  }
               }
               addr172:
            }
            continue loop1;
            return new §&<§(_loc10_,new Rectangle(0,0,_loc5_,_loc6_),true);
         }
         §§goto(addr81);
      }
      
      public static function §'!I§(param1:Context3D, param2:ByteArray) : §^!+§.Texture
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(!_loc10_)
         {
            if(param1 == null)
            {
               if(!_loc10_)
               {
                  throw new §4!+§();
               }
            }
         }
         var _loc3_:String = String.fromCharCode(param2[0],param2[1],param2[2]);
         if(!(_loc10_ && param2))
         {
            §§push(_loc3_);
            if(_loc11_ || param1)
            {
               if(§§pop() == "ATF")
               {
                  if(param2[6] == 2)
                  {
                     addr91:
                     §§goto(addr108);
                  }
                  else
                  {
                     §§push(Context3DTextureFormat.BGRA);
                     if(!(_loc10_ && param1))
                     {
                        §§goto(addr107);
                     }
                  }
                  addr108:
                  §§push(Context3DTextureFormat.COMPRESSED);
                  if(!_loc10_)
                  {
                     addr107:
                     §§push(§§pop());
                  }
                  var _loc4_:* = §§pop();
                  var _loc5_:int = Math.pow(2,param2[7]);
                  var _loc6_:int = Math.pow(2,param2[8]);
                  var _loc7_:int = param2[9];
                  var _loc8_:flash.display3D.textures.Texture = param1.createTexture(_loc5_,_loc6_,_loc4_,false);
                  if(_loc11_ || param1)
                  {
                     uploadAtfData(_loc8_,param2);
                  }
                  var _loc9_:§+!I§ = new §+!I§(_loc8_,_loc5_,_loc6_,_loc7_ > 1,false);
                  if(_loc11_)
                  {
                     if(§^b§.§16§)
                     {
                        if(!(_loc10_ && §^!+§.Texture))
                        {
                           _loc9_.§;x§(param2);
                        }
                     }
                  }
                  return _loc9_;
               }
               if(_loc11_ || param1)
               {
                  throw new ArgumentError("Invalid ATF data");
               }
               §§goto(addr91);
               §§goto(addr91);
            }
            §§goto(addr107);
         }
         §§goto(addr91);
      }
      
      public static function §?!a§(param1:§^!+§.Texture, param2:Rectangle = null, param3:Rectangle = null) : §^!+§.Texture
      {
         var _loc4_:§^!+§.Texture;
         (_loc4_ = new §&<§(param1,param2)).§&!;§ = param3;
         return _loc4_;
      }
      
      public static function §<!,§(param1:Context3D, param2:int = 64, param3:int = 64, param4:uint = 4.294967295E9, param5:Boolean = false) : §^!+§.Texture
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:BitmapData = new BitmapData(param2,param3,true,param4);
         var _loc7_:§^!+§.Texture = §>x§(param1,_loc6_,false,param5);
         if(!(_loc8_ && §^!+§.Texture))
         {
            if(!§^b§.§16§)
            {
               if(!(_loc8_ && param3))
               {
                  _loc6_.dispose();
               }
            }
         }
         return _loc7_;
      }
      
      static function uploadBitmapData(param1:flash.display3D.textures.Texture, param2:BitmapData, param3:Boolean) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:int = 0;
         var _loc7_:BitmapData = null;
         var _loc8_:Matrix = null;
         var _loc9_:Rectangle = null;
         if(!(_loc11_ && param3))
         {
            param1.uploadFromBitmapData(param2);
            loop0:
            while(param3)
            {
               loop1:
               while(true)
               {
                  §§push(param2.width >> 1);
                  loop2:
                  while(true)
                  {
                     _loc4_ = §§pop();
                     loop3:
                     while(true)
                     {
                        addr60:
                        while(true)
                        {
                           §§push(param2.height >> 1);
                           while(_loc10_ || param1)
                           {
                              _loc5_ = §§pop();
                              while(true)
                              {
                                 if(_loc10_)
                                 {
                                    if(!_loc11_)
                                    {
                                       §§push(1);
                                       if(_loc11_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 continue loop3;
                              }
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr58);
      }
      
      static function uploadAtfData(param1:flash.display3D.textures.Texture, param2:ByteArray, param3:int = 0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            param1.uploadCompressedTextureFromByteArray(param2,param3);
         }
      }
      
      public function dispose() : void
      {
      }
      
      public function adjustVertexData(param1:§0p§, param2:int, param3:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         if(!_loc6_)
         {
            if(this.§&!;§)
            {
               loop0:
               while(param3 == 4)
               {
                  while(true)
                  {
                     §§push(this.§&!;§.width + this.§&!;§.x - this.width);
                     if(_loc7_ || param3)
                     {
                        §§push(Number(§§pop()));
                     }
                     loop2:
                     while(true)
                     {
                        _loc4_ = §§pop();
                        addr183:
                        while(!_loc6_)
                        {
                           continue loop2;
                        }
                        continue loop0;
                     }
                  }
               }
               throw new ArgumentError("Textures with a frame can only be used on quads");
               addr189:
            }
            §§goto(addr24);
         }
         §§goto(addr189);
      }
      
      public function get frame() : Rectangle
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            return !!this.§&!;§ ? this.§&!;§.clone() : new Rectangle(0,0,this.width,this.height);
         }
         §§goto(addr36);
      }
      
      public function get clipping() : Rectangle
      {
         return new Rectangle(0,0,this.width,this.height);
      }
      
      public function get repeat() : Boolean
      {
         return this.§%1§;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§%1§ = param1;
         }
      }
      
      public function get width() : Number
      {
         return 0;
      }
      
      public function get height() : Number
      {
         return 0;
      }
      
      public function getBase(param1:Context3D) : TextureBase
      {
         return null;
      }
      
      public function get root() : §^!+§.Texture
      {
         return null;
      }
      
      public function get mipMapping() : Boolean
      {
         return false;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return false;
      }
      
      public function get parent() : §^!+§.Texture
      {
         return this;
      }
      
      public function get bitmapData() : BitmapData
      {
         return null;
      }
      
      public function get clippedBitmapData() : BitmapData
      {
         return null;
      }
      
      public function requestBaseTextureUpdate(param1:Object) : void
      {
      }
   }
}
