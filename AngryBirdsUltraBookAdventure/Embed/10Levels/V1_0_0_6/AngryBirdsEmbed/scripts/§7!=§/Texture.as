package §7!=§
{
   import §,G§.§ u§;
   import §,G§.getNextPowerOfTwo;
   import §8E§.§#!C§;
   import §8E§.§6g§;
   import §catch§.§4@§;
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
       
      
      private var §#@§:Rectangle;
      
      private var §?!;§:Boolean;
      
      public function Texture()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(_loc1_ || _loc1_)
            {
               if(getQualifiedClassName(this) == "starling.textures::Texture")
               {
                  if(!_loc1_)
                  {
                     §§goto(addr54);
                  }
               }
               §§goto(addr54);
            }
            throw new §6g§();
         }
         addr54:
         this.§?!;§ = false;
      }
      
      public static function §,c§(param1:Context3D, param2:Bitmap, param3:Boolean = true, param4:Boolean = false) : §7!=§.Texture
      {
         return §6!2§(param1,param2.bitmapData,param3,param4);
      }
      
      public static function §6!2§(param1:Context3D, param2:BitmapData, param3:Boolean = true, param4:Boolean = false) : §7!=§.Texture
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc9_:BitmapData = null;
         var _loc10_:§"!F§ = null;
         var _loc11_:flash.display3D.textures.Texture = null;
         var _loc5_:int = param2.width;
         var _loc6_:int = param2.height;
         §§push(_loc5_);
         if(!(_loc12_ && §7!=§.Texture))
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(_loc6_);
         if(!(_loc12_ && param2))
         {
            §§push(int(§§pop()));
         }
         var _loc8_:* = §§pop();
         if(_loc13_)
         {
            if(param1 != null)
            {
               if(!(_loc12_ && §7!=§.Texture))
               {
                  §§push(int(getNextPowerOfTwo(param2.width)));
                  if(_loc13_ || param1)
                  {
                     _loc7_ = §§pop();
                     addr92:
                     if(_loc13_ || param3)
                     {
                        §§push(int(getNextPowerOfTwo(param2.height)));
                     }
                     _loc11_ = param1.createTexture(_loc7_,_loc8_,Context3DTextureFormat.BGRA,param4);
                     if(_loc13_ || param1)
                     {
                        §§push(_loc7_);
                        if(!(_loc12_ && param2))
                        {
                           §§push(_loc5_);
                           if(!_loc12_)
                           {
                              §§push(§§pop() > §§pop());
                              if(!(_loc12_ && param3))
                              {
                                 if(!§§pop())
                                 {
                                    if(!(_loc12_ && param1))
                                    {
                                       §§pop();
                                       addr185:
                                       if(_loc13_ || param1)
                                       {
                                          addr156:
                                          §§push(_loc8_ > _loc6_);
                                       }
                                       _loc10_ = new §"!F§(_loc11_,_loc7_,_loc8_,param3,true,param4);
                                       §§push(§4@§.§#!1§);
                                       if(!_loc12_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc13_)
                                             {
                                                _loc10_.§<f§(param2);
                                             }
                                          }
                                          else if(_loc9_)
                                          {
                                             if(_loc13_)
                                             {
                                                _loc9_.dispose();
                                                addr212:
                                                §§push(_loc5_);
                                                if(!(_loc12_ && §7!=§.Texture))
                                                {
                                                   §§push(_loc7_);
                                                   if(_loc13_)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(_loc13_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc13_ || param2)
                                                            {
                                                               addr245:
                                                               §§pop();
                                                               §§push(_loc6_ == _loc8_);
                                                            }
                                                         }
                                                         if(§§pop())
                                                         {
                                                            if(_loc13_ || param3)
                                                            {
                                                               return _loc10_;
                                                            }
                                                         }
                                                         return new §;"§(_loc10_,new Rectangle(0,0,_loc5_,_loc6_),true);
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr245);
                                          }
                                          §§goto(addr212);
                                       }
                                       §§goto(addr245);
                                    }
                                 }
                              }
                              if(§§pop())
                              {
                                 if(!_loc12_)
                                 {
                                    (_loc9_ = new BitmapData(_loc7_,_loc8_,true,0)).copyPixels(param2,param2.rect,new Point(0,0));
                                    param2 = _loc9_;
                                 }
                                 §§goto(addr185);
                              }
                              uploadBitmapData(_loc11_,param2,param3);
                              §§goto(addr185);
                           }
                        }
                     }
                     §§goto(addr156);
                  }
                  _loc8_ = §§pop();
               }
               §§goto(addr92);
            }
            §§goto(addr185);
         }
         §§goto(addr92);
      }
      
      public static function §#!D§(param1:Context3D, param2:ByteArray) : §7!=§.Texture
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
            if(!_loc11_)
            {
               §§push(_loc3_);
               if(!(_loc11_ && param1))
               {
                  if(§§pop() != "ATF")
                  {
                     if(!(_loc11_ && §7!=§.Texture))
                     {
                        throw new ArgumentError("Invalid ATF data");
                     }
                     addr85:
                     §§push(Context3DTextureFormat.COMPRESSED);
                     if(_loc10_ || _loc3_)
                     {
                        addr101:
                        §§push(§§pop());
                     }
                  }
                  else if(param2[6] == 2)
                  {
                     §§goto(addr85);
                  }
                  else
                  {
                     §§push(Context3DTextureFormat.BGRA);
                     if(_loc10_)
                     {
                        §§goto(addr101);
                     }
                  }
                  §§goto(addr85);
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
               var _loc9_:§"!F§ = new §"!F§(_loc8_,_loc5_,_loc6_,_loc7_ > 1,false);
               if(_loc10_)
               {
                  if(§4@§.§#!1§)
                  {
                     if(!_loc11_)
                     {
                        addr166:
                        _loc9_.§<f§(param2);
                     }
                  }
                  return _loc9_;
               }
               §§goto(addr166);
            }
            §§goto(addr85);
         }
         addr23:
         throw new §#!C§();
      }
      
      public static function §"G§(param1:§7!=§.Texture, param2:Rectangle = null, param3:Rectangle = null) : §7!=§.Texture
      {
         var _loc4_:§7!=§.Texture;
         (_loc4_ = new §;"§(param1,param2)).§#@§ = param3;
         return _loc4_;
      }
      
      public static function §-b§(param1:Context3D, param2:int = 64, param3:int = 64, param4:uint = 4.294967295E9, param5:Boolean = false) : §7!=§.Texture
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:BitmapData = new BitmapData(param2,param3,true,param4);
         var _loc7_:§7!=§.Texture = §6!2§(param1,_loc6_,false,param5);
         if(_loc8_ || param3)
         {
            if(!§4@§.§#!1§)
            {
               if(!_loc9_)
               {
                  _loc6_.dispose();
               }
            }
         }
         return _loc7_;
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
            if(_loc11_ || §7!=§.Texture)
            {
               if(param3)
               {
                  if(_loc11_ || §7!=§.Texture)
                  {
                     §§push(param2.width >> 1);
                     if(_loc11_ || param3)
                     {
                        _loc4_ = §§pop();
                        if(_loc11_)
                        {
                           addr67:
                           §§push(param2.height >> 1);
                           if(!(_loc10_ && param2))
                           {
                              addr78:
                              _loc5_ = §§pop();
                              addr88:
                              if(!(_loc10_ && param3))
                              {
                                 addr86:
                                 §§push(1);
                              }
                              _loc7_ = new BitmapData(_loc4_,_loc5_,true,0);
                              _loc8_ = new Matrix(0.5,0,0,0.5);
                              _loc9_ = new Rectangle();
                              while(true)
                              {
                                 §§push(_loc4_);
                                 if(_loc11_ || param3)
                                 {
                                    while(true)
                                    {
                                       §§push(1);
                                       if(!_loc10_)
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop() >= §§pop());
                                             if(!(_loc10_ && §7!=§.Texture))
                                             {
                                                if(!§§pop())
                                                {
                                                   if(!(_loc10_ && param2))
                                                   {
                                                      §§pop();
                                                      if(_loc11_ || param3)
                                                      {
                                                         §§push(_loc5_);
                                                         while(true)
                                                         {
                                                            §§push(1);
                                                            addr253:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() >= §§pop());
                                                               addr254:
                                                               §§goto(addr257);
                                                            }
                                                         }
                                                         addr252:
                                                      }
                                                      _loc7_.dispose();
                                                      §§goto(addr257);
                                                   }
                                                }
                                             }
                                             §§goto(addr254);
                                          }
                                       }
                                       §§goto(addr253);
                                    }
                                 }
                                 §§goto(addr252);
                              }
                           }
                           _loc6_ = §§pop();
                        }
                        §§goto(addr88);
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr86);
               }
               addr257:
               while(true)
               {
                  if(§§pop())
                  {
                     _loc9_.width = _loc4_;
                     if(_loc11_ || §7!=§.Texture)
                     {
                        _loc9_.height = _loc5_;
                        _loc7_.fillRect(_loc9_,0);
                        _loc7_.draw(param2,_loc8_,null,null,null,true);
                        param1.uploadFromBitmapData(_loc7_,_loc6_++);
                        if(_loc10_ && param2)
                        {
                           break;
                        }
                        _loc8_.scale(0.5,0.5);
                        if(_loc10_)
                        {
                           break;
                        }
                        §§push(_loc4_);
                        if(_loc11_ || param2)
                        {
                           §§push(1);
                           if(!(_loc11_ || param3))
                           {
                              continue loop4;
                           }
                           §§push(§§pop() >> §§pop());
                           if(_loc10_)
                           {
                              continue loop1;
                           }
                        }
                        _loc4_ = §§pop();
                        §§push(_loc5_);
                        if(!(_loc10_ && §7!=§.Texture))
                        {
                           §§push(1);
                           if(_loc11_ || param3)
                           {
                              §§push(§§pop() >> §§pop());
                              if(_loc11_)
                              {
                                 _loc5_ = §§pop();
                                 continue loop0;
                              }
                              continue loop5;
                           }
                           continue loop2;
                        }
                        continue loop5;
                     }
                     continue loop0;
                  }
                  continue loop4;
               }
               addr257:
               return;
            }
            §§goto(addr86);
         }
         §§goto(addr67);
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
      
      public function adjustVertexData(param1:§ u§, param2:int, param3:int) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(!(_loc7_ && this))
         {
            if(this.§#@§)
            {
               if(_loc6_ || param1)
               {
                  if(param3 != 4)
                  {
                     if(!(_loc7_ && param3))
                     {
                        throw new ArgumentError("Textures with a frame can only be used on quads");
                     }
                     §§goto(addr154);
                  }
                  else
                  {
                     §§push(this.§#@§.width + this.§#@§.x - this.width);
                     if(!_loc7_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc7_)
                        {
                           §§goto(addr66);
                        }
                        §§goto(addr96);
                     }
                     addr66:
                     _loc4_ = §§pop();
                     if(_loc6_ || this)
                     {
                        §§push(this.§#@§.height + this.§#@§.y - this.height);
                        if(_loc6_)
                        {
                           addr96:
                           §§push(Number(§§pop()));
                        }
                        _loc5_ = §§pop();
                        §§goto(addr98);
                     }
                     addr98:
                     param1.§2!D§(param2,-this.§#@§.x,-this.§#@§.y);
                     if(_loc6_)
                     {
                        §§push(param1);
                        §§push(param2 + 1);
                        §§push(_loc4_);
                        if(_loc6_)
                        {
                           §§push(-§§pop());
                        }
                        §§pop().§2!D§(§§pop(),§§pop(),-this.§#@§.y);
                     }
                     §§push(param1);
                     §§push(param2 + 2);
                     §§push(-this.§#@§.x);
                     §§push(_loc5_);
                     if(!_loc7_)
                     {
                        §§push(-§§pop());
                     }
                     §§pop().§2!D§(§§pop(),§§pop(),§§pop());
                     if(_loc7_ && this)
                     {
                     }
                     §§goto(addr154);
                  }
                  §§goto(addr154);
               }
               §§goto(addr98);
            }
         }
         addr154:
         §§push(param1);
         §§push(param2 + 3);
         §§push(_loc4_);
         if(!(_loc7_ && param3))
         {
            §§push(-§§pop());
         }
         §§push(_loc5_);
         if(_loc6_)
         {
            §§push(-§§pop());
         }
         §§pop().§2!D§(§§pop(),§§pop(),§§pop());
      }
      
      public function get §4B§() : Rectangle
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            return !!this.§#@§ ? this.§#@§.clone() : new Rectangle(0,0,this.width,this.height);
         }
         §§goto(addr32);
      }
      
      public function get clipping() : Rectangle
      {
         return new Rectangle(0,0,this.width,this.height);
      }
      
      public function get repeat() : Boolean
      {
         return this.§?!;§;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§?!;§ = param1;
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
      
      public function get root() : §7!=§.Texture
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
      
      public function get parent() : §7!=§.Texture
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
