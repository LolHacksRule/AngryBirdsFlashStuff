package §'_§
{
   import §"$§.Starling;
   import §@%§.§"m§;
   import §@%§.§-a§;
   import §@2§.VertexData;
   import §@2§.getNextPowerOfTwo;
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
       
      
      private var §^!N§:Rectangle;
      
      private var §^!8§:Boolean;
      
      public function Texture()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            while(getQualifiedClassName(this) != "starling.textures::Texture")
            {
               loop1:
               while(true)
               {
                  this.§^!8§ = false;
                  if(_loc2_)
                  {
                     break;
                  }
                  addr69:
                  while(true)
                  {
                     continue loop1;
                  }
               }
               if(!_loc2_)
               {
                  break;
               }
               if(!(_loc1_ && _loc1_))
               {
                  return;
               }
            }
            throw new §"m§();
         }
         §§goto(addr69);
      }
      
      public static function §3!R§(param1:Context3D, param2:Bitmap, param3:Boolean = true, param4:Boolean = false) : §'_§.Texture
      {
         return §?h§(param1,param2.bitmapData,param3,param4);
      }
      
      public static function §?h§(param1:Context3D, param2:BitmapData, param3:Boolean = true, param4:Boolean = false) : §'_§.Texture
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc9_:BitmapData = null;
         var _loc10_:ConcreteTexture = null;
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
         if(!(_loc13_ && param1))
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
                  addr60:
                  §§push(int(getNextPowerOfTwo(param2.width)));
                  if(_loc12_ || param2)
                  {
                     _loc7_ = §§pop();
                     addr86:
                     if(_loc12_ || param2)
                     {
                        §§push(int(getNextPowerOfTwo(param2.height)));
                     }
                     _loc11_ = param1.createTexture(_loc7_,_loc8_,Context3DTextureFormat.BGRA,param4);
                     if(!_loc13_)
                     {
                        §§push(_loc7_);
                        if(!_loc13_)
                        {
                           §§push(_loc5_);
                           if(_loc12_ || param1)
                           {
                              §§push(§§pop() > §§pop());
                              if(!(_loc13_ && §'_§.Texture))
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!(_loc13_ && param1))
                                 {
                                    addr125:
                                    §§push(§§pop());
                                    if(_loc12_ || param3)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(!§§pop())
                                    {
                                       if(!(_loc13_ && param2))
                                       {
                                          §§pop();
                                          §§goto(addr169);
                                       }
                                       §§goto(addr150);
                                    }
                                    if(§§pop())
                                    {
                                       if(!(_loc13_ && §'_§.Texture))
                                       {
                                          addr169:
                                          if(!_loc13_)
                                          {
                                             addr147:
                                             §§push(_loc8_ > _loc6_);
                                             if(_loc12_)
                                             {
                                                addr150:
                                                §§push(Boolean(§§pop()));
                                             }
                                          }
                                          _loc9_ = new BitmapData(_loc7_,_loc8_,true,0);
                                          if(_loc12_ || param2)
                                          {
                                             _loc9_.copyPixels(param2,param2.rect,new Point(0,0));
                                          }
                                          param2 = _loc9_;
                                          addr197:
                                          uploadBitmapData(_loc11_,param2,param3);
                                          §§goto(addr203);
                                       }
                                       addr203:
                                       _loc10_ = new ConcreteTexture(_loc11_,_loc7_,_loc8_,param3,true,param4);
                                       if(!(_loc13_ && §'_§.Texture))
                                       {
                                          §§push(Starling.§6_§);
                                          loop0:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                §§push(Boolean(_loc9_));
                                                continue;
                                             }
                                             loop11:
                                             while(true)
                                             {
                                                _loc10_.§&!`§(param2);
                                                loop4:
                                                while(true)
                                                {
                                                   addr293:
                                                   loop5:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_);
                                                      loop6:
                                                      while(true)
                                                      {
                                                         §§push(_loc7_);
                                                         addr296:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(_loc12_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               if(_loc12_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!_loc13_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  if(!§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           §§goto(addr221);
                                                                        }
                                                                        if(_loc12_ || param3)
                                                                        {
                                                                           return _loc10_;
                                                                        }
                                                                        if(!(_loc13_ && param3))
                                                                        {
                                                                           if(!_loc13_)
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                        addr258:
                                                                        if(!(_loc13_ && param3))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                                  addr307:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                  }
                                                                  addr307:
                                                                  while(true)
                                                                  {
                                                                     if(_loc12_ || param2)
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                     addr339:
                                                                     while(true)
                                                                     {
                                                                        if(_loc12_)
                                                                        {
                                                                           _loc9_.dispose();
                                                                           continue loop5;
                                                                        }
                                                                        continue loop11;
                                                                     }
                                                                     §§goto(addr307);
                                                                  }
                                                                  continue loop6;
                                                               }
                                                            }
                                                            §§goto(addr307);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       addr221:
                                       return new §=w§(_loc10_,new Rectangle(0,0,_loc5_,_loc6_),true);
                                    }
                                    §§goto(addr197);
                                 }
                                 §§goto(addr150);
                              }
                              §§goto(addr125);
                           }
                        }
                        §§goto(addr147);
                     }
                     §§goto(addr169);
                  }
                  _loc8_ = §§pop();
               }
               §§goto(addr86);
            }
            §§goto(addr169);
         }
         §§goto(addr60);
      }
      
      public static function §;!F§(param1:Context3D, param2:ByteArray) : §'_§.Texture
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(!_loc10_)
         {
            if(param1 == null)
            {
               if(!(_loc10_ && _loc3_))
               {
                  throw new §-a§();
               }
            }
         }
         var _loc3_:String = String.fromCharCode(param2[0],param2[1],param2[2]);
         if(!_loc10_)
         {
            §§push(_loc3_);
            if(!(_loc10_ && param2))
            {
               if(§§pop() == "ATF")
               {
                  if(param2[6] == 2)
                  {
                     addr77:
                     §§goto(addr106);
                  }
                  else
                  {
                     §§push(Context3DTextureFormat.BGRA);
                     if(_loc11_ || _loc3_)
                     {
                        §§goto(addr105);
                     }
                  }
                  addr106:
                  §§push(Context3DTextureFormat.COMPRESSED);
                  if(!_loc10_)
                  {
                     addr105:
                     §§push(§§pop());
                  }
                  var _loc4_:* = §§pop();
                  var _loc5_:int = Math.pow(2,param2[7]);
                  var _loc6_:int = Math.pow(2,param2[8]);
                  var _loc7_:int = param2[9];
                  var _loc8_:flash.display3D.textures.Texture = param1.createTexture(_loc5_,_loc6_,_loc4_,false);
                  if(_loc11_)
                  {
                     uploadAtfData(_loc8_,param2);
                  }
                  var _loc9_:ConcreteTexture = new ConcreteTexture(_loc8_,_loc5_,_loc6_,_loc7_ > 1,false);
                  if(!(_loc10_ && _loc3_))
                  {
                     if(Starling.§6_§)
                     {
                        if(!_loc10_)
                        {
                           _loc9_.§&!`§(param2);
                        }
                     }
                  }
                  return _loc9_;
               }
               if(_loc11_)
               {
                  throw new ArgumentError("Invalid ATF data");
               }
               §§goto(addr77);
               §§goto(addr77);
            }
            §§goto(addr105);
         }
         §§goto(addr77);
      }
      
      public static function §=!C§(param1:§'_§.Texture, param2:Rectangle = null, param3:Rectangle = null) : §'_§.Texture
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§'_§.Texture = new §=w§(param1,param2);
         if(!(_loc5_ && param3))
         {
            _loc4_.§^!N§ = param3;
         }
         return _loc4_;
      }
      
      public static function §,!b§(param1:Context3D, param2:int = 64, param3:int = 64, param4:uint = 4.294967295E9, param5:Boolean = false) : §'_§.Texture
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:BitmapData = new BitmapData(param2,param3,true,param4);
         var _loc7_:§'_§.Texture = §?h§(param1,_loc6_,false,param5);
         if(_loc8_ || param2)
         {
            §§push(Starling.§6_§);
            if(_loc8_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(!_loc9_)
               {
                  addr68:
                  _loc6_.dispose();
               }
            }
            return _loc7_;
         }
         §§goto(addr68);
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
         if(!_loc10_)
         {
            param1.uploadFromBitmapData(param2);
            loop0:
            for(; param3; if(_loc10_ && param3)
            {
               continue;
            })
            {
               if(_loc11_)
               {
                  continue;
               }
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §§push(param2.height >> 1);
                     loop3:
                     while(true)
                     {
                        §§push(int(§§pop()));
                        loop4:
                        while(true)
                        {
                           _loc5_ = §§pop();
                           loop5:
                           while(true)
                           {
                              §§push(1);
                              if(!_loc10_)
                              {
                                 if(_loc10_)
                                 {
                                    continue loop4;
                                 }
                                 if(_loc11_ || param2)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       break loop5;
                                    }
                                    addr89:
                                 }
                              }
                              if(!(_loc11_ || param3))
                              {
                                 continue loop3;
                              }
                              if(_loc10_)
                              {
                                 break;
                              }
                              _loc6_ = §§pop();
                              if(_loc10_)
                              {
                                 continue;
                              }
                              if(!_loc11_)
                              {
                                 continue loop1;
                              }
                              if(false)
                              {
                                 continue loop2;
                              }
                              _loc7_ = new BitmapData(_loc4_,_loc5_,true,0);
                              _loc8_ = new Matrix(0.5,0,0,0.5);
                              _loc9_ = new Rectangle();
                              addr208:
                              §§push(_loc4_);
                              §§push(1);
                              if(_loc11_ || param2)
                              {
                                 addr219:
                                 §§push(Boolean(§§pop() >= §§pop()));
                                 §§push(Boolean(§§pop() >= §§pop()));
                                 if(_loc11_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(!§§pop())
                                 {
                                    addr225:
                                    §§pop();
                                    addr226:
                                    if(_loc11_)
                                    {
                                       if(_loc11_ || param3)
                                       {
                                          §§push(_loc5_);
                                          if(!_loc10_)
                                          {
                                             if(!(_loc10_ && param2))
                                             {
                                                if(_loc11_ || §'_§.Texture)
                                                {
                                                   if(_loc11_)
                                                   {
                                                      §§push(1);
                                                      if(!(_loc10_ && param1))
                                                      {
                                                         §§push(§§pop() >= §§pop());
                                                         if(!_loc10_)
                                                         {
                                                            if(!(_loc10_ && §'_§.Texture))
                                                            {
                                                               addr167:
                                                               §§push(Boolean(§§pop()));
                                                               if(!_loc10_)
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr171:
                                                                     if(!§§pop())
                                                                     {
                                                                        if(_loc11_ || param3)
                                                                        {
                                                                           if(!(_loc10_ && param1))
                                                                           {
                                                                              if(!_loc10_)
                                                                              {
                                                                                 if(!(_loc10_ && param3))
                                                                                 {
                                                                                    _loc7_.dispose();
                                                                                    addr199:
                                                                                    if(_loc11_ || param2)
                                                                                    {
                                                                                       if(false)
                                                                                       {
                                                                                          §§goto(addr208);
                                                                                       }
                                                                                       break loop0;
                                                                                    }
                                                                                    addr258:
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       §§goto(addr208);
                                                                                    }
                                                                                    §§push(_loc5_);
                                                                                    if(!(_loc10_ && §'_§.Texture))
                                                                                    {
                                                                                       addr246:
                                                                                       §§push(1);
                                                                                       if(_loc11_ || param1)
                                                                                       {
                                                                                          §§push(§§pop() >> §§pop());
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             addr257:
                                                                                             _loc5_ = int(§§pop());
                                                                                             §§goto(addr258);
                                                                                          }
                                                                                          §§goto(addr257);
                                                                                       }
                                                                                       addr271:
                                                                                       §§push(§§pop() >> §§pop());
                                                                                    }
                                                                                    _loc4_ = int(§§pop());
                                                                                    addr274:
                                                                                    §§goto(addr274);
                                                                                 }
                                                                                 _loc7_.fillRect(_loc9_,0);
                                                                                 addr334:
                                                                              }
                                                                              _loc7_.draw(param2,_loc8_,null,null,null,true);
                                                                              param1.uploadFromBitmapData(_loc7_,_loc6_++);
                                                                              _loc8_.scale(0.5,0.5);
                                                                              addr281:
                                                                              if(!(_loc10_ && §'_§.Texture))
                                                                              {
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    if(!(_loc10_ && param1))
                                                                                    {
                                                                                       §§goto(addr271);
                                                                                       §§push(1);
                                                                                    }
                                                                                    §§goto(addr258);
                                                                                 }
                                                                                 _loc9_.height = _loc5_;
                                                                                 §§goto(addr334);
                                                                                 addr340:
                                                                              }
                                                                              addr322:
                                                                              §§goto(addr322);
                                                                              addr311:
                                                                           }
                                                                           §§goto(addr226);
                                                                        }
                                                                        §§goto(addr199);
                                                                     }
                                                                     _loc9_.width = _loc4_;
                                                                     §§goto(addr340);
                                                                  }
                                                               }
                                                               §§goto(addr219);
                                                            }
                                                            §§goto(addr225);
                                                         }
                                                         §§goto(addr167);
                                                      }
                                                      §§goto(addr208);
                                                   }
                                                }
                                                §§goto(addr199);
                                             }
                                             §§goto(addr257);
                                          }
                                          §§goto(addr208);
                                       }
                                       §§goto(addr311);
                                    }
                                    §§goto(addr281);
                                 }
                                 §§goto(addr171);
                              }
                              §§goto(addr246);
                           }
                           while(true)
                           {
                              _loc4_ = §§pop();
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr89);
         §§push(param2.width >> 1);
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
      
      public function adjustVertexData(param1:VertexData, param2:int, param3:int) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(_loc6_ || param3)
         {
            if(this.§^!N§)
            {
               loop0:
               while(true)
               {
                  if(param3 != 4)
                  {
                     if(_loc6_ || param2)
                     {
                        break;
                     }
                     while(true)
                     {
                        addr82:
                        if(!(_loc7_ && param1))
                        {
                           if(_loc6_)
                           {
                              §§push(param1);
                              §§push(param2 + 3);
                              §§push(_loc4_);
                              if(_loc6_ || param1)
                              {
                                 §§push(-§§pop());
                              }
                              §§push(_loc5_);
                              if(_loc6_)
                              {
                                 §§push(-§§pop());
                              }
                              §§pop().§^!j§(§§pop(),§§pop(),§§pop());
                              addr91:
                              if(!(_loc7_ && param2))
                              {
                                 return;
                              }
                              loop9:
                              while(true)
                              {
                                 if(_loc6_)
                                 {
                                    §§goto(addr82);
                                 }
                                 else
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       if(!(_loc7_ && param2))
                                       {
                                          if(!(_loc6_ || param1))
                                          {
                                             break;
                                          }
                                          §§push(param1);
                                          §§push(param2 + 2);
                                          §§push(-this.§^!N§.x);
                                          §§push(_loc5_);
                                          if(_loc6_ || param3)
                                          {
                                             §§push(-§§pop());
                                          }
                                          §§pop().§^!j§(§§pop(),§§pop(),§§pop());
                                          continue loop9;
                                       }
                                       addr145:
                                       addr172:
                                       while(!_loc7_)
                                       {
                                          §§push(param1);
                                          §§push(param2 + 1);
                                          §§push(_loc4_);
                                          if(!_loc7_)
                                          {
                                             §§push(-§§pop());
                                          }
                                          §§pop().§^!j§(§§pop(),§§pop(),-this.§^!N§.y);
                                          continue loop8;
                                       }
                                       while(true)
                                       {
                                          param1.§^!j§(param2,-this.§^!N§.x,-this.§^!N§.y);
                                          §§goto(addr145);
                                       }
                                    }
                                    loop5:
                                    while(true)
                                    {
                                       §§push(this.§^!N§.height + this.§^!N§.y - this.height);
                                       if(_loc6_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       if(!_loc7_)
                                       {
                                          addr164:
                                          if(!(_loc7_ && this))
                                          {
                                             _loc5_ = §§pop();
                                             §§goto(addr172);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                break loop5;
                                                §§goto(addr164);
                                             }
                                             addr194:
                                          }
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       _loc4_ = §§pop();
                                       §§goto(addr196);
                                    }
                                    addr196:
                                 }
                              }
                              addr28:
                           }
                           continue loop0;
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr194);
                  }
               }
               §§goto(addr211);
            }
            §§goto(addr28);
         }
         addr211:
         throw new ArgumentError("Textures with a frame can only be used on quads");
      }
      
      public function get frame() : Rectangle
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            return Boolean(this.§^!N§) ? this.§^!N§.clone() : new Rectangle(0,0,this.width,this.height);
         }
         §§goto(addr33);
      }
      
      public function get clipping() : Rectangle
      {
         return new Rectangle(0,0,this.width,this.height);
      }
      
      public function get repeat() : Boolean
      {
         return this.§^!8§;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§^!8§ = param1;
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
      
      public function get root() : §'_§.Texture
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
      
      public function get parent() : §'_§.Texture
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
