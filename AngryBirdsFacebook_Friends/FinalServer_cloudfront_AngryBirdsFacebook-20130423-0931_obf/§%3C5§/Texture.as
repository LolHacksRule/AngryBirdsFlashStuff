package §<5§
{
   import §!=§.§`b§;
   import §!=§.getNextPowerOfTwo;
   import §"a§.§!"J§;
   import §`#§.§#f§;
   import §`#§.§7!p§;
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
       
      
      private var §[";§:Rectangle;
      
      private var §@'§:Boolean;
      
      public function Texture()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
            loop0:
            for(; getQualifiedClassName(this) != "starling.textures::Texture"; if(_loc2_ && this)
            {
               continue;
            },§§goto(addr38))
            {
               while(true)
               {
                  this.§@'§ = false;
                  if(!(_loc2_ && this))
                  {
                     if(!(_loc2_ && this))
                     {
                        return;
                        addr66:
                     }
                     break loop0;
                  }
                  continue loop0;
               }
            }
            throw new §7!p§();
         }
         §§goto(addr66);
      }
      
      public static function §[f§(param1:Context3D, param2:Bitmap, param3:Boolean = true, param4:Boolean = false) : §<5§.Texture
      {
         return §""C§(param1,param2.bitmapData,param3,param4);
      }
      
      public static function §""C§(param1:Context3D, param2:BitmapData, param3:Boolean = true, param4:Boolean = false) : §<5§.Texture
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc9_:BitmapData = null;
         var _loc10_:§1!1§ = null;
         var _loc11_:flash.display3D.textures.Texture = null;
         var _loc5_:int = param2.width;
         var _loc6_:int = param2.height;
         §§push(_loc5_);
         if(_loc13_)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(_loc6_);
         if(!_loc12_)
         {
            §§push(int(§§pop()));
         }
         var _loc8_:* = §§pop();
         if(!(_loc12_ && param3))
         {
            if(param1 != null)
            {
               if(_loc13_)
               {
                  §§push(int(getNextPowerOfTwo(param2.width)));
                  if(!(_loc12_ && §<5§.Texture))
                  {
                     _loc7_ = §§pop();
                     addr77:
                     if(!_loc12_)
                     {
                        addr71:
                        §§push(int(getNextPowerOfTwo(param2.height)));
                     }
                     _loc11_ = param1.createTexture(_loc7_,_loc8_,Context3DTextureFormat.BGRA,param4);
                     if(_loc13_)
                     {
                        §§push(_loc7_);
                        if(!_loc12_)
                        {
                           §§push(_loc5_);
                           if(!(_loc12_ && param1))
                           {
                              §§push(§§pop() > §§pop());
                              if(!_loc12_)
                              {
                                 if(!§§pop())
                                 {
                                    if(!_loc12_)
                                    {
                                       §§pop();
                                       addr160:
                                       if(_loc13_ || param2)
                                       {
                                          addr116:
                                          §§push(_loc8_ > _loc6_);
                                       }
                                       _loc10_ = new §1!1§(_loc11_,_loc7_,_loc8_,param3,true,param4);
                                       if(!_loc12_)
                                       {
                                          §§push(§!"J§.§27§);
                                          loop0:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc12_)
                                                {
                                                   _loc10_.§%!,§(param2);
                                                }
                                                while(true)
                                                {
                                                }
                                                addr275:
                                             }
                                             else if(_loc9_)
                                             {
                                                loop1:
                                                while(true)
                                                {
                                                   _loc9_.dispose();
                                                   addr264:
                                                   addr249:
                                                   while(true)
                                                   {
                                                      if(!_loc13_)
                                                      {
                                                         §§goto(addr275);
                                                      }
                                                   }
                                                   loop9:
                                                   while(true)
                                                   {
                                                      if(!(_loc13_ || param3))
                                                      {
                                                         continue loop1;
                                                      }
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(_loc6_);
                                                         if(_loc13_)
                                                         {
                                                            §§push(_loc8_);
                                                            if(_loc13_ || §<5§.Texture)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               if(_loc12_ && param3)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               if(!(_loc12_ && param1))
                                                               {
                                                                  while(§§pop())
                                                                  {
                                                                     if(_loc12_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(_loc13_)
                                                                     {
                                                                        if(!_loc12_)
                                                                        {
                                                                           return _loc10_;
                                                                        }
                                                                        break loop9;
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                                  return new §%!P§(_loc10_,new Rectangle(0,0,_loc5_,_loc6_),true);
                                                                  addr214:
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  §§goto(addr214);
                                                               }
                                                               addr229:
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr229);
                                                            }
                                                            addr228:
                                                         }
                                                         addr227:
                                                         while(true)
                                                         {
                                                            §§goto(addr228);
                                                            continue loop11;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr264);
                                                }
                                             }
                                             while(true)
                                             {
                                                §§goto(addr227);
                                             }
                                          }
                                       }
                                       §§goto(addr256);
                                    }
                                 }
                              }
                              if(§§pop())
                              {
                                 if(_loc13_ || §<5§.Texture)
                                 {
                                    (_loc9_ = new BitmapData(_loc7_,_loc8_,true,0)).copyPixels(param2,param2.rect,new Point(0,0));
                                    param2 = _loc9_;
                                 }
                                 §§goto(addr160);
                              }
                              uploadBitmapData(_loc11_,param2,param3);
                              §§goto(addr160);
                           }
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr160);
                  }
                  _loc8_ = §§pop();
                  §§goto(addr77);
               }
               §§goto(addr71);
            }
            §§goto(addr160);
         }
         §§goto(addr77);
      }
      
      public static function §9O§(param1:Context3D, param2:ByteArray) : §<5§.Texture
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc10_ || _loc3_)
         {
            if(param1 == null)
            {
               if(!(_loc11_ && param1))
               {
                  throw new §#f§();
               }
            }
         }
         var _loc3_:String = String.fromCharCode(param2[0],param2[1],param2[2]);
         if(_loc10_ || §<5§.Texture)
         {
            §§push(_loc3_);
            if(!(_loc11_ && _loc3_))
            {
               if(§§pop() != "ATF")
               {
                  if(!(_loc11_ && §<5§.Texture))
                  {
                     throw new ArgumentError("Invalid ATF data");
                  }
               }
               if(param2[6] == 2)
               {
                  addr100:
                  §§push(Context3DTextureFormat.COMPRESSED);
                  if(_loc10_ || param1)
                  {
                  }
                  addr121:
                  §§push(§§pop());
               }
               else
               {
                  §§push(Context3DTextureFormat.BGRA);
                  if(!(_loc11_ && param2))
                  {
                     §§goto(addr121);
                  }
               }
            }
            var _loc4_:* = §§pop();
            var _loc5_:int = Math.pow(2,param2[7]);
            var _loc6_:int = Math.pow(2,param2[8]);
            var _loc7_:int = param2[9];
            var _loc8_:flash.display3D.textures.Texture = param1.createTexture(_loc5_,_loc6_,_loc4_,false);
            if(_loc10_ || §<5§.Texture)
            {
               uploadAtfData(_loc8_,param2);
            }
            var _loc9_:§1!1§ = new §1!1§(_loc8_,_loc5_,_loc6_,_loc7_ > 1,false);
            if(_loc10_ || §<5§.Texture)
            {
               if(§!"J§.§27§)
               {
                  if(!(_loc11_ && §<5§.Texture))
                  {
                     _loc9_.§%!,§(param2);
                  }
               }
            }
            return _loc9_;
         }
         §§goto(addr100);
      }
      
      public static function §74§(param1:§<5§.Texture, param2:Rectangle = null, param3:Rectangle = null) : §<5§.Texture
      {
         var _loc4_:§<5§.Texture;
         (_loc4_ = new §%!P§(param1,param2)).§[";§ = param3;
         return _loc4_;
      }
      
      public static function §'"I§(param1:Context3D, param2:int = 64, param3:int = 64, param4:uint = 4.294967295E9, param5:Boolean = false) : §<5§.Texture
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:BitmapData = new BitmapData(param2,param3,true,param4);
         var _loc7_:§<5§.Texture = §""C§(param1,_loc6_,false,param5);
         if(!(_loc8_ && §<5§.Texture))
         {
            if(!§!"J§.§27§)
            {
               if(!(_loc8_ && §<5§.Texture))
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
         if(!(_loc11_ && param3))
         {
            param1.uploadFromBitmapData(param2);
            while(param3)
            {
               while(true)
               {
                  §§push(param2.width >> 1);
                  addr80:
                  while(true)
                  {
                     _loc4_ = §§pop();
                  }
               }
               addr65:
               if(!(_loc10_ || param1))
               {
                  continue;
               }
               §§push(1);
               if(_loc10_)
               {
                  if(_loc10_)
                  {
                     _loc6_ = §§pop();
                     if(!_loc11_)
                     {
                        if(false)
                        {
                           loop4:
                           while(true)
                           {
                              §§push(param2.height >> 1);
                              addr55:
                              while(true)
                              {
                                 _loc5_ = §§pop();
                                 addr56:
                                 while(true)
                                 {
                                    if(_loc10_ || param1)
                                    {
                                       if(!_loc10_)
                                       {
                                          break;
                                       }
                                       §§goto(addr65);
                                    }
                                    addr81:
                                    while(true)
                                    {
                                       continue loop4;
                                    }
                                 }
                                 §§goto(addr76);
                              }
                           }
                        }
                        _loc7_ = new BitmapData(_loc4_,_loc5_,true,0);
                        _loc8_ = new Matrix(0.5,0,0,0.5);
                        _loc9_ = new Rectangle();
                        addr161:
                        §§push(_loc4_);
                        if(_loc10_)
                        {
                           if(!(_loc11_ && param3))
                           {
                              if(!_loc11_)
                              {
                                 addr175:
                                 §§push(1);
                                 if(!_loc11_)
                                 {
                                    §§push(§§pop() >= §§pop());
                                    if(_loc10_ || param2)
                                    {
                                       if(!§§pop())
                                       {
                                          addr187:
                                          §§pop();
                                          addr188:
                                          if(_loc10_)
                                          {
                                             if(_loc10_)
                                             {
                                                §§push(_loc5_);
                                                if(_loc10_ || param3)
                                                {
                                                   §§push(1);
                                                   if(_loc10_)
                                                   {
                                                      if(_loc10_)
                                                      {
                                                         §§push(§§pop() >= §§pop());
                                                         if(_loc10_)
                                                         {
                                                            addr134:
                                                            if(!§§pop())
                                                            {
                                                               if(!(_loc11_ && param3))
                                                               {
                                                                  _loc7_.dispose();
                                                               }
                                                               if(!(_loc11_ && §<5§.Texture))
                                                               {
                                                                  if(!(_loc11_ && param3))
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr161);
                                                                     }
                                                                     break;
                                                                  }
                                                                  addr200:
                                                                  if(_loc10_)
                                                                  {
                                                                     if(!_loc11_)
                                                                     {
                                                                        §§goto(addr161);
                                                                     }
                                                                     addr225:
                                                                     if(_loc10_ || param1)
                                                                     {
                                                                        if(!(_loc11_ && param1))
                                                                        {
                                                                           _loc8_.scale(0.5,0.5);
                                                                           addr209:
                                                                           _loc4_ >>= 1;
                                                                           §§push(_loc5_);
                                                                           if(!_loc11_)
                                                                           {
                                                                              addr199:
                                                                              _loc5_ = §§pop() >> 1;
                                                                              §§goto(addr200);
                                                                           }
                                                                           §§goto(addr199);
                                                                           addr210:
                                                                           addr208:
                                                                           addr216:
                                                                           addr207:
                                                                        }
                                                                        addr265:
                                                                        if(!_loc11_)
                                                                        {
                                                                           _loc7_.draw(param2,_loc8_,null,null,null,true);
                                                                           param1.uploadFromBitmapData(_loc7_,_loc6_++);
                                                                           §§goto(addr225);
                                                                           addr259:
                                                                        }
                                                                        _loc7_.fillRect(_loc9_,0);
                                                                        §§goto(addr265);
                                                                        addr272:
                                                                     }
                                                                     §§goto(addr259);
                                                                  }
                                                                  §§goto(addr210);
                                                               }
                                                               §§goto(addr188);
                                                            }
                                                            _loc9_.width = _loc4_;
                                                            _loc9_.height = _loc5_;
                                                            §§goto(addr272);
                                                            addr278:
                                                         }
                                                         §§goto(addr187);
                                                      }
                                                      §§goto(addr208);
                                                   }
                                                   §§goto(addr175);
                                                }
                                                §§goto(addr161);
                                             }
                                             §§goto(addr278);
                                          }
                                          §§goto(addr216);
                                       }
                                       §§goto(addr134);
                                    }
                                    §§goto(addr187);
                                 }
                                 §§goto(addr199);
                              }
                              §§goto(addr207);
                           }
                           §§goto(addr209);
                        }
                        §§goto(addr199);
                     }
                     §§goto(addr56);
                  }
                  §§goto(addr80);
               }
               §§goto(addr55);
            }
            return;
         }
         §§goto(addr81);
      }
      
      static function uploadAtfData(param1:flash.display3D.textures.Texture, param2:ByteArray, param3:int = 0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || §<5§.Texture)
         {
            param1.uploadCompressedTextureFromByteArray(param2,param3);
         }
      }
      
      public function dispose() : void
      {
      }
      
      public function adjustVertexData(param1:§`b§, param2:int, param3:int) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(!(_loc7_ && param3))
         {
            if(this.§[";§)
            {
               loop0:
               while(true)
               {
                  if(param3 == 4)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(this.§[";§.width + this.§[";§.x - this.width);
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
                                 if(_loc6_ || this)
                                 {
                                    §§push(this.§[";§.height + this.§[";§.y - this.height);
                                    if(_loc6_)
                                    {
                                       if(_loc7_ && param2)
                                       {
                                          break;
                                       }
                                       continue loop2;
                                    }
                                    addr175:
                                    _loc5_ = §§pop();
                                    while(!_loc7_)
                                    {
                                       param1.§,S§(param2,-this.§[";§.x,-this.§[";§.y);
                                       loop6:
                                       for(; !(_loc7_ && this); if(_loc7_ && param2)
                                       {
                                          continue;
                                       },if(!_loc6_)
                                       {
                                          continue loop4;
                                       },if(!(_loc6_ || param2))
                                       {
                                          continue loop1;
                                       },§§goto(addr74))
                                       {
                                          §§push(param1);
                                          §§push(param2 + 1);
                                          §§push(_loc4_);
                                          if(!_loc7_)
                                          {
                                             §§push(-§§pop());
                                          }
                                          §§pop().§,S§(§§pop(),§§pop(),-this.§[";§.y);
                                          while(true)
                                          {
                                             §§push(param1);
                                             §§push(param2 + 2);
                                             §§push(-this.§[";§.x);
                                             §§push(_loc5_);
                                             if(_loc6_ || param2)
                                             {
                                                §§push(-§§pop());
                                             }
                                             §§pop().§,S§(§§pop(),§§pop(),§§pop());
                                             loop8:
                                             while(!(_loc7_ && param1))
                                             {
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   §§push(param2 + 3);
                                                   §§push(_loc4_);
                                                   if(_loc6_ || param3)
                                                   {
                                                      §§push(-§§pop());
                                                   }
                                                   §§push(_loc5_);
                                                   if(_loc6_ || param1)
                                                   {
                                                      §§push(-§§pop());
                                                   }
                                                   §§pop().§,S§(§§pop(),§§pop(),§§pop());
                                                   if(_loc6_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   continue loop8;
                                                }
                                                return;
                                             }
                                          }
                                       }
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                        }
                     }
                  }
                  throw new ArgumentError("Textures with a frame can only be used on quads");
               }
            }
            §§goto(addr74);
         }
         §§goto(addr111);
      }
      
      public function get frame() : Rectangle
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            return !!this.§[";§ ? this.§[";§.clone() : new Rectangle(0,0,this.width,this.height);
         }
         §§goto(addr32);
      }
      
      public function get clipping() : Rectangle
      {
         return new Rectangle(0,0,this.width,this.height);
      }
      
      public function get repeat() : Boolean
      {
         return this.§@'§;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§@'§ = param1;
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
      
      public function get root() : §<5§.Texture
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
      
      public function get parent() : §<5§.Texture
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
