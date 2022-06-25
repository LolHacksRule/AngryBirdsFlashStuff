package §!!9§
{
   import §2N§.§,!J§;
   import §2N§.getNextPowerOfTwo;
   import §@4§.§,!]§;
   import §`5§.§?g§;
   import §`5§.§@2§;
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
       
      
      private var §[! §:Rectangle;
      
      private var §77§:Boolean;
      
      public function Texture()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            loop0:
            while(true)
            {
               if(getQualifiedClassName(this) == "starling.textures::Texture")
               {
                  if(_loc1_)
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     addr33:
                     while(true)
                     {
                        this.§77§ = false;
                        if(!(_loc2_ && this))
                        {
                           break;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
               §§goto(addr33);
            }
         }
         throw new §?g§();
      }
      
      public static function §>O§(param1:Context3D, param2:Bitmap, param3:Boolean = true, param4:Boolean = false) : §!!9§.Texture
      {
         return §5!M§(param1,param2.bitmapData,param3,param4);
      }
      
      public static function §5!M§(param1:Context3D, param2:BitmapData, param3:Boolean = true, param4:Boolean = false) : §!!9§.Texture
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc9_:BitmapData = null;
         var _loc10_:§!!c§ = null;
         var _loc11_:flash.display3D.textures.Texture = null;
         var _loc5_:int = param2.width;
         var _loc6_:int = param2.height;
         §§push(_loc5_);
         if(_loc12_)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(_loc6_);
         if(_loc12_)
         {
            §§push(int(§§pop()));
         }
         var _loc8_:* = §§pop();
         if(!_loc13_)
         {
            if(param1 != null)
            {
               if(!(_loc13_ && param3))
               {
                  §§push(int(getNextPowerOfTwo(param2.width)));
                  if(!(_loc13_ && param2))
                  {
                     _loc7_ = §§pop();
                     addr76:
                     if(_loc12_)
                     {
                        addr70:
                        §§push(int(getNextPowerOfTwo(param2.height)));
                     }
                     _loc11_ = param1.createTexture(_loc7_,_loc8_,Context3DTextureFormat.BGRA,param4);
                     if(_loc12_)
                     {
                        §§push(_loc7_);
                        if(_loc12_ || param2)
                        {
                           §§push(_loc5_);
                           if(_loc12_ || param1)
                           {
                              §§push(§§pop() > §§pop());
                              if(!_loc13_)
                              {
                                 if(!§§pop())
                                 {
                                    if(!_loc13_)
                                    {
                                       §§pop();
                                       if(!(_loc13_ && param3))
                                       {
                                          addr131:
                                          addr130:
                                          addr119:
                                          addr118:
                                          if(_loc8_ > _loc6_)
                                          {
                                             if(!(_loc13_ && param1))
                                             {
                                                addr139:
                                                (_loc9_ = new BitmapData(_loc7_,_loc8_,true,0)).copyPixels(param2,param2.rect,new Point(0,0));
                                                param2 = _loc9_;
                                             }
                                             addr164:
                                             _loc10_ = new §!!c§(_loc11_,_loc7_,_loc8_,param3,true,param4);
                                             if(_loc12_)
                                             {
                                                §§push(§,!]§.§=!1§);
                                                loop0:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         loop1:
                                                         while(true)
                                                         {
                                                            if(!_loc13_)
                                                            {
                                                               _loc9_.dispose();
                                                               while(true)
                                                               {
                                                                  addr244:
                                                                  loop4:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     loop5:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc7_);
                                                                        addr247:
                                                                        loop6:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() == §§pop());
                                                                           if(_loc12_)
                                                                           {
                                                                              if(_loc13_)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              if(!§§pop())
                                                                              {
                                                                                 while(§§pop())
                                                                                 {
                                                                                    if(!(_loc12_ || param2))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(!(_loc13_ && param1))
                                                                                    {
                                                                                       break loop6;
                                                                                    }
                                                                                    addr274:
                                                                                    addr255:
                                                                                    addr255:
                                                                                    while(_loc12_)
                                                                                    {
                                                                                       continue loop5;
                                                                                       §§goto(addr254);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                 }
                                                                                 return new §<!p§(_loc10_,new Rectangle(0,0,_loc5_,_loc6_),true);
                                                                                 addr206:
                                                                              }
                                                                              addr254:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                              }
                                                                              addr254:
                                                                              §§goto(addr255);
                                                                           }
                                                                           §§goto(addr254);
                                                                        }
                                                                        if(_loc12_)
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  _loc10_.§`!r§(param2);
                                                               }
                                                               addr271:
                                                            }
                                                            §§goto(addr274);
                                                         }
                                                      }
                                                      §§goto(addr244);
                                                   }
                                                   §§goto(addr271);
                                                }
                                             }
                                             §§goto(addr257);
                                          }
                                          uploadBitmapData(_loc11_,param2,param3);
                                          §§goto(addr164);
                                       }
                                       §§goto(addr139);
                                    }
                                 }
                              }
                              §§goto(addr131);
                           }
                           §§goto(addr130);
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr118);
                  }
                  _loc8_ = §§pop();
                  §§goto(addr76);
               }
               §§goto(addr70);
            }
            §§goto(addr164);
         }
         §§goto(addr76);
      }
      
      public static function §5!d§(param1:Context3D, param2:ByteArray) : §!!9§.Texture
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(!_loc11_)
         {
            if(param1 == null)
            {
               if(!_loc11_)
               {
                  throw new §@2§();
               }
            }
         }
         var _loc3_:String = String.fromCharCode(param2[0],param2[1],param2[2]);
         if(_loc10_ || §!!9§.Texture)
         {
            §§push(_loc3_);
            if(_loc10_)
            {
               if(§§pop() != "ATF")
               {
                  if(_loc10_ || param2)
                  {
                     throw new ArgumentError("Invalid ATF data");
                  }
               }
               else
               {
                  addr64:
                  if(param2[6] != 2)
                  {
                     §§push(Context3DTextureFormat.BGRA);
                     if(!_loc11_)
                     {
                        addr97:
                        var _loc4_:String = §§pop();
                        var _loc5_:int = Math.pow(2,param2[7]);
                        var _loc6_:int = Math.pow(2,param2[8]);
                        var _loc7_:int = param2[9];
                        var _loc8_:flash.display3D.textures.Texture = param1.createTexture(_loc5_,_loc6_,_loc4_,false);
                        addr96:
                        if(!(_loc11_ && param1))
                        {
                           uploadAtfData(_loc8_,param2);
                        }
                        var _loc9_:§!!c§ = new §!!c§(_loc8_,_loc5_,_loc6_,_loc7_ > 1,false);
                        if(_loc10_)
                        {
                           if(§,!]§.§=!1§)
                           {
                              if(_loc10_ || _loc3_)
                              {
                                 addr171:
                                 _loc9_.§`!r§(param2);
                              }
                           }
                           return _loc9_;
                        }
                        §§goto(addr171);
                     }
                  }
                  §§goto(addr97);
               }
               §§push(Context3DTextureFormat.COMPRESSED);
               if(!(_loc11_ && _loc3_))
               {
                  §§goto(addr96);
               }
            }
            §§goto(addr97);
         }
         §§goto(addr64);
      }
      
      public static function § q§(param1:§!!9§.Texture, param2:Rectangle = null, param3:Rectangle = null) : §!!9§.Texture
      {
         var _loc4_:§!!9§.Texture;
         (_loc4_ = new §<!p§(param1,param2)).§[! § = param3;
         return _loc4_;
      }
      
      public static function § F§(param1:Context3D, param2:int = 64, param3:int = 64, param4:uint = 4.294967295E9, param5:Boolean = false) : §!!9§.Texture
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:BitmapData = new BitmapData(param2,param3,true,param4);
         var _loc7_:§!!9§.Texture = §5!M§(param1,_loc6_,false,param5);
         if(_loc9_)
         {
            if(!§,!]§.§=!1§)
            {
               if(_loc9_)
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
         var _loc6_:* = 0;
         var _loc7_:BitmapData = null;
         var _loc8_:Matrix = null;
         var _loc9_:Rectangle = null;
         if(!_loc11_)
         {
            param1.uploadFromBitmapData(param2);
            loop0:
            while(param3)
            {
               loop3:
               while(true)
               {
                  if(!(_loc10_ || §!!9§.Texture))
                  {
                     continue loop0;
                  }
                  loop4:
                  while(true)
                  {
                     §§push(param2.height >> 1);
                     loop5:
                     while(true)
                     {
                        _loc5_ = §§pop();
                        loop6:
                        while(_loc10_ || param2)
                        {
                           §§push(1);
                           if(_loc11_ && param3)
                           {
                              continue loop5;
                           }
                           if(!(_loc11_ && param1))
                           {
                              _loc6_ = §§pop();
                              if(!_loc11_)
                              {
                                 continue loop4;
                              }
                              continue;
                           }
                           addr83:
                           while(true)
                           {
                              _loc4_ = §§pop();
                              break loop6;
                           }
                        }
                        continue loop3;
                     }
                  }
                  while(true)
                  {
                     §§goto(addr83);
                     §§goto(addr53);
                  }
               }
            }
            return;
         }
         §§goto(addr79);
      }
      
      static function uploadAtfData(param1:flash.display3D.textures.Texture, param2:ByteArray, param3:int = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            param1.uploadCompressedTextureFromByteArray(param2,param3);
         }
      }
      
      public function dispose() : void
      {
      }
      
      public function adjustVertexData(param1:§,!J§, param2:int, param3:int) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(!_loc7_)
         {
            if(this.§[! §)
            {
               loop0:
               while(true)
               {
                  if(param3 == 4)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(this.§[! §.width + this.§[! §.x - this.width);
                        loop2:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           while(true)
                           {
                              _loc4_ = §§pop();
                              loop4:
                              while(true)
                              {
                                 §§push(this.§[! §.height + this.§[! §.y - this.height);
                                 if(_loc6_ || this)
                                 {
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    if(_loc7_ && param2)
                                    {
                                       continue loop2;
                                    }
                                    §§push(Number(§§pop()));
                                 }
                                 _loc5_ = §§pop();
                                 loop5:
                                 while(true)
                                 {
                                    param1.§6J§(param2,-this.§[! §.x,-this.§[! §.y);
                                    loop6:
                                    while(!_loc7_)
                                    {
                                       §§push(param1);
                                       §§push(param2 + 1);
                                       §§push(_loc4_);
                                       if(!(_loc7_ && param3))
                                       {
                                          §§push(-§§pop());
                                       }
                                       §§pop().§6J§(§§pop(),§§pop(),-this.§[! §.y);
                                       loop7:
                                       while(true)
                                       {
                                          if(!_loc7_)
                                          {
                                             if(_loc7_)
                                             {
                                                break;
                                             }
                                             §§push(param1);
                                             §§push(param2 + 2);
                                             §§push(-this.§[! §.x);
                                             §§push(_loc5_);
                                             if(!_loc7_)
                                             {
                                                §§push(-§§pop());
                                             }
                                             §§pop().§6J§(§§pop(),§§pop(),§§pop());
                                             while(!(_loc7_ && param2))
                                             {
                                                §§push(param1);
                                                §§push(param2 + 3);
                                                §§push(_loc4_);
                                                if(_loc6_ || this)
                                                {
                                                   §§push(-§§pop());
                                                }
                                                §§push(_loc5_);
                                                if(!_loc7_)
                                                {
                                                   §§push(-§§pop());
                                                }
                                                §§pop().§6J§(§§pop(),§§pop(),§§pop());
                                                if(!_loc7_)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         if(!(_loc7_ && param2))
                                                         {
                                                            §§goto(addr23);
                                                         }
                                                         continue loop4;
                                                      }
                                                      continue loop6;
                                                   }
                                                   continue loop7;
                                                }
                                             }
                                             continue loop1;
                                          }
                                          continue loop5;
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  throw new ArgumentError("Textures with a frame can only be used on quads");
               }
               addr188:
            }
            addr23:
            return;
         }
         §§goto(addr188);
      }
      
      public function get frame() : Rectangle
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            return !!this.§[! § ? this.§[! §.clone() : new Rectangle(0,0,this.width,this.height);
         }
         §§goto(addr36);
      }
      
      public function get clipping() : Rectangle
      {
         return new Rectangle(0,0,this.width,this.height);
      }
      
      public function get repeat() : Boolean
      {
         return this.§77§;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§77§ = param1;
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
      
      public function get root() : §!!9§.Texture
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
      
      public function get parent() : §!!9§.Texture
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
