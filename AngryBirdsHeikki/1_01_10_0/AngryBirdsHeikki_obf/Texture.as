package
{
   import §"^§.§+!'§;
   import §2i§.§"V§;
   import §2i§.§'u§;
   import §=9§.§?!2§;
   import §=9§.getNextPowerOfTwo;
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
       
      
      private var §,!'§:Rectangle;
      
      private var §#!-§:Boolean;
      
      public function Texture()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
            loop0:
            while(getQualifiedClassName(this) == "starling.textures::Texture")
            {
               if(_loc1_ && _loc2_)
               {
                  while(true)
                  {
                     break loop0;
                  }
               }
               else
               {
                  addr50:
                  addr79:
               }
               continue;
               if(_loc2_)
               {
                  return;
               }
            }
            while(true)
            {
               this.§#!-§ = false;
               if(!(_loc2_ || _loc1_))
               {
                  continue;
               }
               §§goto(addr50);
            }
         }
         throw new §'u§();
      }
      
      public static function §"r§(param1:Context3D, param2:Bitmap, param3:Boolean = true, param4:Boolean = false) : Texture
      {
         return §!?§(param1,param2.bitmapData,param3,param4);
      }
      
      public static function §!?§(param1:Context3D, param2:BitmapData, param3:Boolean = true, param4:Boolean = false) : Texture
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc9_:BitmapData = null;
         var _loc10_:§8!1§ = null;
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
         if(_loc12_ || param1)
         {
            if(param1 != null)
            {
               if(!(_loc13_ && Texture))
               {
                  §§push(int(getNextPowerOfTwo(param2.width)));
                  if(_loc12_)
                  {
                     _loc7_ = §§pop();
                     if(_loc12_)
                     {
                        addr75:
                        _loc8_ = int(getNextPowerOfTwo(param2.height));
                     }
                     _loc11_ = param1.createTexture(_loc7_,_loc8_,Context3DTextureFormat.BGRA,param4);
                     if(_loc12_ || param3)
                     {
                        §§push(_loc7_);
                        if(_loc12_ || param3)
                        {
                           §§push(_loc5_);
                           if(_loc12_ || Texture)
                           {
                              §§push(§§pop() > §§pop());
                              if(_loc12_ || Texture)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc12_)
                                    {
                                       addr120:
                                       §§pop();
                                       addr169:
                                       if(!_loc13_)
                                       {
                                          addr125:
                                          §§push(_loc8_ > _loc6_);
                                       }
                                       _loc10_ = new §8!1§(_loc11_,_loc7_,_loc8_,param3,true,param4);
                                       if(_loc12_ || param2)
                                       {
                                          §§push(§+!'§.§@N§);
                                          loop0:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc13_ && param2))
                                                {
                                                   _loc10_.§&3§(param2);
                                                }
                                                while(true)
                                                {
                                                   addr243:
                                                   if(_loc13_ && param2)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(_loc6_);
                                                   if(_loc12_)
                                                   {
                                                      §§push(_loc8_);
                                                      if(!_loc13_)
                                                      {
                                                         addr208:
                                                         §§push(§§pop() == §§pop());
                                                         if(_loc12_ || param2)
                                                         {
                                                            if(_loc12_)
                                                            {
                                                               loop8:
                                                               while(§§pop())
                                                               {
                                                                  if(_loc12_ || Texture)
                                                                  {
                                                                     return _loc10_;
                                                                  }
                                                                  if(_loc12_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr260:
                                                                  addr260:
                                                                  while(_loc12_)
                                                                  {
                                                                     §§goto(addr243);
                                                                  }
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     addr232:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc5_);
                                                                        addr234:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc7_);
                                                                           addr235:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() == §§pop());
                                                                              addr236:
                                                                              while(_loc12_)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    continue loop8;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    §§goto(addr241);
                                                                                    §§goto(addr208);
                                                                                 }
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                  }
                                                                  addr241:
                                                               }
                                                               return new §[!_§(_loc10_,new Rectangle(0,0,_loc5_,_loc6_),true);
                                                            }
                                                            §§goto(addr236);
                                                         }
                                                         §§goto(addr240);
                                                      }
                                                      §§goto(addr235);
                                                   }
                                                   §§goto(addr234);
                                                }
                                             }
                                             else if(_loc9_)
                                             {
                                                if(_loc12_)
                                                {
                                                   _loc9_.dispose();
                                                }
                                                §§goto(addr260);
                                             }
                                             §§goto(addr232);
                                          }
                                       }
                                       §§goto(addr260);
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(!(_loc13_ && Texture))
                                    {
                                       addr144:
                                       (_loc9_ = new BitmapData(_loc7_,_loc8_,true,0)).copyPixels(param2,param2.rect,new Point(0,0));
                                       param2 = _loc9_;
                                    }
                                    §§goto(addr169);
                                 }
                                 uploadBitmapData(_loc11_,param2,param3);
                                 §§goto(addr169);
                              }
                              §§goto(addr120);
                           }
                        }
                        §§goto(addr125);
                     }
                     §§goto(addr144);
                  }
               }
               §§goto(addr75);
            }
            §§goto(addr120);
         }
         §§goto(addr75);
      }
      
      public static function §!R§(param1:Context3D, param2:ByteArray) : Texture
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc11_ || param2)
         {
            if(param1 == null)
            {
               if(_loc11_ || param1)
               {
                  §§goto(addr34);
               }
            }
            var _loc3_:String = String.fromCharCode(param2[0],param2[1],param2[2]);
            if(_loc11_)
            {
               §§push(_loc3_);
               if(!(_loc10_ && param2))
               {
                  if(§§pop() != "ATF")
                  {
                     if(!_loc10_)
                     {
                        §§goto(addr64);
                     }
                  }
                  if(param2[6] == 2)
                  {
                     §§push(Context3DTextureFormat.COMPRESSED);
                     if(_loc11_)
                     {
                        addr97:
                        §§push(§§pop());
                        addr91:
                     }
                  }
                  else
                  {
                     §§push(Context3DTextureFormat.BGRA);
                     if(_loc11_)
                     {
                        §§goto(addr97);
                     }
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
                  var _loc9_:§8!1§ = new §8!1§(_loc8_,_loc5_,_loc6_,_loc7_ > 1,false);
                  if(!_loc10_)
                  {
                     if(§+!'§.§@N§)
                     {
                        if(_loc11_ || _loc3_)
                        {
                           _loc9_.§&3§(param2);
                        }
                     }
                  }
                  return _loc9_;
               }
               §§goto(addr91);
            }
            addr64:
            throw new ArgumentError("Invalid ATF data");
         }
         addr34:
         throw new §"V§();
      }
      
      public static function §#!E§(param1:Texture, param2:Rectangle = null, param3:Rectangle = null) : Texture
      {
         var _loc4_:Texture;
         (_loc4_ = new §[!_§(param1,param2)).§,!'§ = param3;
         return _loc4_;
      }
      
      public static function §>!J§(param1:Context3D, param2:int = 64, param3:int = 64, param4:uint = 4.294967295E9, param5:Boolean = false) : Texture
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:BitmapData = new BitmapData(param2,param3,true,param4);
         var _loc7_:Texture = §!?§(param1,_loc6_,false,param5);
         if(_loc9_ || param1)
         {
            if(!§+!'§.§@N§)
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
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:int = 0;
         var _loc7_:BitmapData = null;
         var _loc8_:Matrix = null;
         var _loc9_:Rectangle = null;
         if(!_loc10_)
         {
            param1.uploadFromBitmapData(param2);
            while(param3)
            {
               if(!(_loc10_ && Texture))
               {
                  §§push(param2.width >> 1);
                  loop1:
                  while(true)
                  {
                     _loc4_ = §§pop();
                     addr87:
                     while(true)
                     {
                        addr65:
                        while(true)
                        {
                           §§push(param2.height >> 1);
                           loop4:
                           while(true)
                           {
                              _loc5_ = §§pop();
                              addr71:
                              while(true)
                              {
                                 §§push(1);
                                 if(_loc11_)
                                 {
                                    continue loop1;
                                 }
                                 continue loop4;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
               §§goto(addr87);
            }
            return;
         }
         §§goto(addr87);
      }
      
      static function uploadAtfData(param1:flash.display3D.textures.Texture, param2:ByteArray, param3:int = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            param1.uploadCompressedTextureFromByteArray(param2,param3);
         }
      }
      
      public function dispose() : void
      {
      }
      
      public function adjustVertexData(param1:§?!2§, param2:int, param3:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(_loc7_ || param3)
         {
            if(this.§,!'§)
            {
               if(!_loc6_)
               {
                  if(param3 == 4)
                  {
                     loop0:
                     while(true)
                     {
                        §§push(this.§,!'§.width + this.§,!'§.x - this.width);
                        loop1:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           while(true)
                           {
                              _loc4_ = §§pop();
                              while(true)
                              {
                                 §§push(this.§,!'§.height + this.§,!'§.y - this.height);
                                 if(!_loc6_)
                                 {
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                    if(_loc6_ && param3)
                                    {
                                       continue loop1;
                                    }
                                    §§push(Number(§§pop()));
                                 }
                                 _loc5_ = §§pop();
                                 loop4:
                                 for(; !_loc6_; while(!(_loc6_ && param3))
                                 {
                                    if(_loc7_)
                                    {
                                       §§push(param1);
                                       §§push(param2 + 2);
                                       §§push(-this.§,!'§.x);
                                       §§push(_loc5_);
                                       if(!_loc6_)
                                       {
                                          §§push(-§§pop());
                                       }
                                       §§pop().§%5§(§§pop(),§§pop(),§§pop());
                                       while(!(_loc6_ && param3))
                                       {
                                          §§push(param1);
                                          §§push(param2 + 3);
                                          §§push(_loc4_);
                                          if(_loc7_ || param2)
                                          {
                                             §§push(-§§pop());
                                          }
                                          §§push(_loc5_);
                                          if(!_loc6_)
                                          {
                                             §§push(-§§pop());
                                          }
                                          §§pop().§%5§(§§pop(),§§pop(),§§pop());
                                          if(!_loc7_)
                                          {
                                             continue;
                                          }
                                          §§goto(addr54);
                                       }
                                       continue;
                                    }
                                    continue loop0;
                                 })
                                 {
                                    param1.§%5§(param2,-this.§,!'§.x,-this.§,!'§.y);
                                    do
                                    {
                                       §§push(param1);
                                       §§push(param2 + 1);
                                       §§push(_loc4_);
                                       if(!(_loc6_ && param1))
                                       {
                                          §§push(-§§pop());
                                       }
                                       §§pop().§%5§(§§pop(),§§pop(),-this.§,!'§.y);
                                       continue loop4;
                                    }
                                    while(_loc6_);
                                    
                                    if(_loc7_)
                                    {
                                       addr29:
                                       return;
                                       addr58:
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               throw new ArgumentError("Textures with a frame can only be used on quads");
            }
            §§goto(addr29);
         }
         §§goto(addr58);
      }
      
      public function get §8^§() : Rectangle
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            return !!this.§,!'§ ? this.§,!'§.clone() : new Rectangle(0,0,this.width,this.height);
         }
         §§goto(addr36);
      }
      
      public function get clipping() : Rectangle
      {
         return new Rectangle(0,0,this.width,this.height);
      }
      
      public function get repeat() : Boolean
      {
         return this.§#!-§;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§#!-§ = param1;
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
      
      public function get root() : Texture
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
      
      public function get parent() : Texture
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
