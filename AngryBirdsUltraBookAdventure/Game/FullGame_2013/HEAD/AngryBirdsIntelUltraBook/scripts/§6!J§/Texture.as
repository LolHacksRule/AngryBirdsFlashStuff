package §6!J§
{
   import §'7§.VertexData;
   import §'7§.getNextPowerOfTwo;
   import §+8§.§0K§;
   import §+8§.§<!a§;
   import §7!>§.Starling;
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
       
      
      private var §#!V§:Rectangle;
      
      private var §>!T§:Boolean;
      
      public function Texture()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
         while(getQualifiedClassName(this) != "starling.textures::Texture")
         {
            do
            {
               this.§>!T§ = false;
            }
            while(_loc2_ && _loc1_);
            
            if(!_loc1_)
            {
               break;
            }
            if(_loc1_ || this)
            {
               return;
            }
         }
         throw new §0K§();
      }
      
      public static function §'o§(param1:Context3D, param2:Bitmap, param3:Boolean = true, param4:Boolean = false) : §6!J§.Texture
      {
         return §2B§(param1,param2.bitmapData,param3,param4);
      }
      
      public static function §2B§(param1:Context3D, param2:BitmapData, param3:Boolean = true, param4:Boolean = false) : §6!J§.Texture
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc9_:BitmapData = null;
         var _loc10_:ConcreteTexture = null;
         var _loc11_:flash.display3D.textures.Texture = null;
         var _loc5_:int = param2.width;
         var _loc6_:int = param2.height;
         §§push(_loc5_);
         if(!(_loc13_ && param2))
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(_loc6_);
         if(!(_loc13_ && param2))
         {
            §§push(int(§§pop()));
         }
         var _loc8_:* = §§pop();
         if(_loc12_)
         {
            if(param1 != null)
            {
               if(!(_loc13_ && param1))
               {
                  addr65:
                  §§push(int(getNextPowerOfTwo(param2.width)));
                  if(_loc12_ || param2)
                  {
                     _loc7_ = §§pop();
                     if(!(_loc13_ && param1))
                     {
                        addr90:
                        _loc8_ = int(getNextPowerOfTwo(param2.height));
                     }
                     _loc11_ = param1.createTexture(_loc7_,_loc8_,Context3DTextureFormat.BGRA,param4);
                     if(_loc12_)
                     {
                        §§push(_loc7_);
                        if(_loc12_ || param3)
                        {
                           §§push(_loc5_);
                           if(_loc12_)
                           {
                              §§push(§§pop() > §§pop());
                              if(_loc12_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc12_)
                                 {
                                    §§push(§§pop());
                                    if(_loc12_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(!§§pop())
                                    {
                                       if(_loc12_ || param2)
                                       {
                                          §§pop();
                                          if(!(_loc13_ && param3))
                                          {
                                             addr142:
                                             §§push(_loc8_ > _loc6_);
                                             if(!_loc13_)
                                             {
                                                addr146:
                                                addr145:
                                                if(§§pop())
                                                {
                                                   if(!_loc13_)
                                                   {
                                                      addr149:
                                                      _loc9_ = new BitmapData(_loc7_,_loc8_,true,0);
                                                      if(_loc12_ || §6!J§.Texture)
                                                      {
                                                         _loc9_.copyPixels(param2,param2.rect,new Point(0,0));
                                                      }
                                                      param2 = _loc9_;
                                                   }
                                                   addr193:
                                                   _loc10_ = new ConcreteTexture(_loc11_,_loc7_,_loc8_,param3,true,param4);
                                                   if(!(_loc13_ && §6!J§.Texture))
                                                   {
                                                      §§push(Starling.§=!j§);
                                                      loop0:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               _loc10_.§!!>§(param2);
                                                               addr348:
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                            addr344:
                                                         }
                                                         else
                                                         {
                                                            §§push(Boolean(_loc9_));
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  addr334:
                                                                  while(true)
                                                                  {
                                                                     _loc9_.dispose();
                                                                     addr337:
                                                                     while(true)
                                                                     {
                                                                        if(_loc13_)
                                                                        {
                                                                           §§goto(addr348);
                                                                        }
                                                                     }
                                                                  }
                                                                  addr334:
                                                               }
                                                            }
                                                            addr333:
                                                         }
                                                         addr285:
                                                         while(true)
                                                         {
                                                            §§push(_loc5_);
                                                            addr287:
                                                            while(true)
                                                            {
                                                               §§push(_loc7_);
                                                               addr288:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  continue loop0;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr334);
                                                }
                                                uploadBitmapData(_loc11_,param2,param3);
                                                §§goto(addr193);
                                             }
                                             §§goto(addr146);
                                          }
                                          §§goto(addr149);
                                       }
                                    }
                                    §§goto(addr146);
                                 }
                                 §§goto(addr145);
                              }
                              §§goto(addr146);
                           }
                        }
                        §§goto(addr142);
                     }
                     §§goto(addr193);
                  }
               }
               §§goto(addr90);
            }
            §§goto(addr193);
         }
         §§goto(addr65);
      }
      
      public static function §&!%§(param1:Context3D, param2:ByteArray) : §6!J§.Texture
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(!(_loc11_ && _loc3_))
         {
            if(param1 == null)
            {
               if(!(_loc11_ && param2))
               {
                  throw new §<!a§();
               }
            }
         }
         var _loc3_:String = String.fromCharCode(param2[0],param2[1],param2[2]);
         if(!(_loc11_ && param2))
         {
            §§push(_loc3_);
            if(_loc10_ || param2)
            {
               if(§§pop() != "ATF")
               {
                  if(_loc10_)
                  {
                     §§goto(addr69);
                  }
               }
               if(param2[6] == 2)
               {
                  §§push(Context3DTextureFormat.COMPRESSED);
                  if(_loc11_)
                  {
                  }
                  addr104:
                  §§push(§§pop());
               }
               else
               {
                  §§push(Context3DTextureFormat.BGRA);
                  if(_loc10_)
                  {
                     §§goto(addr104);
                  }
               }
            }
            var _loc4_:* = §§pop();
            var _loc5_:int = Math.pow(2,param2[7]);
            var _loc6_:int = Math.pow(2,param2[8]);
            var _loc7_:int = param2[9];
            var _loc8_:flash.display3D.textures.Texture = param1.createTexture(_loc5_,_loc6_,_loc4_,false);
            if(_loc10_ || param2)
            {
               uploadAtfData(_loc8_,param2);
            }
            var _loc9_:ConcreteTexture = new ConcreteTexture(_loc8_,_loc5_,_loc6_,_loc7_ > 1,false);
            if(_loc10_ || param1)
            {
               if(Starling.§=!j§)
               {
                  if(!(_loc11_ && param1))
                  {
                     _loc9_.§!!>§(param2);
                  }
               }
            }
            return _loc9_;
         }
         addr69:
         throw new ArgumentError("Invalid ATF data");
      }
      
      public static function §=!e§(param1:§6!J§.Texture, param2:Rectangle = null, param3:Rectangle = null) : §6!J§.Texture
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§6!J§.Texture = new §"!]§(param1,param2);
         if(!(_loc6_ && param3))
         {
            _loc4_.§#!V§ = param3;
         }
         return _loc4_;
      }
      
      public static function §0%§(param1:Context3D, param2:int = 64, param3:int = 64, param4:uint = 4.294967295E9, param5:Boolean = false) : §6!J§.Texture
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:BitmapData = new BitmapData(param2,param3,true,param4);
         var _loc7_:§6!J§.Texture = §2B§(param1,_loc6_,false,param5);
         if(!(_loc8_ && param3))
         {
            §§push(Starling.§=!j§);
            if(!(_loc8_ && §6!J§.Texture))
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(_loc9_ || §6!J§.Texture)
               {
                  addr79:
                  _loc6_.dispose();
               }
            }
            return _loc7_;
         }
         §§goto(addr79);
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
         }
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
                  §§push(int(§§pop()));
                  loop3:
                  while(true)
                  {
                     _loc4_ = §§pop();
                     while(_loc11_)
                     {
                        loop5:
                        while(true)
                        {
                           §§push(param2.height >> 1);
                           if(_loc11_ || param3)
                           {
                              §§push(int(§§pop()));
                           }
                           loop6:
                           while(_loc11_)
                           {
                              _loc5_ = §§pop();
                              while(true)
                              {
                                 §§push(1);
                                 if(!_loc10_)
                                 {
                                    if(!_loc11_)
                                    {
                                       break;
                                    }
                                    §§push(int(§§pop()));
                                 }
                                 continue loop6;
                                 addr49:
                                 _loc6_ = §§pop();
                                 if(_loc10_ && param2)
                                 {
                                    continue;
                                 }
                                 if(_loc10_ && param1)
                                 {
                                    break loop5;
                                 }
                                 if(_loc10_)
                                 {
                                    continue loop1;
                                 }
                                 if(false)
                                 {
                                    continue loop5;
                                 }
                                 _loc7_ = new BitmapData(_loc4_,_loc5_,true,0);
                                 _loc8_ = new Matrix(0.5,0,0,0.5);
                                 _loc9_ = new Rectangle();
                                 addr206:
                                 §§push(_loc4_);
                                 §§push(1);
                                 if(_loc11_)
                                 {
                                    addr213:
                                    §§push(Boolean(§§pop() >= §§pop()));
                                    §§push(Boolean(§§pop() >= §§pop()));
                                    if(!_loc10_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(!§§pop())
                                    {
                                       addr218:
                                       §§pop();
                                       addr219:
                                       if(_loc11_ || param2)
                                       {
                                          §§push(_loc5_);
                                          if(_loc11_)
                                          {
                                             if(_loc11_ || param2)
                                             {
                                                §§push(1);
                                                if(_loc11_ || §6!J§.Texture)
                                                {
                                                   if(_loc11_ || §6!J§.Texture)
                                                   {
                                                      §§push(§§pop() >= §§pop());
                                                      if(!_loc10_)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            if(!(_loc10_ && §6!J§.Texture))
                                                            {
                                                               addr172:
                                                               §§push(Boolean(§§pop()));
                                                               if(_loc11_ || param3)
                                                               {
                                                                  addr179:
                                                                  if(!§§pop())
                                                                  {
                                                                     if(_loc11_)
                                                                     {
                                                                        if(!(_loc10_ && param2))
                                                                        {
                                                                           if(!(_loc10_ && param1))
                                                                           {
                                                                              _loc7_.dispose();
                                                                              addr200:
                                                                              if(_loc11_)
                                                                              {
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       §§goto(addr206);
                                                                                    }
                                                                                    break loop0;
                                                                                 }
                                                                                 addr281:
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    addr273:
                                                                                    _loc4_ >>= 1;
                                                                                    addr274:
                                                                                    addr270:
                                                                                    addr272:
                                                                                    §§push(_loc5_);
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       addr232:
                                                                                       §§push(§§pop() >> 1);
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          if(!(_loc10_ && §6!J§.Texture))
                                                                                          {
                                                                                             if(!(_loc10_ && param2))
                                                                                             {
                                                                                                addr250:
                                                                                                §§push(int(§§pop()));
                                                                                                if(!(_loc10_ && param2))
                                                                                                {
                                                                                                   _loc5_ = §§pop();
                                                                                                   addr258:
                                                                                                   if(_loc11_ || param2)
                                                                                                   {
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         §§goto(addr206);
                                                                                                      }
                                                                                                      _loc7_.fillRect(_loc9_,0);
                                                                                                      _loc7_.draw(param2,_loc8_,null,null,null,true);
                                                                                                      param1.uploadFromBitmapData(_loc7_,_loc6_++);
                                                                                                      addr294:
                                                                                                      if(_loc11_ || §6!J§.Texture)
                                                                                                      {
                                                                                                         _loc8_.scale(0.5,0.5);
                                                                                                         §§goto(addr281);
                                                                                                      }
                                                                                                      _loc9_.height = _loc5_;
                                                                                                      addr334:
                                                                                                      §§goto(addr334);
                                                                                                      addr322:
                                                                                                      addr329:
                                                                                                      addr340:
                                                                                                   }
                                                                                                   §§goto(addr274);
                                                                                                }
                                                                                                §§goto(addr270);
                                                                                             }
                                                                                             §§goto(addr272);
                                                                                          }
                                                                                          §§goto(addr273);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr250);
                                                                                    addr271:
                                                                                 }
                                                                                 §§goto(addr322);
                                                                              }
                                                                              §§goto(addr258);
                                                                           }
                                                                           §§goto(addr329);
                                                                        }
                                                                        §§goto(addr219);
                                                                     }
                                                                     §§goto(addr200);
                                                                  }
                                                                  _loc9_.width = _loc4_;
                                                                  §§goto(addr340);
                                                               }
                                                            }
                                                            §§goto(addr213);
                                                         }
                                                         §§goto(addr218);
                                                      }
                                                      §§goto(addr172);
                                                   }
                                                   §§goto(addr232);
                                                }
                                                §§goto(addr206);
                                             }
                                             §§goto(addr250);
                                          }
                                          §§goto(addr206);
                                       }
                                       §§goto(addr294);
                                    }
                                    §§goto(addr179);
                                 }
                                 if(_loc10_ && param2)
                                 {
                                    continue loop6;
                                 }
                                 §§goto(addr49);
                                 §§goto(addr271);
                              }
                              continue loop3;
                           }
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      static function uploadAtfData(param1:flash.display3D.textures.Texture, param2:ByteArray, param3:int = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
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
         if(!_loc7_)
         {
            if(this.§#!V§)
            {
               if(!_loc7_)
               {
                  addr198:
                  if(param3 == 4)
                  {
                     loop7:
                     while(true)
                     {
                        §§push(this.§#!V§.width + this.§#!V§.x - this.width);
                        if(_loc6_ || param1)
                        {
                           §§push(Number(§§pop()));
                        }
                        while(true)
                        {
                           _loc4_ = §§pop();
                           loop2:
                           while(true)
                           {
                              §§push(this.§#!V§.height + this.§#!V§.y - this.height);
                              if(!_loc7_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              if(!(_loc6_ || param1))
                              {
                                 break;
                              }
                              _loc5_ = §§pop();
                              loop3:
                              while(true)
                              {
                                 param1.§`g§(param2,-this.§#!V§.x,-this.§#!V§.y);
                                 loop4:
                                 for(; !_loc7_; if(_loc7_ && this)
                                 {
                                    continue;
                                 },§§goto(addr105))
                                 {
                                    §§push(param1);
                                    §§push(param2 + 1);
                                    §§push(_loc4_);
                                    if(_loc6_)
                                    {
                                       §§push(-§§pop());
                                    }
                                    §§pop().§`g§(§§pop(),§§pop(),-this.§#!V§.y);
                                    loop5:
                                    while(true)
                                    {
                                       §§push(param1);
                                       §§push(param2 + 2);
                                       §§push(-this.§#!V§.x);
                                       §§push(_loc5_);
                                       if(!(_loc7_ && this))
                                       {
                                          §§push(-§§pop());
                                       }
                                       §§pop().§`g§(§§pop(),§§pop(),§§pop());
                                       while(true)
                                       {
                                          if(_loc6_ || this)
                                          {
                                             continue loop4;
                                          }
                                          §§push(param1);
                                          addr105:
                                          §§push(param2 + 3);
                                          §§push(_loc4_);
                                          continue loop5;
                                          if(!(_loc7_ && param2))
                                          {
                                             §§push(-§§pop());
                                          }
                                          §§push(_loc5_);
                                          if(_loc6_ || this)
                                          {
                                             §§push(-§§pop());
                                          }
                                          §§pop().§`g§(§§pop(),§§pop(),§§pop());
                                          if(!_loc6_)
                                          {
                                             continue;
                                          }
                                          if(_loc7_)
                                          {
                                             continue loop3;
                                          }
                                          if(_loc6_)
                                          {
                                             if(_loc6_)
                                             {
                                                §§goto(addr23);
                                             }
                                             else
                                             {
                                                addr201:
                                             }
                                             throw new ArgumentError("Textures with a frame can only be used on quads");
                                          }
                                          addr205:
                                          while(true)
                                          {
                                             continue loop7;
                                          }
                                       }
                                       continue loop4;
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr201);
               }
               §§goto(addr205);
            }
            addr23:
            return;
         }
         §§goto(addr198);
      }
      
      public function get frame() : Rectangle
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            return Boolean(this.§#!V§) ? this.§#!V§.clone() : new Rectangle(0,0,this.width,this.height);
         }
         §§goto(addr38);
      }
      
      public function get clipping() : Rectangle
      {
         return new Rectangle(0,0,this.width,this.height);
      }
      
      public function get repeat() : Boolean
      {
         return this.§>!T§;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§>!T§ = param1;
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
      
      public function get root() : §6!J§.Texture
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
      
      public function get parent() : §6!J§.Texture
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
