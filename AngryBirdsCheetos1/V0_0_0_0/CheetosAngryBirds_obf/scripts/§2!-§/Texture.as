package §2!-§
{
   import § !+§.§0Z§;
   import §"! §.§4p§;
   import §"! §.§@+§;
   import §<!M§.§;Z§;
   import §<!M§.getNextPowerOfTwo;
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
       
      
      private var §]!0§:Rectangle;
      
      private var §9i§:Boolean;
      
      public function Texture()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
            do
            {
               if(getQualifiedClassName(this) != "starling.textures::Texture")
               {
                  do
                  {
                     this.§9i§ = false;
                  }
                  while(_loc2_);
                  
                  if(_loc1_ || this)
                  {
                     return;
                  }
               }
            }
            while(_loc2_);
            
         }
         throw new §4p§();
      }
      
      public static function §#v§(param1:Context3D, param2:Bitmap, param3:Boolean = true, param4:Boolean = false) : §2!-§.Texture
      {
         return §'d§(param1,param2.bitmapData,param3,param4);
      }
      
      public static function §'d§(param1:Context3D, param2:BitmapData, param3:Boolean = true, param4:Boolean = false) : §2!-§.Texture
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc9_:BitmapData = null;
         var _loc10_:§0!1§ = null;
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
         if(!_loc13_)
         {
            §§push(int(§§pop()));
         }
         var _loc8_:* = §§pop();
         if(_loc12_ || param2)
         {
            if(param1 != null)
            {
               if(!_loc13_)
               {
                  §§push(int(getNextPowerOfTwo(param2.width)));
                  if(_loc12_)
                  {
                     _loc7_ = §§pop();
                     addr76:
                     if(!_loc13_)
                     {
                        addr70:
                        §§push(int(getNextPowerOfTwo(param2.height)));
                     }
                     _loc11_ = param1.createTexture(_loc7_,_loc8_,Context3DTextureFormat.BGRA,param4);
                     if(!(_loc13_ && param3))
                     {
                        §§push(_loc7_);
                        if(!(_loc13_ && §2!-§.Texture))
                        {
                           §§push(_loc5_);
                           if(_loc12_ || param1)
                           {
                              §§push(§§pop() > §§pop());
                              if(!_loc13_)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc12_ || param3)
                                    {
                                       §§pop();
                                       addr169:
                                       if(_loc12_)
                                       {
                                          addr125:
                                          §§push(_loc8_ > _loc6_);
                                       }
                                       _loc10_ = new §0!1§(_loc11_,_loc7_,_loc8_,param3,true,param4);
                                       if(_loc12_)
                                       {
                                          §§push(§0Z§.§^$§);
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
                                                         if(_loc12_ || §2!-§.Texture)
                                                         {
                                                            loop4:
                                                            while(true)
                                                            {
                                                               §§push(_loc5_);
                                                               loop5:
                                                               while(true)
                                                               {
                                                                  §§push(_loc7_);
                                                                  addr249:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() == §§pop());
                                                                     addr250:
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           while(§§pop())
                                                                           {
                                                                              if(!(_loc13_ && param3))
                                                                              {
                                                                                 return _loc10_;
                                                                              }
                                                                              if(!_loc12_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                    continue loop1;
                                                                                 }
                                                                                 continue loop2;
                                                                                 addr260:
                                                                              }
                                                                              if(_loc13_ && param1)
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                              addr238:
                                                                              if(!(_loc13_ && param1))
                                                                              {
                                                                                 addr245:
                                                                                 break;
                                                                              }
                                                                              addr294:
                                                                              while(true)
                                                                              {
                                                                                 continue loop4;
                                                                                 §§goto(addr238);
                                                                              }
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr218:
                                                                        }
                                                                        continue loop0;
                                                                        return new §!!=§(_loc10_,new Rectangle(0,0,_loc5_,_loc6_),true);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr246:
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               _loc10_.§=$§(param2);
                                                            }
                                                            addr291:
                                                         }
                                                         §§goto(addr294);
                                                      }
                                                   }
                                                }
                                                §§goto(addr246);
                                             }
                                             §§goto(addr291);
                                          }
                                       }
                                       §§goto(addr245);
                                    }
                                 }
                              }
                              if(§§pop())
                              {
                                 if(!(_loc13_ && param3))
                                 {
                                    (_loc9_ = new BitmapData(_loc7_,_loc8_,true,0)).copyPixels(param2,param2.rect,new Point(0,0));
                                    param2 = _loc9_;
                                 }
                                 §§goto(addr169);
                              }
                              uploadBitmapData(_loc11_,param2,param3);
                              §§goto(addr169);
                           }
                        }
                        §§goto(addr125);
                     }
                     §§goto(addr169);
                  }
                  _loc8_ = §§pop();
                  §§goto(addr76);
               }
               §§goto(addr70);
            }
            §§goto(addr169);
         }
         §§goto(addr76);
      }
      
      public static function §'!T§(param1:Context3D, param2:ByteArray) : §2!-§.Texture
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc11_)
         {
            if(param1 == null)
            {
               if(_loc11_ || _loc3_)
               {
                  throw new §@+§();
               }
            }
         }
         var _loc3_:String = String.fromCharCode(param2[0],param2[1],param2[2]);
         if(!_loc10_)
         {
            §§push(_loc3_);
            if(_loc11_ || _loc3_)
            {
               if(§§pop() != "ATF")
               {
                  if(!(_loc10_ && _loc3_))
                  {
                     throw new ArgumentError("Invalid ATF data");
                  }
               }
               else
               {
                  §§goto(addr70);
               }
               §§goto(addr76);
            }
            §§goto(addr107);
         }
         addr70:
         if(param2[6] == 2)
         {
            addr76:
            §§push(Context3DTextureFormat.COMPRESSED);
            if(!(_loc10_ && param2))
            {
               addr107:
               §§push(§§pop());
            }
            §§goto(addr107);
         }
         else
         {
            §§push(Context3DTextureFormat.BGRA);
            if(_loc11_ || param1)
            {
               §§goto(addr107);
            }
         }
         var _loc4_:* = §§pop();
         var _loc5_:int = Math.pow(2,param2[7]);
         var _loc6_:int = Math.pow(2,param2[8]);
         var _loc7_:int = param2[9];
         var _loc8_:flash.display3D.textures.Texture = param1.createTexture(_loc5_,_loc6_,_loc4_,false);
         if(!(_loc10_ && param2))
         {
            uploadAtfData(_loc8_,param2);
         }
         var _loc9_:§0!1§ = new §0!1§(_loc8_,_loc5_,_loc6_,_loc7_ > 1,false);
         if(_loc11_ || param2)
         {
            if(§0Z§.§^$§)
            {
               if(!_loc10_)
               {
                  _loc9_.§=$§(param2);
               }
            }
         }
         return _loc9_;
      }
      
      public static function §"!7§(param1:§2!-§.Texture, param2:Rectangle = null, param3:Rectangle = null) : §2!-§.Texture
      {
         var _loc4_:§2!-§.Texture;
         (_loc4_ = new §!!=§(param1,param2)).§]!0§ = param3;
         return _loc4_;
      }
      
      public static function §8!'§(param1:Context3D, param2:int = 64, param3:int = 64, param4:uint = 4.294967295E9, param5:Boolean = false) : §2!-§.Texture
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:BitmapData = new BitmapData(param2,param3,true,param4);
         var _loc7_:§2!-§.Texture = §'d§(param1,_loc6_,false,param5);
         if(!(_loc8_ && param2))
         {
            if(!§0Z§.§^$§)
            {
               if(!_loc8_)
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
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:BitmapData = null;
         var _loc8_:Matrix = null;
         var _loc9_:Rectangle = null;
         if(!(_loc10_ && param3))
         {
            param1.uploadFromBitmapData(param2);
            while(param3)
            {
               addr76:
               if(!(_loc11_ || param2))
               {
                  continue;
               }
               §§push(1);
               if(!_loc10_)
               {
                  addr44:
                  _loc6_ = §§pop();
                  if(_loc11_ || param2)
                  {
                     if(false)
                     {
                        loop4:
                        while(true)
                        {
                           §§push(param2.height >> 1);
                           addr59:
                           loop5:
                           while(!(_loc10_ && param1))
                           {
                              _loc5_ = §§pop();
                              while(true)
                              {
                                 if(_loc11_ || param2)
                                 {
                                    if(!_loc11_)
                                    {
                                       break;
                                    }
                                    §§goto(addr76);
                                 }
                                 addr92:
                                 while(true)
                                 {
                                    continue loop4;
                                 }
                                 §§goto(addr44);
                              }
                              while(true)
                              {
                                 §§push(param2.width >> 1);
                                 break loop5;
                              }
                           }
                           while(true)
                           {
                              _loc4_ = §§pop();
                              §§goto(addr92);
                           }
                        }
                     }
                     _loc7_ = new BitmapData(_loc4_,_loc5_,true,0);
                     _loc8_ = new Matrix(0.5,0,0,0.5);
                     _loc9_ = new Rectangle();
                     addr182:
                     §§push(_loc4_);
                     if(_loc11_ || param2)
                     {
                        if(!(_loc10_ && §2!-§.Texture))
                        {
                           addr199:
                           §§push(1);
                           if(!_loc10_)
                           {
                              addr202:
                              §§push(§§pop() >= §§pop());
                              if(!(§§pop() >= §§pop()))
                              {
                                 addr204:
                                 §§pop();
                                 addr205:
                                 §§push(_loc5_);
                                 if(!(_loc10_ && param2))
                                 {
                                    §§push(1);
                                    if(!_loc10_)
                                    {
                                       if(!_loc10_)
                                       {
                                          §§push(§§pop() >= §§pop());
                                          if(!_loc10_)
                                          {
                                             if(!_loc10_)
                                             {
                                                addr147:
                                                if(!§§pop())
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      if(!(_loc10_ && param3))
                                                      {
                                                         if(!(_loc10_ && param1))
                                                         {
                                                            if(_loc11_)
                                                            {
                                                               _loc7_.dispose();
                                                               addr169:
                                                               if(_loc11_ || param3)
                                                               {
                                                                  if(_loc11_)
                                                                  {
                                                                     if(_loc11_)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           §§goto(addr182);
                                                                        }
                                                                        break;
                                                                     }
                                                                     addr234:
                                                                     if(!(_loc10_ && param1))
                                                                     {
                                                                        addr225:
                                                                        _loc4_ >>= 1;
                                                                        addr223:
                                                                        if(_loc11_)
                                                                        {
                                                                           addr208:
                                                                           §§push(_loc5_);
                                                                           if(_loc11_ || param2)
                                                                           {
                                                                              if(!_loc10_)
                                                                              {
                                                                                 addr219:
                                                                                 _loc5_ = §§pop() >> 1;
                                                                                 addr220:
                                                                                 §§goto(addr182);
                                                                                 addr218:
                                                                              }
                                                                              §§goto(addr223);
                                                                           }
                                                                           §§goto(addr225);
                                                                        }
                                                                        _loc7_.draw(param2,_loc8_,null,null,null,true);
                                                                        addr273:
                                                                        addr224:
                                                                     }
                                                                     if(!(_loc10_ && param2))
                                                                     {
                                                                        param1.uploadFromBitmapData(_loc7_,_loc6_++);
                                                                        _loc8_.scale(0.5,0.5);
                                                                        §§goto(addr234);
                                                                        addr250:
                                                                     }
                                                                     _loc9_.height = _loc5_;
                                                                     _loc7_.fillRect(_loc9_,0);
                                                                     §§goto(addr273);
                                                                     addr288:
                                                                     addr294:
                                                                  }
                                                                  §§goto(addr225);
                                                               }
                                                               §§goto(addr205);
                                                            }
                                                            §§goto(addr288);
                                                         }
                                                         §§goto(addr250);
                                                      }
                                                      §§goto(addr220);
                                                   }
                                                   §§goto(addr169);
                                                }
                                                _loc9_.width = _loc4_;
                                                §§goto(addr294);
                                             }
                                             §§goto(addr202);
                                          }
                                          §§goto(addr204);
                                       }
                                       §§goto(addr218);
                                    }
                                    §§goto(addr199);
                                 }
                                 §§goto(addr182);
                              }
                              §§goto(addr147);
                           }
                           §§goto(addr224);
                        }
                        §§goto(addr208);
                     }
                     §§goto(addr219);
                  }
                  §§goto(addr67);
               }
               §§goto(addr59);
            }
            return;
         }
         §§goto(addr87);
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
      
      public function adjustVertexData(param1:§;Z§, param2:int, param3:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         if(!_loc6_)
         {
            if(this.§]!0§)
            {
               loop0:
               while(true)
               {
                  if(param3 != 4)
                  {
                     §§goto(addr202);
                  }
                  loop1:
                  while(true)
                  {
                     §§push(this.§]!0§.width + this.§]!0§.x - this.width);
                     if(!(_loc6_ && param2))
                     {
                        §§push(Number(§§pop()));
                     }
                     addr177:
                     while(true)
                     {
                        _loc4_ = §§pop();
                        continue loop0;
                        addr148:
                        if(_loc6_ && param1)
                        {
                           continue;
                        }
                        _loc5_ = §§pop();
                        loop4:
                        while(true)
                        {
                           param1.§6I§(param2,-this.§]!0§.x,-this.§]!0§.y);
                           loop5:
                           while(true)
                           {
                              if(_loc7_)
                              {
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 §§push(param1);
                                 §§push(param2 + 1);
                                 §§push(_loc4_);
                                 if(_loc7_ || param3)
                                 {
                                    §§push(-§§pop());
                                 }
                                 §§pop().§6I§(§§pop(),§§pop(),-this.§]!0§.y);
                                 for(; _loc7_; loop7:
                                 while(!(_loc6_ && param1))
                                 {
                                    if(_loc7_)
                                    {
                                       while(true)
                                       {
                                          §§push(param1);
                                          §§push(param2 + 3);
                                          §§push(_loc4_);
                                          if(_loc7_ || this)
                                          {
                                             §§push(-§§pop());
                                          }
                                          §§push(_loc5_);
                                          if(!_loc6_)
                                          {
                                             §§push(-§§pop());
                                          }
                                          §§pop().§6I§(§§pop(),§§pop(),§§pop());
                                          if(_loc7_ || param2)
                                          {
                                             break;
                                          }
                                          continue loop7;
                                       }
                                       return;
                                       continue;
                                    }
                                    continue loop5;
                                 })
                                 {
                                    if(_loc6_)
                                    {
                                       addr202:
                                    }
                                    §§push(param1);
                                    §§push(param2 + 2);
                                    §§push(-this.§]!0§.x);
                                    §§push(_loc5_);
                                    if(!(_loc6_ && this))
                                    {
                                       §§push(-§§pop());
                                    }
                                    §§pop().§6I§(§§pop(),§§pop(),§§pop());
                                    continue;
                                    throw new ArgumentError("Textures with a frame can only be used on quads");
                                 }
                                 continue loop1;
                              }
                              continue loop4;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
            §§goto(addr24);
         }
         §§goto(addr83);
      }
      
      public function get §&V§() : Rectangle
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            return !!this.§]!0§ ? this.§]!0§.clone() : new Rectangle(0,0,this.width,this.height);
         }
         §§goto(addr37);
      }
      
      public function get clipping() : Rectangle
      {
         return new Rectangle(0,0,this.width,this.height);
      }
      
      public function get repeat() : Boolean
      {
         return this.§9i§;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§9i§ = param1;
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
      
      public function get root() : §2!-§.Texture
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
      
      public function get parent() : §2!-§.Texture
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
