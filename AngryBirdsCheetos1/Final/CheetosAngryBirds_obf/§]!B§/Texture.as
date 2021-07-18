package §]!B§
{
   import §;! §.§?!T§;
   import §;! §.getNextPowerOfTwo;
   import §=!S§.§3[§;
   import §=!S§.§]!G§;
   import §`C§.§9!'§;
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
       
      
      private var §#!;§:Rectangle;
      
      private var §+W§:Boolean;
      
      public function Texture()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
            while(true)
            {
               if(getQualifiedClassName(this) != "starling.textures::Texture")
               {
                  loop1:
                  while(true)
                  {
                     this.§+W§ = false;
                     if(_loc2_ || _loc1_)
                     {
                        break;
                     }
                     addr74:
                     while(true)
                     {
                        continue loop1;
                     }
                  }
                  if(_loc2_)
                  {
                     break;
                  }
               }
               if(!_loc1_)
               {
                  throw new §3[§();
               }
            }
            return;
         }
         §§goto(addr74);
      }
      
      public static function §0Z§(param1:Context3D, param2:Bitmap, param3:Boolean = true, param4:Boolean = false) : §]!B§.Texture
      {
         return §5C§(param1,param2.bitmapData,param3,param4);
      }
      
      public static function §5C§(param1:Context3D, param2:BitmapData, param3:Boolean = true, param4:Boolean = false) : §]!B§.Texture
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc9_:BitmapData = null;
         var _loc10_:§[8§ = null;
         var _loc11_:flash.display3D.textures.Texture = null;
         var _loc5_:int = param2.width;
         var _loc6_:int = param2.height;
         §§push(_loc5_);
         if(!_loc13_)
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
         if(!(_loc13_ && param2))
         {
            if(param1 != null)
            {
               if(!_loc13_)
               {
                  addr55:
                  §§push(int(getNextPowerOfTwo(param2.width)));
                  if(_loc12_)
                  {
                     _loc7_ = §§pop();
                     if(!(_loc13_ && param2))
                     {
                        addr75:
                        _loc8_ = int(getNextPowerOfTwo(param2.height));
                     }
                     _loc11_ = param1.createTexture(_loc7_,_loc8_,Context3DTextureFormat.BGRA,param4);
                     if(_loc12_)
                     {
                        §§push(_loc7_);
                        if(!(_loc13_ && param2))
                        {
                           §§push(_loc5_);
                           if(_loc12_)
                           {
                              §§push(§§pop() > §§pop());
                              if(_loc12_)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc12_ || param1)
                                    {
                                       addr110:
                                       §§pop();
                                       addr119:
                                       if(!_loc13_)
                                       {
                                          addr115:
                                          §§push(_loc8_ > _loc6_);
                                       }
                                       (_loc9_ = new BitmapData(_loc7_,_loc8_,true,0)).copyPixels(param2,param2.rect,new Point(0,0));
                                       param2 = _loc9_;
                                       uploadBitmapData(_loc11_,param2,param3);
                                       _loc10_ = new §[8§(_loc11_,_loc7_,_loc8_,param3,true,param4);
                                       if(!(_loc13_ && §]!B§.Texture))
                                       {
                                          §§push(§9!'§.§+!N§);
                                          loop0:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                if(_loc9_)
                                                {
                                                   addr250:
                                                   while(true)
                                                   {
                                                      _loc9_.dispose();
                                                      addr262:
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                   addr250:
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
                                                         if(!_loc13_)
                                                         {
                                                            if(!_loc12_)
                                                            {
                                                               break;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               loop6:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  addr244:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc6_);
                                                                     if(_loc13_ && param3)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(_loc8_);
                                                                     if(!_loc12_)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     §§push(§§pop() == §§pop());
                                                                     if(_loc12_ || param2)
                                                                     {
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                                  continue loop2;
                                                               }
                                                               addr243:
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc13_)
                                                                  {
                                                                     if(_loc12_)
                                                                     {
                                                                        if(_loc12_)
                                                                        {
                                                                           if(!_loc13_)
                                                                           {
                                                                              return _loc10_;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr250);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr244);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     if(_loc13_ && param3)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(_loc12_ || param2)
                                                                     {
                                                                        §§goto(addr172);
                                                                     }
                                                                     addr266:
                                                                     while(true)
                                                                     {
                                                                        _loc10_.§`b§(param2);
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                               }
                                                               addr172:
                                                               return new §#!§(_loc10_,new Rectangle(0,0,_loc5_,_loc6_),true);
                                                               §§goto(addr198);
                                                            }
                                                            §§goto(addr262);
                                                         }
                                                         §§goto(addr243);
                                                      }
                                                      continue loop0;
                                                   }
                                                }
                                             }
                                             §§goto(addr266);
                                          }
                                       }
                                       §§goto(addr250);
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc12_)
                                    {
                                    }
                                 }
                                 §§goto(addr119);
                              }
                              §§goto(addr110);
                           }
                        }
                        §§goto(addr115);
                     }
                     §§goto(addr110);
                  }
               }
               §§goto(addr75);
            }
            §§goto(addr110);
         }
         §§goto(addr55);
      }
      
      public static function §9!%§(param1:Context3D, param2:ByteArray) : §]!B§.Texture
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(!(_loc11_ && §]!B§.Texture))
         {
            if(param1 == null)
            {
               if(!_loc11_)
               {
                  §§goto(addr28);
               }
            }
            var _loc3_:String = String.fromCharCode(param2[0],param2[1],param2[2]);
            if(_loc10_ || §]!B§.Texture)
            {
               §§push(_loc3_);
               if(_loc10_)
               {
                  if(§§pop() == "ATF")
                  {
                     if(param2[6] == 2)
                     {
                        addr70:
                        §§push(Context3DTextureFormat.COMPRESSED);
                        if(!(_loc11_ && _loc3_))
                        {
                           addr90:
                        }
                        addr101:
                        §§push(§§pop());
                     }
                     else
                     {
                        §§push(Context3DTextureFormat.BGRA);
                        if(!(_loc11_ && param2))
                        {
                           §§goto(addr101);
                        }
                     }
                     var _loc4_:* = §§pop();
                     var _loc5_:int = Math.pow(2,param2[7]);
                     var _loc6_:int = Math.pow(2,param2[8]);
                     var _loc7_:int = param2[9];
                     var _loc8_:flash.display3D.textures.Texture = param1.createTexture(_loc5_,_loc6_,_loc4_,false);
                     if(!_loc11_)
                     {
                        uploadAtfData(_loc8_,param2);
                     }
                     var _loc9_:§[8§ = new §[8§(_loc8_,_loc5_,_loc6_,_loc7_ > 1,false);
                     if(!(_loc11_ && param1))
                     {
                        if(§9!'§.§+!N§)
                        {
                           if(!_loc11_)
                           {
                              _loc9_.§`b§(param2);
                           }
                        }
                     }
                     return _loc9_;
                  }
                  if(_loc10_)
                  {
                     §§goto(addr58);
                  }
                  §§goto(addr70);
               }
               §§goto(addr90);
            }
            addr58:
            throw new ArgumentError("Invalid ATF data");
         }
         addr28:
         throw new §]!G§();
      }
      
      public static function §%#§(param1:§]!B§.Texture, param2:Rectangle = null, param3:Rectangle = null) : §]!B§.Texture
      {
         var _loc4_:§]!B§.Texture;
         (_loc4_ = new §#!§(param1,param2)).§#!;§ = param3;
         return _loc4_;
      }
      
      public static function §!5§(param1:Context3D, param2:int = 64, param3:int = 64, param4:uint = 4.294967295E9, param5:Boolean = false) : §]!B§.Texture
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:BitmapData = new BitmapData(param2,param3,true,param4);
         var _loc7_:§]!B§.Texture = §5C§(param1,_loc6_,false,param5);
         if(_loc8_)
         {
            if(!§9!'§.§+!N§)
            {
               if(_loc8_)
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
            for(; param3; if(_loc11_ && param1)
            {
               continue;
            },§§goto(addr85),§§push(param2.width >> 1))
            {
               if(_loc10_ || param3)
               {
                  continue;
               }
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     §§push(param2.height >> 1);
                     addr55:
                     addr85:
                     while(_loc10_ || param2)
                     {
                        _loc5_ = §§pop();
                        while(true)
                        {
                           §§push(1);
                           if(_loc11_)
                           {
                              break;
                           }
                           _loc6_ = §§pop();
                           if(!_loc10_)
                           {
                              continue;
                           }
                           if(_loc11_ && param3)
                           {
                              break loop3;
                           }
                           while(false)
                           {
                              continue loop3;
                           }
                           _loc7_ = new BitmapData(_loc4_,_loc5_,true,0);
                           _loc8_ = new Matrix(0.5,0,0,0.5);
                           _loc9_ = new Rectangle();
                           loop7:
                           while(true)
                           {
                              §§push(_loc4_);
                              loop8:
                              while(_loc10_)
                              {
                                 §§push(1);
                                 loop9:
                                 for(; !_loc11_; §§push(1),if(_loc11_ && param3)
                                 {
                                    continue;
                                 },if(!(_loc11_ && param2))
                                 {
                                    §§push(§§pop() >= §§pop());
                                    if(!(_loc11_ && param2))
                                    {
                                       if(!_loc11_)
                                       {
                                          §§goto(addr156);
                                       }
                                       §§goto(addr195);
                                    }
                                    §§goto(addr197);
                                 },§§goto(addr224))
                                 {
                                    §§push(§§pop() >= §§pop());
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                          }
                                          addr197:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                _loc9_.width = _loc4_;
                                                break;
                                             }
                                             if(_loc10_ || param3)
                                             {
                                                if(_loc10_)
                                                {
                                                   if(!_loc11_)
                                                   {
                                                      if(!(_loc11_ && param2))
                                                      {
                                                         _loc7_.dispose();
                                                         addr178:
                                                         if(_loc10_ || param2)
                                                         {
                                                            if(true)
                                                            {
                                                               break loop0;
                                                            }
                                                            continue loop7;
                                                         }
                                                         addr198:
                                                         while(true)
                                                         {
                                                            §§push(_loc5_);
                                                            if(_loc11_ && param2)
                                                            {
                                                               break;
                                                            }
                                                            continue loop9;
                                                         }
                                                         continue loop8;
                                                      }
                                                      addr232:
                                                      if(_loc10_ || §]!B§.Texture)
                                                      {
                                                         if(!(_loc10_ || param1))
                                                         {
                                                            _loc7_.draw(param2,_loc8_,null,null,null,true);
                                                            param1.uploadFromBitmapData(_loc7_,_loc6_++);
                                                            addr282:
                                                            if(!(_loc11_ && §]!B§.Texture))
                                                            {
                                                               if(!_loc11_)
                                                               {
                                                                  if(!_loc11_)
                                                                  {
                                                                     _loc8_.scale(0.5,0.5);
                                                                     §§goto(addr232);
                                                                  }
                                                                  break;
                                                               }
                                                               _loc7_.fillRect(_loc9_,0);
                                                               §§goto(addr282);
                                                               addr297:
                                                            }
                                                            addr276:
                                                            §§goto(addr276);
                                                         }
                                                         addr225:
                                                         §§push(_loc4_);
                                                         if(_loc10_ || param2)
                                                         {
                                                            addr224:
                                                            §§push(§§pop() >> 1);
                                                         }
                                                         _loc4_ = §§pop();
                                                         §§push(_loc5_);
                                                         if(!_loc11_)
                                                         {
                                                            break loop9;
                                                         }
                                                         break loop8;
                                                         addr226:
                                                      }
                                                      §§goto(addr282);
                                                   }
                                                   §§goto(addr226);
                                                }
                                                addr213:
                                                continue loop7;
                                             }
                                             §§goto(addr178);
                                          }
                                          _loc9_.height = _loc5_;
                                          §§goto(addr297);
                                          addr156:
                                       }
                                       §§goto(addr198);
                                    }
                                 }
                                 §§push(§§pop() >> §§pop());
                                 break;
                              }
                              while(!(_loc10_ || param3))
                              {
                                 §§goto(addr225);
                              }
                              _loc5_ = §§pop();
                              §§goto(addr213);
                           }
                        }
                     }
                     while(true)
                     {
                        _loc4_ = §§pop();
                        break loop3;
                        §§goto(addr55);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr48);
      }
      
      static function uploadAtfData(param1:flash.display3D.textures.Texture, param2:ByteArray, param3:int = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            param1.uploadCompressedTextureFromByteArray(param2,param3);
         }
      }
      
      public function dispose() : void
      {
      }
      
      public function adjustVertexData(param1:§?!T§, param2:int, param3:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(_loc7_ || param3)
         {
            if(this.§#!;§)
            {
               if(_loc7_)
               {
                  if(param3 == 4)
                  {
                     loop0:
                     while(true)
                     {
                        §§push(this.§#!;§.width + this.§#!;§.x - this.width);
                        loop1:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           while(true)
                           {
                              _loc4_ = §§pop();
                              loop3:
                              while(true)
                              {
                                 §§push(this.§#!;§.height + this.§#!;§.y - this.height);
                                 if(_loc7_ || param1)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 if(_loc6_ && this)
                                 {
                                    continue loop1;
                                 }
                                 _loc5_ = §§pop();
                                 loop4:
                                 while(true)
                                 {
                                    param1.§^!%§(param2,-this.§#!;§.x,-this.§#!;§.y);
                                    do
                                    {
                                       §§push(param1);
                                       §§push(param2 + 1);
                                       §§push(_loc4_);
                                       if(_loc7_)
                                       {
                                          §§push(-§§pop());
                                       }
                                       §§pop().§^!%§(§§pop(),§§pop(),-this.§#!;§.y);
                                       while(true)
                                       {
                                          if(!_loc6_)
                                          {
                                             if(!_loc7_)
                                             {
                                                break;
                                             }
                                             §§push(param1);
                                             §§push(param2 + 2);
                                             §§push(-this.§#!;§.x);
                                             §§push(_loc5_);
                                             if(!_loc6_)
                                             {
                                                §§push(-§§pop());
                                             }
                                             §§pop().§^!%§(§§pop(),§§pop(),§§pop());
                                             continue;
                                          }
                                          continue loop4;
                                       }
                                       continue loop0;
                                    }
                                    while(_loc6_);
                                    
                                    if(!(_loc7_ || param2))
                                    {
                                       continue loop3;
                                    }
                                    if(!(_loc6_ && param2))
                                    {
                                       §§goto(addr29);
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
            addr29:
            return;
         }
         §§goto(addr206);
      }
      
      public function get §@+§() : Rectangle
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            return !!this.§#!;§ ? this.§#!;§.clone() : new Rectangle(0,0,this.width,this.height);
         }
         §§goto(addr37);
      }
      
      public function get clipping() : Rectangle
      {
         return new Rectangle(0,0,this.width,this.height);
      }
      
      public function get repeat() : Boolean
      {
         return this.§+W§;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§+W§ = param1;
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
      
      public function get root() : §]!B§.Texture
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
      
      public function get parent() : §]!B§.Texture
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
