package §0!-§
{
   import §6!@§.§3!'§;
   import §6!@§.§;!%§;
   import §6x§.§9!§;
   import §6x§.getNextPowerOfTwo;
   import §@!X§.§7j§;
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
       
      
      private var §5!9§:Rectangle;
      
      private var §&!J§:Boolean;
      
      public function Texture()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(!(_loc1_ && this))
            {
               if(getQualifiedClassName(this) == "starling.textures::Texture")
               {
                  if(!_loc1_)
                  {
                     throw new §;!%§();
                  }
               }
               else
               {
                  this.§&!J§ = false;
               }
            }
         }
      }
      
      public static function §&B§(param1:Context3D, param2:Bitmap, param3:Boolean = true, param4:Boolean = false) : §0!-§.Texture
      {
         return §&!`§(param1,param2.bitmapData,param3,param4);
      }
      
      public static function §&!`§(param1:Context3D, param2:BitmapData, param3:Boolean = true, param4:Boolean = false) : §0!-§.Texture
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc9_:BitmapData = null;
         var _loc10_:§ ;§ = null;
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
         if(!(_loc13_ && param3))
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
                  if(_loc12_)
                  {
                     _loc7_ = §§pop();
                     addr81:
                     if(!(_loc13_ && param2))
                     {
                        §§push(int(getNextPowerOfTwo(param2.height)));
                     }
                     _loc11_ = param1.createTexture(_loc7_,_loc8_,Context3DTextureFormat.BGRA,param4);
                     if(_loc12_ || param2)
                     {
                        §§push(_loc7_);
                        if(_loc12_ || param3)
                        {
                           §§push(_loc5_);
                           if(!_loc13_)
                           {
                              §§push(§§pop() > §§pop());
                              if(!_loc13_)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc12_ || param2)
                                    {
                                       §§pop();
                                       addr169:
                                       if(!(_loc13_ && param3))
                                       {
                                          addr140:
                                          §§push(_loc8_ > _loc6_);
                                       }
                                       _loc10_ = new § ;§(_loc11_,_loc7_,_loc8_,param3,true,param4);
                                       §§push(§7j§.§>!Z§);
                                       if(!(_loc13_ && param2))
                                       {
                                          if(§§pop())
                                          {
                                             _loc10_.§"6§(param2);
                                          }
                                          else if(_loc9_)
                                          {
                                             _loc9_.dispose();
                                             if(_loc12_ || §0!-§.Texture)
                                             {
                                                addr204:
                                                §§push(_loc5_);
                                                if(_loc12_)
                                                {
                                                   §§push(_loc7_);
                                                   if(!(_loc13_ && param1))
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(_loc12_)
                                                      {
                                                         addr218:
                                                         if(§§pop())
                                                         {
                                                            if(_loc12_)
                                                            {
                                                               §§goto(addr222);
                                                            }
                                                         }
                                                         §§goto(addr243);
                                                      }
                                                      addr222:
                                                      §§pop();
                                                      if(_loc12_ || param1)
                                                      {
                                                         addr243:
                                                         if(_loc6_ == _loc8_)
                                                         {
                                                            if(!(_loc13_ && param3))
                                                            {
                                                               §§goto(addr251);
                                                            }
                                                         }
                                                      }
                                                      return new §5!<§(_loc10_,new Rectangle(0,0,_loc5_,_loc6_),true);
                                                   }
                                                }
                                                §§goto(addr243);
                                             }
                                             addr251:
                                             return _loc10_;
                                          }
                                          §§goto(addr204);
                                       }
                                       §§goto(addr218);
                                    }
                                 }
                              }
                              if(§§pop())
                              {
                                 if(!_loc13_)
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
                        §§goto(addr140);
                     }
                     §§goto(addr169);
                  }
                  _loc8_ = §§pop();
               }
               §§goto(addr81);
            }
            §§goto(addr169);
         }
         §§goto(addr60);
      }
      
      public static function §<c§(param1:Context3D, param2:ByteArray) : §0!-§.Texture
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(!(_loc10_ && _loc3_))
         {
            if(param1 == null)
            {
               if(!(_loc10_ && param2))
               {
                  §§goto(addr34);
               }
            }
            var _loc3_:String = String.fromCharCode(param2[0],param2[1],param2[2]);
            if(_loc11_ || param2)
            {
               §§push(_loc3_);
               if(_loc11_)
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
                     §§goto(addr75);
                  }
                  §§goto(addr91);
               }
               §§goto(addr96);
            }
            addr75:
            if(param2[6] == 2)
            {
               addr91:
               §§push(Context3DTextureFormat.COMPRESSED);
               if(!_loc10_)
               {
                  addr107:
                  §§push(§§pop());
                  addr96:
               }
            }
            else
            {
               §§push(Context3DTextureFormat.BGRA);
               if(_loc11_ || _loc3_)
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
            var _loc9_:§ ;§ = new § ;§(_loc8_,_loc5_,_loc6_,_loc7_ > 1,false);
            if(!_loc10_)
            {
               if(§7j§.§>!Z§)
               {
                  if(_loc11_)
                  {
                     _loc9_.§"6§(param2);
                  }
               }
            }
            return _loc9_;
         }
         addr34:
         throw new §3!'§();
      }
      
      public static function §-S§(param1:§0!-§.Texture, param2:Rectangle = null, param3:Rectangle = null) : §0!-§.Texture
      {
         var _loc4_:§0!-§.Texture;
         (_loc4_ = new §5!<§(param1,param2)).§5!9§ = param3;
         return _loc4_;
      }
      
      public static function §!!&§(param1:Context3D, param2:int = 64, param3:int = 64, param4:uint = 4.294967295E9, param5:Boolean = false) : §0!-§.Texture
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:BitmapData = new BitmapData(param2,param3,true,param4);
         var _loc7_:§0!-§.Texture = §&!`§(param1,_loc6_,false,param5);
         if(!(_loc9_ && param2))
         {
            if(!§7j§.§>!Z§)
            {
               if(_loc8_ || §0!-§.Texture)
               {
                  addr69:
                  _loc6_.dispose();
               }
            }
            return _loc7_;
         }
         §§goto(addr69);
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
            if(!_loc11_)
            {
               if(param3)
               {
                  if(!_loc11_)
                  {
                     §§push(param2.width >> 1);
                     if(_loc10_ || param2)
                     {
                        _loc4_ = §§pop();
                        if(!_loc11_)
                        {
                           addr56:
                           §§push(param2.height >> 1);
                           if(!(_loc11_ && param1))
                           {
                              _loc5_ = §§pop();
                              addr77:
                              if(!(_loc11_ && §0!-§.Texture))
                              {
                                 §§push(1);
                              }
                              _loc7_ = new BitmapData(_loc4_,_loc5_,true,0);
                              _loc8_ = new Matrix(0.5,0,0,0.5);
                              _loc9_ = new Rectangle();
                              loop0:
                              while(true)
                              {
                                 §§push(_loc4_);
                                 if(!_loc11_)
                                 {
                                    loop1:
                                    while(true)
                                    {
                                       §§push(1);
                                       if(_loc10_)
                                       {
                                          loop2:
                                          while(true)
                                          {
                                             §§push(§§pop() >= §§pop());
                                             if(!(_loc11_ && param2))
                                             {
                                                if(!§§pop())
                                                {
                                                   if(_loc10_ || §0!-§.Texture)
                                                   {
                                                      §§pop();
                                                      addr217:
                                                      §§push(_loc5_);
                                                      while(true)
                                                      {
                                                         §§push(1);
                                                         addr218:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() >= §§pop());
                                                         }
                                                      }
                                                      addr217:
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   _loc9_.width = _loc4_;
                                                   if(_loc10_ || param2)
                                                   {
                                                      _loc9_.height = _loc5_;
                                                      _loc7_.fillRect(_loc9_,0);
                                                      _loc7_.draw(param2,_loc8_,null,null,null,true);
                                                      param1.uploadFromBitmapData(_loc7_,_loc6_++);
                                                   }
                                                   _loc8_.scale(0.5,0.5);
                                                   if(!_loc10_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(_loc4_);
                                                   if(!(_loc10_ || param3))
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§push(1);
                                                   if(!_loc10_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§push(§§pop() >> §§pop());
                                                   if(!_loc11_)
                                                   {
                                                      _loc4_ = §§pop();
                                                      §§push(_loc5_);
                                                      if(_loc10_)
                                                      {
                                                         §§push(1);
                                                         if(_loc10_ || param3)
                                                         {
                                                            continue loop1;
                                                         }
                                                         continue loop2;
                                                      }
                                                      continue loop0;
                                                   }
                                                   §§goto(addr217);
                                                }
                                                break;
                                                §§goto(addr218);
                                             }
                                             _loc7_.dispose();
                                             §§goto(addr222);
                                          }
                                       }
                                       §§goto(addr218);
                                    }
                                 }
                                 §§goto(addr217);
                              }
                           }
                        }
                        §§goto(addr77);
                     }
                     _loc6_ = §§pop();
                     §§goto(addr77);
                  }
                  §§goto(addr56);
               }
               addr222:
               return;
            }
            §§goto(addr56);
         }
         §§goto(addr77);
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
      
      public function adjustVertexData(param1:§9!§, param2:int, param3:int) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         if(_loc6_ || this)
         {
            if(this.§5!9§)
            {
               if(param3 != 4)
               {
                  if(_loc6_ || param1)
                  {
                     throw new ArgumentError("Textures with a frame can only be used on quads");
                  }
               }
               else
               {
                  addr44:
                  §§push(this.§5!9§.width + this.§5!9§.x - this.width);
                  if(_loc6_)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc7_ && param2))
                     {
                        _loc4_ = §§pop();
                        if(_loc6_)
                        {
                           §§push(this.§5!9§.height + this.§5!9§.y - this.height);
                           if(!(_loc7_ && param3))
                           {
                              §§goto(addr95);
                           }
                           addr95:
                           _loc5_ = §§pop();
                           if(!_loc7_)
                           {
                              param1.§^!<§(param2,-this.§5!9§.x,-this.§5!9§.y);
                              if(!_loc6_)
                              {
                              }
                           }
                           §§goto(addr131);
                        }
                        §§push(param1);
                        §§push(param2 + 1);
                        §§push(_loc4_);
                        if(_loc6_ || param1)
                        {
                           §§push(-§§pop());
                        }
                        §§pop().§^!<§(§§pop(),§§pop(),-this.§5!9§.y);
                        if(_loc6_)
                        {
                           addr131:
                           §§push(param1);
                           §§push(param2 + 2);
                           §§push(-this.§5!9§.x);
                           §§push(_loc5_);
                           if(!(_loc7_ && param2))
                           {
                              §§push(-§§pop());
                           }
                           §§pop().§^!<§(§§pop(),§§pop(),§§pop());
                           §§goto(addr159);
                        }
                        addr159:
                        §§push(param1);
                        §§push(param2 + 3);
                        §§push(_loc4_);
                        if(!(_loc7_ && param2))
                        {
                           §§push(-§§pop());
                        }
                        §§push(_loc5_);
                        if(_loc6_)
                        {
                           §§push(-§§pop());
                        }
                        §§pop().§^!<§(§§pop(),§§pop(),§§pop());
                        return;
                     }
                  }
                  §§goto(addr95);
               }
            }
            §§goto(addr131);
         }
         §§goto(addr44);
      }
      
      public function get frame() : Rectangle
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            return !!this.§5!9§ ? this.§5!9§.clone() : new Rectangle(0,0,this.width,this.height);
         }
         §§goto(addr36);
      }
      
      public function get clipping() : Rectangle
      {
         return new Rectangle(0,0,this.width,this.height);
      }
      
      public function get repeat() : Boolean
      {
         return this.§&!J§;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&!J§ = param1;
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
      
      public function get root() : §0!-§.Texture
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
      
      public function get parent() : §0!-§.Texture
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
