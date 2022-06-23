package §0! §
{
   import §'j§.§3!!§;
   import §'j§.getNextPowerOfTwo;
   import §<t§.§ !'§;
   import §<t§.§!F§;
   import §=!0§.§>I§;
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
       
      
      private var §-! §:Rectangle;
      
      private var §?§:Boolean;
      
      public function Texture()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
            if(_loc1_)
            {
               addr37:
               if(getQualifiedClassName(this) == "starling.textures::Texture")
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     throw new § !'§();
                  }
               }
            }
            this.§?§ = false;
            return;
         }
         §§goto(addr37);
      }
      
      public static function §>! §(param1:Context3D, param2:Bitmap, param3:Boolean = true, param4:Boolean = false) : §0! §.Texture
      {
         return §+!>§(param1,param2.bitmapData,param3,param4);
      }
      
      public static function §+!>§(param1:Context3D, param2:BitmapData, param3:Boolean = true, param4:Boolean = false) : §0! §.Texture
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc9_:BitmapData = null;
         var _loc10_:§!T§ = null;
         var _loc11_:flash.display3D.textures.Texture = null;
         var _loc5_:int = param2.width;
         var _loc6_:int = param2.height;
         §§push(_loc5_);
         if(!_loc12_)
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
         if(!(_loc12_ && param1))
         {
            if(param1 != null)
            {
               if(!_loc12_)
               {
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
                     if(!(_loc12_ && param2))
                     {
                        §§push(_loc7_);
                        if(_loc13_)
                        {
                           §§push(_loc5_);
                           if(_loc13_)
                           {
                              §§push(§§pop() > §§pop());
                              if(_loc13_)
                              {
                                 if(!§§pop())
                                 {
                                    if(!_loc12_)
                                    {
                                       addr111:
                                       §§pop();
                                       addr145:
                                       if(_loc13_)
                                       {
                                          addr116:
                                          §§push(_loc8_ > _loc6_);
                                       }
                                       _loc10_ = new §!T§(_loc11_,_loc7_,_loc8_,param3,true,param4);
                                       §§push(§>I§.§8$§);
                                       if(_loc13_ || param2)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc13_)
                                             {
                                                _loc10_.§#B§(param2);
                                             }
                                          }
                                          else if(_loc9_)
                                          {
                                             if(!_loc12_)
                                             {
                                                _loc9_.dispose();
                                             }
                                          }
                                          §§push(_loc5_);
                                          if(_loc13_)
                                          {
                                             §§push(_loc7_);
                                             if(_loc13_ || §0! §.Texture)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(_loc13_ || param3)
                                                {
                                                   addr206:
                                                   if(§§pop())
                                                   {
                                                      if(_loc13_)
                                                      {
                                                         §§pop();
                                                         addr213:
                                                         §§push(_loc6_ == _loc8_);
                                                      }
                                                   }
                                                }
                                                if(§§pop())
                                                {
                                                   if(_loc13_)
                                                   {
                                                      return _loc10_;
                                                   }
                                                }
                                                return new §63§(_loc10_,new Rectangle(0,0,_loc5_,_loc6_),true);
                                             }
                                          }
                                          §§goto(addr213);
                                       }
                                       §§goto(addr206);
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc12_)
                                    {
                                       addr120:
                                       (_loc9_ = new BitmapData(_loc7_,_loc8_,true,0)).copyPixels(param2,param2.rect,new Point(0,0));
                                       param2 = _loc9_;
                                    }
                                    §§goto(addr145);
                                 }
                                 uploadBitmapData(_loc11_,param2,param3);
                                 §§goto(addr145);
                              }
                              §§goto(addr111);
                           }
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr120);
                  }
                  _loc8_ = §§pop();
               }
               §§goto(addr72);
            }
            §§goto(addr111);
         }
         §§goto(addr72);
      }
      
      public static function §4X§(param1:Context3D, param2:ByteArray) : §0! §.Texture
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(!_loc11_)
         {
            if(param1 == null)
            {
               if(!_loc11_)
               {
                  §§goto(addr23);
               }
            }
            var _loc3_:String = String.fromCharCode(param2[0],param2[1],param2[2]);
            if(_loc10_)
            {
               §§push(_loc3_);
               if(_loc10_)
               {
                  if(§§pop() != "ATF")
                  {
                     if(_loc10_)
                     {
                        throw new ArgumentError("Invalid ATF data");
                     }
                  }
                  if(param2[6] == 2)
                  {
                     addr65:
                     §§push(Context3DTextureFormat.COMPRESSED);
                     if(!_loc11_)
                     {
                        addr80:
                     }
                     addr91:
                     §§push(§§pop());
                  }
                  else
                  {
                     §§push(Context3DTextureFormat.BGRA);
                     if(!(_loc11_ && _loc3_))
                     {
                        §§goto(addr91);
                     }
                  }
                  var _loc4_:* = §§pop();
                  var _loc5_:int = Math.pow(2,param2[7]);
                  var _loc6_:int = Math.pow(2,param2[8]);
                  var _loc7_:int = param2[9];
                  var _loc8_:flash.display3D.textures.Texture = param1.createTexture(_loc5_,_loc6_,_loc4_,false);
                  if(_loc10_)
                  {
                     uploadAtfData(_loc8_,param2);
                  }
                  var _loc9_:§!T§ = new §!T§(_loc8_,_loc5_,_loc6_,_loc7_ > 1,false);
                  if(_loc10_ || §0! §.Texture)
                  {
                     if(§>I§.§8$§)
                     {
                        if(_loc10_ || _loc3_)
                        {
                           addr166:
                           _loc9_.§#B§(param2);
                        }
                     }
                     return _loc9_;
                  }
                  §§goto(addr166);
               }
               §§goto(addr80);
            }
            §§goto(addr65);
         }
         addr23:
         throw new §!F§();
      }
      
      public static function §`X§(param1:§0! §.Texture, param2:Rectangle = null, param3:Rectangle = null) : §0! §.Texture
      {
         var _loc4_:§0! §.Texture;
         (_loc4_ = new §63§(param1,param2)).§-! § = param3;
         return _loc4_;
      }
      
      public static function § w§(param1:Context3D, param2:int = 64, param3:int = 64, param4:uint = 4.294967295E9, param5:Boolean = false) : §0! §.Texture
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:BitmapData = new BitmapData(param2,param3,true,param4);
         var _loc7_:§0! §.Texture = §+!>§(param1,_loc6_,false,param5);
         if(!(_loc8_ && param1))
         {
            if(!§>I§.§8$§)
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
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:BitmapData = null;
         var _loc8_:Matrix = null;
         var _loc9_:Rectangle = null;
         if(!(_loc11_ && §0! §.Texture))
         {
            param1.uploadFromBitmapData(param2);
            if(!_loc11_)
            {
               if(param3)
               {
                  if(!_loc11_)
                  {
                     §§push(param2.width >> 1);
                     if(_loc10_)
                     {
                        _loc4_ = §§pop();
                        if(!(_loc11_ && param3))
                        {
                           addr61:
                           §§push(param2.height >> 1);
                           if(!_loc11_)
                           {
                              addr67:
                              _loc5_ = §§pop();
                              addr77:
                              if(_loc10_ || param3)
                              {
                                 addr75:
                                 §§push(1);
                              }
                              _loc7_ = new BitmapData(_loc4_,_loc5_,true,0);
                              _loc8_ = new Matrix(0.5,0,0,0.5);
                              _loc9_ = new Rectangle();
                              while(true)
                              {
                                 §§push(_loc4_);
                                 if(_loc10_ || §0! §.Texture)
                                 {
                                    loop1:
                                    while(true)
                                    {
                                       §§push(1);
                                       if(_loc10_)
                                       {
                                          §§push(§§pop() >= §§pop());
                                          if(_loc10_ || §0! §.Texture)
                                          {
                                             if(!§§pop())
                                             {
                                                if(_loc10_)
                                                {
                                                   addr231:
                                                   §§pop();
                                                   while(true)
                                                   {
                                                      §§push(_loc5_);
                                                      addr233:
                                                      while(true)
                                                      {
                                                         §§push(1);
                                                         addr234:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() >= §§pop());
                                                         }
                                                      }
                                                   }
                                                   addr232:
                                                }
                                             }
                                             for(; §§pop(); §§goto(addr234))
                                             {
                                                _loc9_.width = _loc4_;
                                                _loc9_.height = _loc5_;
                                                if(_loc10_ || param2)
                                                {
                                                   _loc7_.fillRect(_loc9_,0);
                                                   _loc7_.draw(param2,_loc8_,null,null,null,true);
                                                   if(_loc10_ || param3)
                                                   {
                                                      param1.uploadFromBitmapData(_loc7_,_loc6_++);
                                                      if(!_loc11_)
                                                      {
                                                         _loc8_.scale(0.5,0.5);
                                                      }
                                                      break;
                                                   }
                                                   §§push(_loc4_);
                                                   if(!_loc11_)
                                                   {
                                                      §§push(1);
                                                      if(_loc10_)
                                                      {
                                                         §§push(§§pop() >> §§pop());
                                                         if(!_loc11_)
                                                         {
                                                            _loc4_ = §§pop();
                                                            if(!(_loc10_ || param2))
                                                            {
                                                               break;
                                                            }
                                                            addr171:
                                                            §§push(_loc5_);
                                                            if(_loc11_ && param3)
                                                            {
                                                               §§goto(addr233);
                                                            }
                                                         }
                                                         §§push(1);
                                                         if(_loc10_ || param3)
                                                         {
                                                            continue loop1;
                                                         }
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr233);
                                                }
                                                §§goto(addr171);
                                             }
                                             _loc7_.dispose();
                                             §§goto(addr238);
                                          }
                                          §§goto(addr231);
                                       }
                                       §§goto(addr234);
                                    }
                                 }
                                 §§goto(addr233);
                              }
                           }
                           _loc6_ = §§pop();
                           §§goto(addr77);
                        }
                        §§goto(addr75);
                     }
                  }
                  §§goto(addr67);
               }
               addr238:
               return;
            }
            §§goto(addr61);
         }
         §§goto(addr67);
      }
      
      static function uploadAtfData(param1:flash.display3D.textures.Texture, param2:ByteArray, param3:int = 0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && §0! §.Texture))
         {
            param1.uploadCompressedTextureFromByteArray(param2,param3);
         }
      }
      
      public function dispose() : void
      {
      }
      
      public function adjustVertexData(param1:§3!!§, param2:int, param3:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(this.§-! §)
         {
            if(param3 != 4)
            {
               throw new ArgumentError("Textures with a frame can only be used on quads");
            }
            §§push(this.§-! §.width + this.§-! §.x - this.width);
            if(_loc7_ || param3)
            {
               §§push(Number(§§pop()));
               if(!(_loc6_ && this))
               {
                  _loc4_ = §§pop();
                  §§push(this.§-! §.height + this.§-! §.y - this.height);
                  if(_loc7_ || param2)
                  {
                     addr86:
                     §§push(Number(§§pop()));
                  }
                  _loc5_ = §§pop();
                  if(_loc7_ || this)
                  {
                     param1.§[w§(param2,-this.§-! §.x,-this.§-! §.y);
                     if(_loc7_)
                     {
                        §§push(param1);
                        §§push(param2 + 1);
                        §§push(_loc4_);
                        if(_loc7_)
                        {
                           §§push(-§§pop());
                        }
                        §§pop().§[w§(§§pop(),§§pop(),-this.§-! §.y);
                        if(!(_loc6_ && param2))
                        {
                           §§push(param1);
                           §§push(param2 + 2);
                           §§push(-this.§-! §.x);
                           §§push(_loc5_);
                           if(_loc7_ || param2)
                           {
                              §§push(-§§pop());
                           }
                           §§pop().§[w§(§§pop(),§§pop(),§§pop());
                        }
                        §§goto(addr179);
                     }
                     §§push(param1);
                     §§push(param2 + 3);
                     §§push(_loc4_);
                     if(!(_loc6_ && param3))
                     {
                        §§push(-§§pop());
                     }
                     §§push(_loc5_);
                     if(!(_loc6_ && this))
                     {
                        §§push(-§§pop());
                     }
                     §§pop().§[w§(§§pop(),§§pop(),§§pop());
                  }
                  §§goto(addr179);
               }
            }
            §§goto(addr86);
         }
         addr179:
      }
      
      public function get §8T§() : Rectangle
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            return !!this.§-! § ? this.§-! §.clone() : new Rectangle(0,0,this.width,this.height);
         }
         §§goto(addr36);
      }
      
      public function get clipping() : Rectangle
      {
         return new Rectangle(0,0,this.width,this.height);
      }
      
      public function get repeat() : Boolean
      {
         return this.§?§;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§?§ = param1;
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
      
      public function get root() : §0! §.Texture
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
      
      public function get parent() : §0! §.Texture
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
