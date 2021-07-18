package §&v§
{
   import §&#H§.§3#J§;
   import §;8§.§'#]§;
   import §;8§.§["T§;
   import §=]§.§%"G§;
   import §=]§.getNextPowerOfTwo;
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
       
      
      private var §7m§:Rectangle;
      
      private var §>"N§:Boolean;
      
      public function Texture()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            while(getQualifiedClassName(this) != "starling.textures::Texture")
            {
               do
               {
                  this.§>"N§ = false;
               }
               while(!(_loc2_ || _loc2_));
               
               if(!_loc2_)
               {
                  break;
               }
               if(!_loc1_)
               {
                  return;
               }
            }
         }
         throw new §["T§();
      }
      
      public static function §`"J§(param1:Context3D, param2:Bitmap, param3:Boolean = true, param4:Boolean = false) : §&v§.Texture
      {
         return §-#X§(param1,param2.bitmapData,param3,param4);
      }
      
      public static function §-#X§(param1:Context3D, param2:BitmapData, param3:Boolean = true, param4:Boolean = false) : §&v§.Texture
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc9_:BitmapData = null;
         var _loc10_:§8"s§ = null;
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
         if(!(_loc12_ && param3))
         {
            §§push(int(§§pop()));
         }
         var _loc8_:* = §§pop();
         if(!_loc12_)
         {
            if(param1 != null)
            {
               if(!_loc12_)
               {
                  addr56:
                  §§push(int(getNextPowerOfTwo(param2.width)));
                  if(!_loc12_)
                  {
                     _loc7_ = §§pop();
                     addr72:
                     if(!_loc12_)
                     {
                        §§push(int(getNextPowerOfTwo(param2.height)));
                     }
                     _loc11_ = param1.createTexture(_loc7_,_loc8_,Context3DTextureFormat.BGRA,param4);
                     if(!(_loc12_ && param1))
                     {
                        §§push(_loc7_);
                        if(_loc13_)
                        {
                           §§push(_loc5_);
                           if(!(_loc12_ && param3))
                           {
                              §§push(§§pop() > §§pop());
                              if(!(_loc12_ && param3))
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc13_)
                                    {
                                       addr111:
                                       §§pop();
                                       if(!_loc12_)
                                       {
                                          addr117:
                                          addr116:
                                          addr115:
                                          addr114:
                                          if(_loc8_ > _loc6_)
                                          {
                                             if(!_loc12_)
                                             {
                                                addr130:
                                                (_loc9_ = new BitmapData(_loc7_,_loc8_,true,0)).copyPixels(param2,param2.rect,new Point(0,0));
                                                param2 = _loc9_;
                                             }
                                             addr155:
                                             _loc10_ = new §8"s§(_loc11_,_loc7_,_loc8_,param3,true,param4);
                                             if(_loc13_)
                                             {
                                                §§push(§3#J§.§0§);
                                                loop0:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         addr246:
                                                         while(true)
                                                         {
                                                            _loc9_.dispose();
                                                            addr258:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                         addr246:
                                                      }
                                                      loop1:
                                                      while(true)
                                                      {
                                                         §§push(_loc5_);
                                                         loop2:
                                                         while(true)
                                                         {
                                                            §§push(_loc7_);
                                                            loop3:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               if(!_loc12_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               addr239:
                                                               loop6:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  loop5:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc6_);
                                                                     if(!_loc13_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(_loc8_);
                                                                     if(!(_loc13_ || param1))
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     §§push(§§pop() == §§pop());
                                                                     if(!_loc13_)
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                     loop4:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!_loc12_)
                                                                           {
                                                                              if(_loc13_)
                                                                              {
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    return _loc10_;
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              continue loop5;
                                                                           }
                                                                           if(_loc13_ || §&v§.Texture)
                                                                           {
                                                                              if(_loc13_ || param1)
                                                                              {
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    §§goto(addr168);
                                                                                 }
                                                                                 addr262:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc10_.§<#;§(param2);
                                                                                    break loop4;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr246);
                                                                              }
                                                                           }
                                                                           §§goto(addr258);
                                                                        }
                                                                        addr168:
                                                                        return new §]O§(_loc10_,new Rectangle(0,0,_loc5_,_loc6_),true);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                  }
                                                                  continue loop2;
                                                               }
                                                            }
                                                            continue loop0;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr262);
                                                }
                                             }
                                             §§goto(addr246);
                                          }
                                          uploadBitmapData(_loc11_,param2,param3);
                                          §§goto(addr155);
                                       }
                                       §§goto(addr130);
                                    }
                                 }
                                 §§goto(addr117);
                              }
                              §§goto(addr111);
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr115);
                     }
                     §§goto(addr114);
                  }
                  _loc8_ = §§pop();
               }
               §§goto(addr72);
            }
            §§goto(addr155);
         }
         §§goto(addr56);
      }
      
      public static function §8#^§(param1:Context3D, param2:ByteArray) : §&v§.Texture
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(!(_loc11_ && param1))
         {
            if(param1 == null)
            {
               if(!(_loc11_ && param1))
               {
                  throw new §'#]§();
               }
            }
         }
         var _loc3_:String = String.fromCharCode(param2[0],param2[1],param2[2]);
         if(!(_loc11_ && param1))
         {
            §§push(_loc3_);
            if(_loc10_)
            {
               if(§§pop() != "ATF")
               {
                  if(!(_loc11_ && _loc3_))
                  {
                     throw new ArgumentError("Invalid ATF data");
                  }
                  §§goto(addr95);
               }
               else
               {
                  if(param2[6] == 2)
                  {
                     addr95:
                     §§push(Context3DTextureFormat.COMPRESSED);
                     if(!_loc11_)
                     {
                        addr100:
                     }
                     addr107:
                     var _loc4_:String = §§pop();
                     var _loc5_:int = Math.pow(2,param2[7]);
                     var _loc6_:int = Math.pow(2,param2[8]);
                     var _loc7_:int = param2[9];
                     var _loc8_:flash.display3D.textures.Texture = param1.createTexture(_loc5_,_loc6_,_loc4_,false);
                     §§goto(addr106);
                  }
                  else
                  {
                     §§push(Context3DTextureFormat.BGRA);
                     if(!_loc11_)
                     {
                        addr106:
                        if(_loc10_ || param2)
                        {
                           uploadAtfData(_loc8_,param2);
                        }
                        var _loc9_:§8"s§ = new §8"s§(_loc8_,_loc5_,_loc6_,_loc7_ > 1,false);
                        if(!(_loc11_ && param2))
                        {
                           if(§3#J§.§0§)
                           {
                              if(!_loc11_)
                              {
                                 _loc9_.§<#;§(param2);
                              }
                           }
                        }
                        return _loc9_;
                     }
                  }
                  §§goto(addr107);
               }
               §§goto(addr95);
            }
            §§goto(addr100);
         }
         §§goto(addr95);
      }
      
      public static function §+"L§(param1:§&v§.Texture, param2:Rectangle = null, param3:Rectangle = null) : §&v§.Texture
      {
         var _loc4_:§&v§.Texture;
         (_loc4_ = new §]O§(param1,param2)).§7m§ = param3;
         return _loc4_;
      }
      
      public static function §+p§(param1:Context3D, param2:int = 64, param3:int = 64, param4:uint = 4.294967295E9, param5:Boolean = false) : §&v§.Texture
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:BitmapData = new BitmapData(param2,param3,true,param4);
         var _loc7_:§&v§.Texture = §-#X§(param1,_loc6_,false,param5);
         if(_loc8_)
         {
            if(!§3#J§.§0§)
            {
               if(_loc8_ || §&v§.Texture)
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
         if(!(_loc11_ && param2))
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
                     while(true)
                     {
                        if(_loc10_)
                        {
                           loop4:
                           while(true)
                           {
                              §§push(param2.height >> 1);
                              while(!_loc11_)
                              {
                                 _loc5_ = §§pop();
                                 while(true)
                                 {
                                    §§push(1);
                                    if(!(_loc10_ || param3))
                                    {
                                       break;
                                    }
                                    _loc6_ = §§pop();
                                    if(!(_loc10_ || param3))
                                    {
                                       continue;
                                    }
                                    if(_loc11_)
                                    {
                                       break loop4;
                                    }
                                    if(!_loc10_)
                                    {
                                       continue loop1;
                                    }
                                    if(false)
                                    {
                                       continue loop4;
                                    }
                                    _loc7_ = new BitmapData(_loc4_,_loc5_,true,0);
                                    _loc8_ = new Matrix(0.5,0,0,0.5);
                                    _loc9_ = new Rectangle();
                                    addr170:
                                    §§push(_loc4_);
                                    if(_loc10_ || param2)
                                    {
                                       addr180:
                                       §§push(§§pop() >= 1);
                                       if(_loc10_)
                                       {
                                          if(!§§pop())
                                          {
                                             addr185:
                                             §§pop();
                                             addr186:
                                             if(!_loc11_)
                                             {
                                                §§push(_loc5_);
                                                if(_loc10_ || §&v§.Texture)
                                                {
                                                   if(!(_loc11_ && §&v§.Texture))
                                                   {
                                                      §§push(1);
                                                      if(!(_loc11_ && param1))
                                                      {
                                                         if(!_loc11_)
                                                         {
                                                            §§push(§§pop() >= §§pop());
                                                            if(_loc10_)
                                                            {
                                                               addr136:
                                                               if(!§§pop())
                                                               {
                                                                  if(!_loc11_)
                                                                  {
                                                                     if(!(_loc11_ && §&v§.Texture))
                                                                     {
                                                                        if(!_loc11_)
                                                                        {
                                                                           _loc7_.dispose();
                                                                           addr161:
                                                                           if(_loc10_ || param2)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr170);
                                                                              }
                                                                              break loop0;
                                                                           }
                                                                           §§goto(addr186);
                                                                        }
                                                                        addr218:
                                                                        if(_loc10_ || param3)
                                                                        {
                                                                           if(!(_loc11_ && param3))
                                                                           {
                                                                              addr192:
                                                                              §§push(_loc5_);
                                                                              §§push(1);
                                                                              if(_loc10_ || §&v§.Texture)
                                                                              {
                                                                                 addr200:
                                                                                 §§push(§§pop() >> §§pop());
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    if(_loc10_ || param1)
                                                                                    {
                                                                                       _loc5_ = §§pop();
                                                                                       addr210:
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          §§goto(addr170);
                                                                                       }
                                                                                       _loc7_.fillRect(_loc9_,0);
                                                                                       _loc7_.draw(param2,_loc8_,null,null,null,true);
                                                                                       param1.uploadFromBitmapData(_loc7_,_loc6_++);
                                                                                       addr292:
                                                                                       if(!(_loc11_ && param1))
                                                                                       {
                                                                                          _loc8_.scale(0.5,0.5);
                                                                                          addr238:
                                                                                          if(!(_loc11_ && param1))
                                                                                          {
                                                                                             addr217:
                                                                                             _loc4_ >>= 1;
                                                                                             addr215:
                                                                                             §§goto(addr218);
                                                                                          }
                                                                                          _loc9_.height = _loc5_;
                                                                                          §§goto(addr292);
                                                                                          addr298:
                                                                                       }
                                                                                       addr277:
                                                                                       §§goto(addr277);
                                                                                       addr271:
                                                                                    }
                                                                                    §§goto(addr215);
                                                                                 }
                                                                              }
                                                                              §§goto(addr217);
                                                                           }
                                                                           §§goto(addr271);
                                                                        }
                                                                        §§goto(addr238);
                                                                     }
                                                                     §§goto(addr210);
                                                                  }
                                                                  §§goto(addr161);
                                                               }
                                                               _loc9_.width = _loc4_;
                                                               §§goto(addr298);
                                                            }
                                                            §§goto(addr185);
                                                         }
                                                         §§goto(addr192);
                                                      }
                                                      §§goto(addr180);
                                                   }
                                                   §§goto(addr192);
                                                }
                                                §§goto(addr170);
                                             }
                                             §§goto(addr210);
                                          }
                                          §§goto(addr136);
                                       }
                                       §§goto(addr185);
                                    }
                                    §§goto(addr200);
                                 }
                              }
                              continue loop2;
                           }
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr74);
      }
      
      static function uploadAtfData(param1:flash.display3D.textures.Texture, param2:ByteArray, param3:int = 0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            param1.uploadCompressedTextureFromByteArray(param2,param3);
         }
      }
      
      public function dispose() : void
      {
      }
      
      public function adjustVertexData(param1:§%"G§, param2:int, param3:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(!(_loc6_ && param2))
         {
            if(this.§7m§)
            {
               loop0:
               while(true)
               {
                  if(param3 == 4)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(this.§7m§.width + this.§7m§.x - this.width);
                        loop2:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop3:
                           while(true)
                           {
                              _loc4_ = §§pop();
                              loop4:
                              while(true)
                              {
                                 if(!_loc6_)
                                 {
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                    §§push(this.§7m§.height + this.§7m§.y - this.height);
                                    if(_loc7_ || param1)
                                    {
                                       if(_loc6_ && param2)
                                       {
                                          continue loop3;
                                       }
                                       §§push(Number(§§pop()));
                                    }
                                    if(_loc6_)
                                    {
                                       continue loop2;
                                    }
                                    _loc5_ = §§pop();
                                    loop5:
                                    while(true)
                                    {
                                       param1.§^!c§(param2,-this.§7m§.x,-this.§7m§.y);
                                       loop6:
                                       do
                                       {
                                          §§push(param1);
                                          §§push(param2 + 1);
                                          §§push(_loc4_);
                                          if(!_loc6_)
                                          {
                                             §§push(-§§pop());
                                          }
                                          §§pop().§^!c§(§§pop(),§§pop(),-this.§7m§.y);
                                          while(!_loc6_)
                                          {
                                             §§push(param1);
                                             §§push(param2 + 2);
                                             §§push(-this.§7m§.x);
                                             §§push(_loc5_);
                                             if(!_loc6_)
                                             {
                                                §§push(-§§pop());
                                             }
                                             §§pop().§^!c§(§§pop(),§§pop(),§§pop());
                                             while(!(_loc6_ && param3))
                                             {
                                                §§push(param1);
                                                §§push(param2 + 3);
                                                §§push(_loc4_);
                                                if(!_loc6_)
                                                {
                                                   §§push(-§§pop());
                                                }
                                                §§push(_loc5_);
                                                if(!_loc6_)
                                                {
                                                   §§push(-§§pop());
                                                }
                                                §§pop().§^!c§(§§pop(),§§pop(),§§pop());
                                                if(!(_loc6_ && param2))
                                                {
                                                   continue loop6;
                                                }
                                             }
                                          }
                                          continue loop5;
                                       }
                                       while(_loc6_ && param3);
                                       
                                       if(!(_loc6_ && param2))
                                       {
                                          if(!(_loc6_ && param1))
                                          {
                                             addr29:
                                             return;
                                             addr75:
                                          }
                                          continue loop1;
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
                  throw new ArgumentError("Textures with a frame can only be used on quads");
               }
            }
            §§goto(addr29);
         }
         §§goto(addr75);
      }
      
      public function get frame() : Rectangle
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            return !!this.§7m§ ? this.§7m§.clone() : new Rectangle(0,0,this.width,this.height);
         }
         §§goto(addr36);
      }
      
      public function get clipping() : Rectangle
      {
         return new Rectangle(0,0,this.width,this.height);
      }
      
      public function get repeat() : Boolean
      {
         return this.§>"N§;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§>"N§ = param1;
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
      
      public function get root() : §&v§.Texture
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
      
      public function get parent() : §&v§.Texture
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
