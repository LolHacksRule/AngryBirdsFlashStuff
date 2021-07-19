package §]!a§
{
   import §4v§.§40§;
   import §4v§.getNextPowerOfTwo;
   import §6;§.§%[§;
   import §]u§.§6J§;
   import §]u§.§<=§;
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
       
      
      private var §8!>§:Rectangle;
      
      private var §"p§:Boolean;
      
      public function Texture()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
            while(true)
            {
               if(getQualifiedClassName(this) != "starling.textures::Texture")
               {
                  do
                  {
                     this.§"p§ = false;
                  }
                  while(!(_loc1_ || _loc2_));
                  
                  if(!(_loc2_ && _loc1_))
                  {
                     break;
                  }
               }
               if(!(_loc2_ && _loc1_))
               {
                  throw new §<=§();
               }
            }
         }
      }
      
      public static function §?!`§(param1:Context3D, param2:Bitmap, param3:Boolean = true, param4:Boolean = false) : §]!a§.Texture
      {
         return §%!8§(param1,param2.bitmapData,param3,param4);
      }
      
      public static function §%!8§(param1:Context3D, param2:BitmapData, param3:Boolean = true, param4:Boolean = false) : §]!a§.Texture
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc9_:BitmapData = null;
         var _loc10_:§2f§ = null;
         var _loc11_:flash.display3D.textures.Texture = null;
         var _loc5_:int = param2.width;
         var _loc6_:int = param2.height;
         §§push(_loc5_);
         if(_loc12_ || param2)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(_loc6_);
         if(!_loc13_)
         {
            §§push(int(§§pop()));
         }
         var _loc8_:* = §§pop();
         if(_loc12_)
         {
            if(param1 != null)
            {
               if(!_loc13_)
               {
                  addr55:
                  §§push(int(getNextPowerOfTwo(param2.width)));
                  if(_loc12_ || §]!a§.Texture)
                  {
                     _loc7_ = §§pop();
                     if(!_loc13_)
                     {
                        addr75:
                        _loc8_ = int(getNextPowerOfTwo(param2.height));
                     }
                     _loc11_ = param1.createTexture(_loc7_,_loc8_,Context3DTextureFormat.BGRA,param4);
                     if(!(_loc13_ && param2))
                     {
                        §§push(_loc7_);
                        if(!_loc13_)
                        {
                           §§push(_loc5_);
                           if(_loc12_ || param3)
                           {
                              §§push(§§pop() > §§pop());
                              if(_loc12_ || §]!a§.Texture)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc12_)
                                    {
                                       addr115:
                                       §§pop();
                                       addr159:
                                       if(!_loc13_)
                                       {
                                          addr120:
                                          §§push(_loc8_ > _loc6_);
                                       }
                                       _loc10_ = new §2f§(_loc11_,_loc7_,_loc8_,param3,true,param4);
                                       if(_loc12_)
                                       {
                                          §§push(§%[§.§[!e§);
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
                                                      _loc9_.dispose();
                                                      loop2:
                                                      while(true)
                                                      {
                                                         if(_loc12_ || param2)
                                                         {
                                                            loop4:
                                                            while(true)
                                                            {
                                                               §§push(_loc5_);
                                                               loop5:
                                                               while(true)
                                                               {
                                                                  §§push(_loc7_);
                                                                  addr236:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() == §§pop());
                                                                     addr237:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        addr208:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc12_ || param2)
                                                                              {
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       return _loc10_;
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 continue loop5;
                                                                              }
                                                                              if(_loc13_)
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                              addr225:
                                                                              if(!(_loc12_ || §]!a§.Texture))
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop4;
                                                                                    §§goto(addr225);
                                                                                 }
                                                                                 addr279:
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr232:
                                                                              }
                                                                           }
                                                                           return new §^!!§(_loc10_,new Rectangle(0,0,_loc5_,_loc6_),true);
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr233:
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               _loc10_.§%!2§(param2);
                                                            }
                                                            addr276:
                                                         }
                                                         §§goto(addr279);
                                                      }
                                                   }
                                                }
                                                §§goto(addr233);
                                             }
                                             §§goto(addr276);
                                          }
                                       }
                                       §§goto(addr232);
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc12_)
                                    {
                                       (_loc9_ = new BitmapData(_loc7_,_loc8_,true,0)).copyPixels(param2,param2.rect,new Point(0,0));
                                       param2 = _loc9_;
                                    }
                                    §§goto(addr159);
                                 }
                                 uploadBitmapData(_loc11_,param2,param3);
                                 §§goto(addr159);
                              }
                              §§goto(addr115);
                           }
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr115);
                  }
               }
               §§goto(addr75);
            }
            §§goto(addr115);
         }
         §§goto(addr55);
      }
      
      public static function §%![§(param1:Context3D, param2:ByteArray) : §]!a§.Texture
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc10_)
         {
            if(param1 == null)
            {
               if(!(_loc11_ && §]!a§.Texture))
               {
                  throw new §6J§();
               }
            }
         }
         var _loc3_:String = String.fromCharCode(param2[0],param2[1],param2[2]);
         if(!_loc11_)
         {
            §§push(_loc3_);
            if(!_loc11_)
            {
               if(§§pop() != "ATF")
               {
                  if(_loc10_)
                  {
                     throw new ArgumentError("Invalid ATF data");
                  }
               }
               else
               {
                  addr59:
                  if(param2[6] == 2)
                  {
                     addr65:
                     §§push(Context3DTextureFormat.COMPRESSED);
                     if(!_loc11_)
                     {
                        addr91:
                        §§push(§§pop());
                     }
                  }
                  else
                  {
                     §§push(Context3DTextureFormat.BGRA);
                     if(_loc10_ || param2)
                     {
                        §§goto(addr91);
                     }
                  }
                  var _loc4_:* = §§pop();
                  var _loc5_:int = Math.pow(2,param2[7]);
                  var _loc6_:int = Math.pow(2,param2[8]);
                  var _loc7_:int = param2[9];
                  var _loc8_:flash.display3D.textures.Texture = param1.createTexture(_loc5_,_loc6_,_loc4_,false);
                  if(_loc10_ || param1)
                  {
                     uploadAtfData(_loc8_,param2);
                  }
                  var _loc9_:§2f§ = new §2f§(_loc8_,_loc5_,_loc6_,_loc7_ > 1,false);
                  if(!(_loc11_ && param1))
                  {
                     if(§%[§.§[!e§)
                     {
                        if(_loc10_ || _loc3_)
                        {
                           addr171:
                           _loc9_.§%!2§(param2);
                        }
                     }
                     return _loc9_;
                  }
                  §§goto(addr171);
               }
               §§goto(addr65);
            }
            §§goto(addr91);
         }
         §§goto(addr59);
      }
      
      public static function §&+§(param1:§]!a§.Texture, param2:Rectangle = null, param3:Rectangle = null) : §]!a§.Texture
      {
         var _loc4_:§]!a§.Texture;
         (_loc4_ = new §^!!§(param1,param2)).§8!>§ = param3;
         return _loc4_;
      }
      
      public static function §<o§(param1:Context3D, param2:int = 64, param3:int = 64, param4:uint = 4.294967295E9, param5:Boolean = false) : §]!a§.Texture
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:BitmapData = new BitmapData(param2,param3,true,param4);
         var _loc7_:§]!a§.Texture = §%!8§(param1,_loc6_,false,param5);
         if(_loc9_)
         {
            if(!§%[§.§[!e§)
            {
               if(_loc9_ || param1)
               {
                  addr65:
                  _loc6_.dispose();
               }
            }
            return _loc7_;
         }
         §§goto(addr65);
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
         if(_loc10_)
         {
            param1.uploadFromBitmapData(param2);
            while(param3)
            {
               loop1:
               while(!(_loc11_ && param2))
               {
                  §§push(param2.width >> 1);
                  loop2:
                  while(true)
                  {
                     _loc4_ = §§pop();
                     addr76:
                     while(true)
                     {
                        addr52:
                        while(true)
                        {
                           §§push(param2.height >> 1);
                           while(true)
                           {
                              _loc5_ = §§pop();
                              addr58:
                              while(true)
                              {
                                 if(_loc10_)
                                 {
                                    §§push(1);
                                    if(!_loc10_)
                                    {
                                       break;
                                    }
                                    continue loop2;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr76);
      }
      
      static function uploadAtfData(param1:flash.display3D.textures.Texture, param2:ByteArray, param3:int = 0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            param1.uploadCompressedTextureFromByteArray(param2,param3);
         }
      }
      
      public function dispose() : void
      {
      }
      
      public function adjustVertexData(param1:§40§, param2:int, param3:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         if(_loc7_ || param1)
         {
            if(this.§8!>§)
            {
               loop0:
               for(; param3 == 4; loop4:
               while(!(_loc6_ && param1))
               {
                  while(true)
                  {
                     §§push(this.§8!>§.height + this.§8!>§.y - this.height);
                     if(_loc7_ || param2)
                     {
                        if(_loc7_ || this)
                        {
                           if(_loc7_)
                           {
                              addr168:
                              _loc5_ = §§pop();
                              while(true)
                              {
                                 param1.§4!T§(param2,-this.§8!>§.x,-this.§8!>§.y);
                                 while(!_loc6_)
                                 {
                                    §§push(param1);
                                    §§push(param2 + 1);
                                    §§push(_loc4_);
                                    if(!_loc6_)
                                    {
                                       §§push(-§§pop());
                                    }
                                    §§pop().§4!T§(§§pop(),§§pop(),-this.§8!>§.y);
                                    loop8:
                                    while(_loc7_ || param3)
                                    {
                                       §§push(param1);
                                       §§push(param2 + 2);
                                       §§push(-this.§8!>§.x);
                                       §§push(_loc5_);
                                       if(_loc7_ || param2)
                                       {
                                          §§push(-§§pop());
                                       }
                                       §§pop().§4!T§(§§pop(),§§pop(),§§pop());
                                       for(; !_loc6_; §§push(param1),§§push(param2 + 3),§§push(_loc4_),if(_loc7_ || param3)
                                       {
                                          §§push(-§§pop());
                                       },§§push(_loc5_),if(!_loc6_)
                                       {
                                          §§push(-§§pop());
                                       },§§pop().§4!T§(§§pop(),§§pop(),§§pop()),if(!_loc6_)
                                       {
                                          continue loop8;
                                       })
                                       {
                                          if(_loc7_ || param3)
                                          {
                                             continue;
                                          }
                                          §§goto(addr170);
                                       }
                                       continue loop4;
                                       if(_loc7_ || param2)
                                       {
                                          if(_loc7_)
                                          {
                                             §§goto(addr29);
                                          }
                                          break loop0;
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr181);
                        }
                        §§goto(addr182);
                     }
                     §§goto(addr168);
                  }
               })
               {
                  while(true)
                  {
                     §§push(this.§8!>§.width + this.§8!>§.x - this.width);
                     addr181:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        addr182:
                        while(true)
                        {
                           _loc4_ = §§pop();
                           continue loop0;
                        }
                     }
                  }
               }
               throw new ArgumentError("Textures with a frame can only be used on quads");
            }
            addr29:
            return;
         }
         §§goto(addr190);
      }
      
      public function get §^0§() : Rectangle
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            return !!this.§8!>§ ? this.§8!>§.clone() : new Rectangle(0,0,this.width,this.height);
         }
         §§goto(addr32);
      }
      
      public function get clipping() : Rectangle
      {
         return new Rectangle(0,0,this.width,this.height);
      }
      
      public function get repeat() : Boolean
      {
         return this.§"p§;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§"p§ = param1;
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
      
      public function get root() : §]!a§.Texture
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
      
      public function get parent() : §]!a§.Texture
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
