package §7i§
{
   import §"v§.§2!;§;
   import §"v§.§`!M§;
   import §0P§.Starling;
   import §8g§.VertexData;
   import §8g§.getNextPowerOfTwo;
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
       
      
      private var §3b§:Rectangle;
      
      private var §-!b§:Boolean;
      
      public function Texture()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
            loop0:
            while(true)
            {
               if(getQualifiedClassName(this) == "starling.textures::Texture")
               {
                  if(!_loc1_)
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     addr49:
                     while(true)
                     {
                        this.§-!b§ = false;
                        if(_loc2_ || _loc1_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     if(_loc2_)
                     {
                        return;
                     }
                     continue loop0;
                  }
               }
               §§goto(addr49);
            }
         }
         throw new §2!;§();
      }
      
      public static function §8;§(param1:Context3D, param2:Bitmap, param3:Boolean = true, param4:Boolean = false) : §7i§.Texture
      {
         return §8v§(param1,param2.bitmapData,param3,param4);
      }
      
      public static function §8v§(param1:Context3D, param2:BitmapData, param3:Boolean = true, param4:Boolean = false) : §7i§.Texture
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc9_:BitmapData = null;
         var _loc10_:ConcreteTexture = null;
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
         if(_loc13_)
         {
            if(param1 != null)
            {
               if(_loc13_)
               {
                  §§push(int(getNextPowerOfTwo(param2.width)));
                  if(_loc13_ || param1)
                  {
                     _loc7_ = §§pop();
                     §§goto(addr77);
                  }
                  _loc8_ = §§pop();
               }
               addr77:
               if(_loc13_)
               {
                  addr71:
                  §§push(int(getNextPowerOfTwo(param2.height)));
               }
               _loc11_ = param1.createTexture(_loc7_,_loc8_,Context3DTextureFormat.BGRA,param4);
               if(_loc13_)
               {
                  §§push(_loc7_);
                  if(_loc13_)
                  {
                     §§push(_loc5_);
                     if(!_loc12_)
                     {
                        §§push(§§pop() > §§pop());
                        if(_loc13_ || param1)
                        {
                           §§push(Boolean(§§pop()));
                           if(!_loc12_)
                           {
                              §§push(§§pop());
                              if(_loc13_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(!§§pop())
                              {
                                 if(_loc13_)
                                 {
                                    §§pop();
                                    §§goto(addr164);
                                 }
                                 §§goto(addr121);
                              }
                           }
                           if(§§pop())
                           {
                              if(_loc13_)
                              {
                                 _loc9_ = new BitmapData(_loc7_,_loc8_,true,0);
                                 if(!_loc12_)
                                 {
                                    _loc9_.copyPixels(param2,param2.rect,new Point(0,0));
                                 }
                                 param2 = _loc9_;
                              }
                              §§goto(addr164);
                           }
                           uploadBitmapData(_loc11_,param2,param3);
                           §§goto(addr164);
                        }
                        §§goto(addr121);
                     }
                  }
                  §§goto(addr118);
               }
               §§goto(addr164);
            }
            addr164:
            if(_loc13_)
            {
               addr118:
               §§push(_loc8_ > _loc6_);
               if(_loc13_)
               {
                  addr121:
                  §§push(Boolean(§§pop()));
               }
            }
            _loc10_ = new ConcreteTexture(_loc11_,_loc7_,_loc8_,param3,true,param4);
            if(!_loc12_)
            {
               §§push(Starling.§>!f§);
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     §§push(Boolean(_loc9_));
                     continue;
                  }
                  loop12:
                  while(true)
                  {
                     _loc10_.§=!4§(param2);
                     loop3:
                     while(true)
                     {
                        addr246:
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
                                    §§push(Boolean(§§pop()));
                                    addr251:
                                    while(_loc13_ || param2)
                                    {
                                       §§push(§§pop());
                                       if(_loc13_ || param1)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(!§§pop())
                                       {
                                          loop11:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc13_)
                                                {
                                                   if(!_loc12_)
                                                   {
                                                      if(_loc13_ || §7i§.Texture)
                                                      {
                                                         §§goto(addr241);
                                                      }
                                                      continue loop12;
                                                   }
                                                   continue loop5;
                                                }
                                                if(_loc12_)
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc12_)
                                                      {
                                                         break loop11;
                                                      }
                                                      continue loop4;
                                                   }
                                                   addr298:
                                                }
                                             }
                                             return new § %§(_loc10_,new Rectangle(0,0,_loc5_,_loc6_),true);
                                          }
                                          continue loop3;
                                          addr228:
                                       }
                                       while(true)
                                       {
                                          §§pop();
                                          continue loop5;
                                       }
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            addr241:
            return _loc10_;
         }
         §§goto(addr71);
      }
      
      public static function §3!9§(param1:Context3D, param2:ByteArray) : §7i§.Texture
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(!(_loc11_ && _loc3_))
         {
            if(param1 == null)
            {
               if(!(_loc11_ && param2))
               {
                  throw new §`!M§();
               }
            }
         }
         var _loc3_:String = String.fromCharCode(param2[0],param2[1],param2[2]);
         if(_loc10_ || param1)
         {
            §§push(_loc3_);
            if(_loc10_)
            {
               if(§§pop() != "ATF")
               {
                  if(_loc10_ || param1)
                  {
                     throw new ArgumentError("Invalid ATF data");
                  }
               }
               else
               {
                  §§goto(addr75);
               }
               §§goto(addr81);
            }
            §§goto(addr114);
         }
         addr75:
         if(param2[6] == 2)
         {
            addr81:
            §§push(Context3DTextureFormat.COMPRESSED);
            if(!(_loc11_ && §7i§.Texture))
            {
               addr114:
               §§push(§§pop());
            }
         }
         else
         {
            §§push(Context3DTextureFormat.BGRA);
            if(_loc10_ || _loc3_)
            {
               §§goto(addr114);
            }
         }
         var _loc4_:* = §§pop();
         var _loc5_:int = Math.pow(2,param2[7]);
         var _loc6_:int = Math.pow(2,param2[8]);
         var _loc7_:int = param2[9];
         var _loc8_:flash.display3D.textures.Texture = param1.createTexture(_loc5_,_loc6_,_loc4_,false);
         if(!(_loc11_ && _loc3_))
         {
            uploadAtfData(_loc8_,param2);
         }
         var _loc9_:ConcreteTexture = new ConcreteTexture(_loc8_,_loc5_,_loc6_,_loc7_ > 1,false);
         if(!_loc11_)
         {
            if(Starling.§>!f§)
            {
               if(!(_loc11_ && param2))
               {
                  _loc9_.§=!4§(param2);
               }
            }
         }
         return _loc9_;
      }
      
      public static function §+s§(param1:§7i§.Texture, param2:Rectangle = null, param3:Rectangle = null) : §7i§.Texture
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§7i§.Texture = new § %§(param1,param2);
         if(!_loc5_)
         {
            _loc4_.§3b§ = param3;
         }
         return _loc4_;
      }
      
      public static function §9@§(param1:Context3D, param2:int = 64, param3:int = 64, param4:uint = 4.294967295E9, param5:Boolean = false) : §7i§.Texture
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:BitmapData = new BitmapData(param2,param3,true,param4);
         var _loc7_:§7i§.Texture = §8v§(param1,_loc6_,false,param5);
         if(!_loc8_)
         {
            §§push(Starling.§>!f§);
            if(_loc9_ || param3)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(!(_loc8_ && §7i§.Texture))
               {
                  addr74:
                  _loc6_.dispose();
               }
            }
            return _loc7_;
         }
         §§goto(addr74);
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
         if(_loc10_)
         {
            param1.uploadFromBitmapData(param2);
            loop0:
            for(; param3; if(!(_loc10_ || §7i§.Texture))
            {
               continue;
            },§§push(1),if(_loc10_ || param3)
            {
               if(_loc10_)
               {
                  addr46:
                  §§push(int(§§pop()));
                  if(_loc10_ || param1)
                  {
                     _loc6_ = §§pop();
                     if(_loc10_)
                     {
                        if(false)
                        {
                           §§goto(addr58);
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr68);
               }
               §§goto(addr94);
            },§§goto(addr46))
            {
               if(!(_loc11_ && §7i§.Texture))
               {
                  while(true)
                  {
                     §§push(param2.width >> 1);
                     addr93:
                     while(true)
                     {
                        §§push(int(§§pop()));
                        addr94:
                        while(true)
                        {
                           _loc4_ = §§pop();
                        }
                     }
                  }
                  addr89:
               }
               loop1:
               while(true)
               {
                  addr58:
                  addr101:
                  while(true)
                  {
                     §§push(param2.height >> 1);
                     if(!_loc11_)
                     {
                        if(!_loc11_)
                        {
                           §§push(int(§§pop()));
                        }
                        else
                        {
                           §§goto(addr93);
                        }
                     }
                     addr68:
                     while(true)
                     {
                        _loc5_ = §§pop();
                        addr69:
                        while(_loc10_)
                        {
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
                  _loc7_ = new BitmapData(_loc4_,_loc5_,true,0);
                  _loc8_ = new Matrix(0.5,0,0,0.5);
                  _loc9_ = new Rectangle();
                  addr218:
                  §§push(_loc4_);
                  §§push(1);
                  if(_loc10_)
                  {
                     addr224:
                     §§push(Boolean(§§pop() >= §§pop()));
                     §§push(Boolean(§§pop() >= §§pop()));
                     if(!_loc11_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(!§§pop())
                     {
                        addr230:
                        §§pop();
                        addr231:
                        if(_loc10_ || param3)
                        {
                           §§push(_loc5_);
                           if(!(_loc11_ && param1))
                           {
                              if(!(_loc11_ && param3))
                              {
                                 if(!(_loc11_ && param1))
                                 {
                                    §§push(1);
                                    if(_loc10_ || param3)
                                    {
                                       if(!_loc11_)
                                       {
                                          §§push(§§pop() >= §§pop());
                                          if(_loc10_ || §7i§.Texture)
                                          {
                                             if(!_loc11_)
                                             {
                                                if(!(_loc11_ && param3))
                                                {
                                                   addr183:
                                                   §§push(Boolean(§§pop()));
                                                   if(_loc10_ || §7i§.Texture)
                                                   {
                                                      addr190:
                                                      if(!§§pop())
                                                      {
                                                         if(!(_loc11_ && param3))
                                                         {
                                                            if(_loc10_ || param2)
                                                            {
                                                               _loc7_.dispose();
                                                               addr209:
                                                               if(!(_loc11_ && param2))
                                                               {
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr218);
                                                                  }
                                                                  break loop0;
                                                               }
                                                               addr290:
                                                               if(_loc10_ || param2)
                                                               {
                                                                  addr272:
                                                                  §§push(_loc4_ >> 1);
                                                                  if(!(_loc11_ && §7i§.Texture))
                                                                  {
                                                                     addr282:
                                                                     _loc4_ = int(§§pop());
                                                                     addr283:
                                                                     §§push(_loc5_);
                                                                     if(!_loc11_)
                                                                     {
                                                                        if(_loc10_ || §7i§.Texture)
                                                                        {
                                                                           addr251:
                                                                           §§push(§§pop() >> 1);
                                                                           if(_loc10_ || param3)
                                                                           {
                                                                              addr260:
                                                                              _loc5_ = int(§§pop());
                                                                              if(_loc10_)
                                                                              {
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          §§goto(addr218);
                                                                                       }
                                                                                       _loc9_.height = _loc5_;
                                                                                       _loc7_.fillRect(_loc9_,0);
                                                                                       _loc7_.draw(param2,_loc8_,null,null,null,true);
                                                                                       addr348:
                                                                                       addr343:
                                                                                       addr354:
                                                                                    }
                                                                                    param1.uploadFromBitmapData(_loc7_,_loc6_++);
                                                                                 }
                                                                                 if(!(_loc11_ && param3))
                                                                                 {
                                                                                    _loc8_.scale(0.5,0.5);
                                                                                    §§goto(addr290);
                                                                                 }
                                                                                 §§goto(addr348);
                                                                              }
                                                                              §§goto(addr283);
                                                                           }
                                                                           §§goto(addr260);
                                                                        }
                                                                        §§goto(addr272);
                                                                     }
                                                                     §§goto(addr260);
                                                                  }
                                                                  §§goto(addr282);
                                                               }
                                                               §§goto(addr343);
                                                            }
                                                            §§goto(addr231);
                                                         }
                                                         §§goto(addr209);
                                                      }
                                                      _loc9_.width = _loc4_;
                                                      §§goto(addr354);
                                                   }
                                                }
                                                §§goto(addr224);
                                             }
                                             §§goto(addr230);
                                          }
                                          §§goto(addr183);
                                       }
                                       §§goto(addr272);
                                    }
                                    §§goto(addr218);
                                 }
                                 §§goto(addr282);
                              }
                              §§goto(addr260);
                           }
                           §§goto(addr218);
                        }
                        §§goto(addr260);
                     }
                     §§goto(addr190);
                  }
                  §§goto(addr251);
               }
            }
            return;
         }
         §§goto(addr89);
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
      
      public function adjustVertexData(param1:VertexData, param2:int, param3:int) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         if(_loc6_)
         {
            if(this.§3b§)
            {
               while(true)
               {
                  if(param3 != 4)
                  {
                     addr196:
                     throw new ArgumentError("Textures with a frame can only be used on quads");
                  }
                  loop1:
                  while(true)
                  {
                     §§push(this.§3b§.width + this.§3b§.x - this.width);
                     if(_loc6_)
                     {
                        §§push(Number(§§pop()));
                     }
                     loop2:
                     while(true)
                     {
                        _loc4_ = §§pop();
                        addr181:
                        while(true)
                        {
                           if(!(_loc7_ && this))
                           {
                              continue loop2;
                           }
                           continue loop1;
                        }
                     }
                  }
                  if(!(_loc6_ || this))
                  {
                     continue;
                  }
                  §§push(param1);
                  §§push(param2 + 1);
                  §§push(_loc4_);
                  if(_loc6_ || this)
                  {
                     §§push(-§§pop());
                  }
                  §§pop().§5!$§(§§pop(),§§pop(),-this.§3b§.y);
                  §§goto(addr114);
               }
               addr193:
            }
            §§goto(addr23);
         }
         §§goto(addr193);
      }
      
      public function get frame() : Rectangle
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            return Boolean(this.§3b§) ? this.§3b§.clone() : new Rectangle(0,0,this.width,this.height);
         }
         §§goto(addr33);
      }
      
      public function get clipping() : Rectangle
      {
         return new Rectangle(0,0,this.width,this.height);
      }
      
      public function get repeat() : Boolean
      {
         return this.§-!b§;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§-!b§ = param1;
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
      
      public function get root() : §7i§.Texture
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
      
      public function get parent() : §7i§.Texture
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
