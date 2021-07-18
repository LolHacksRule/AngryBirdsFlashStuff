package §_-4g§
{
   import §_-HT§.§_-rU§;
   import §_-gY§.§_-Vu§;
   import §_-ia§.§_-dF§;
   import §_-ia§.getNextPowerOfTwo;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
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
       
      
      private var §_-ed§:Rectangle;
      
      private var §_-PU§:Boolean;
      
      public function Texture()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
            if(!_loc2_)
            {
               §§goto(addr31);
            }
            §§goto(addr38);
         }
         addr31:
         if(getQualifiedClassName(this) == "starling.textures::Texture")
         {
            if(!_loc2_)
            {
               addr38:
               throw new §_-rU§();
            }
         }
         else
         {
            this.§_-PU§ = false;
         }
      }
      
      public static function §_-aY§(param1:Bitmap, param2:Boolean = true, param3:Boolean = false) : §_-4g§.Texture
      {
         return §_-su§(param1.bitmapData,param2,param3);
      }
      
      public static function §_-su§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : §_-4g§.Texture
      {
         var _loc4_:int = param1.width;
         var _loc5_:int = param1.height;
         var _loc6_:int = getNextPowerOfTwo(param1.width);
         var _loc7_:int = getNextPowerOfTwo(param1.height);
         var _loc8_:flash.display3D.textures.Texture = §_-Ml§(param1,param2,param3);
         var _loc9_:§_-4g§.Texture = new §_-HY§(_loc8_,_loc6_,_loc7_,param2,true);
         return §_-vJ§(_loc9_,new Rectangle(0,0,_loc4_,_loc5_));
      }
      
      protected static function §_-Ml§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : flash.display3D.textures.Texture
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(§§newactivation());
         §§push(0);
         if(!(_loc7_ && param3))
         {
            §§pop().§§slot[6] = §§pop();
            §§push(§§newactivation());
            if(_loc6_ || §_-4g§.Texture)
            {
               §§push(0);
               if(_loc6_ || param1)
               {
                  §§pop().§§slot[7] = §§pop();
                  var potData:BitmapData = null;
                  §§push(§§newactivation());
                  if(!_loc7_)
                  {
                     §§pop().§§slot[1] = param1;
                     §§push(§§newactivation());
                     if(_loc6_)
                     {
                        §§push(param2);
                        if(!(_loc7_ && param3))
                        {
                           §§pop().§§slot[2] = §§pop();
                           if(!(_loc7_ && §_-4g§.Texture))
                           {
                              §§push(§§newactivation());
                              if(!_loc7_)
                              {
                                 addr76:
                                 §§pop().§§slot[3] = param3;
                                 §§push(§§newactivation());
                                 if(!(_loc7_ && param2))
                                 {
                                    §§push(§§newactivation());
                                    if(_loc6_ || §_-4g§.Texture)
                                    {
                                       addr120:
                                       §§push(int(§§pop().§§slot[1].width));
                                       if(_loc6_)
                                       {
                                          §§pop().§§slot[4] = §§pop();
                                          §§push(§§newactivation());
                                          §§push(§§newactivation());
                                       }
                                       §§pop().§§slot[6] = §§pop();
                                       if(!_loc7_)
                                       {
                                          addr130:
                                          var legalHeight:int = getNextPowerOfTwo(data.height);
                                          §§push(§§newactivation());
                                          if(_loc6_ || param1)
                                          {
                                             addr139:
                                             §§pop().§§slot[8] = Context3DTextureFormat.BGRA;
                                             if(_loc6_ || param2)
                                             {
                                                addr150:
                                                var nativeTexture:flash.display3D.textures.Texture = §_-Vu§.§_-ez§.createTexture(legalWidth,legalHeight,format,optimizeForRenderTexture);
                                                if(!(_loc7_ && §_-4g§.Texture))
                                                {
                                                   addr179:
                                                   §§push(legalWidth);
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(!(_loc7_ && param3))
                                                      {
                                                         §§push(§§pop().§§slot[4]);
                                                         if(_loc6_ || §_-4g§.Texture)
                                                         {
                                                            §§push(§§pop() > §§pop());
                                                            if(!(_loc7_ && param3))
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     addr210:
                                                                     §§pop();
                                                                     if(!_loc7_)
                                                                     {
                                                                        addr217:
                                                                        §§push(legalHeight > origHeight);
                                                                     }
                                                                     try
                                                                     {
                                                                        addr219:
                                                                        §§push(§§newactivation());
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§pop().§§slot[10] = new BitmapData(legalWidth,legalHeight,true,0);
                                                                           if(!(_loc7_ && §_-4g§.Texture))
                                                                           {
                                                                              §§push(§§newactivation());
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§pop().§§slot[10].copyPixels(data,data.rect,new Point(0,0));
                                                                                 if(_loc6_ || param2)
                                                                                 {
                                                                                    §_-yJ§(potData,nativeTexture,generateMipMaps);
                                                                                    if(!(_loc7_ && param3))
                                                                                    {
                                                                                       §§push(§§newactivation());
                                                                                       if(!(_loc7_ && param1))
                                                                                       {
                                                                                          addr283:
                                                                                          §§pop().§§slot[10].dispose();
                                                                                          if(_loc6_ || param2)
                                                                                          {
                                                                                             addr343:
                                                                                             §§push(§§newactivation());
                                                                                             addr292:
                                                                                          }
                                                                                          §§goto(addr343);
                                                                                       }
                                                                                       return §§pop().§§slot[9];
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr283);
                                                                           }
                                                                           §§goto(addr292);
                                                                        }
                                                                        §§goto(addr283);
                                                                     }
                                                                     catch(e:Error)
                                                                     {
                                                                        e.message += " bitmap size (" + legalWidth + "*" + legalHeight + ")";
                                                                        throw e;
                                                                     }
                                                                     §§goto(addr343);
                                                                  }
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  §§goto(addr219);
                                                               }
                                                               else
                                                               {
                                                                  §_-yJ§(data,nativeTexture,generateMipMaps);
                                                               }
                                                               §§goto(addr343);
                                                            }
                                                            §§goto(addr210);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr217);
                                             }
                                             §§goto(addr219);
                                          }
                                          §§goto(addr179);
                                       }
                                       §§goto(addr150);
                                    }
                                    §§push(int(§§pop().§§slot[1].height));
                                    if(!_loc7_)
                                    {
                                       §§pop().§§slot[5] = §§pop();
                                       if(!_loc7_)
                                       {
                                          §§push(§§newactivation());
                                          if(!_loc7_)
                                          {
                                             addr112:
                                             §§push(int(getNextPowerOfTwo(data.width)));
                                             if(_loc6_)
                                             {
                                                §§goto(addr120);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr130);
                                 }
                                 §§goto(addr139);
                              }
                           }
                           §§goto(addr217);
                        }
                        §§goto(addr76);
                     }
                     §§goto(addr112);
                  }
                  §§goto(addr130);
               }
               §§goto(addr120);
            }
            §§goto(addr76);
         }
         §§goto(addr130);
      }
      
      public static function §_-we§(param1:ByteArray) : §_-4g§.Texture
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:String = String.fromCharCode(param1[0],param1[1],param1[2]);
         if(_loc9_)
         {
            §§push(_loc2_);
            if(!_loc8_)
            {
               if(§§pop() != "ATF")
               {
                  if(_loc9_ || _loc2_)
                  {
                     throw new ArgumentError("Invalid ATF data");
                  }
                  §§goto(addr47);
               }
               §§goto(addr47);
            }
            §§goto(addr70);
         }
         addr47:
         if(param1[6] == 2)
         {
            §§push(Context3DTextureFormat.COMPRESSED);
            if(!(_loc8_ && §_-4g§.Texture))
            {
               addr70:
            }
            addr76:
            §§push(§§pop());
         }
         else
         {
            §§push(Context3DTextureFormat.BGRA);
            if(!_loc8_)
            {
               §§goto(addr76);
            }
         }
         var _loc3_:* = §§pop();
         var _loc4_:int = Math.pow(2,param1[7]);
         var _loc5_:int = Math.pow(2,param1[8]);
         var _loc6_:int = param1[9];
         var _loc7_:flash.display3D.textures.Texture;
         (_loc7_ = §_-Vu§.§_-ez§.createTexture(_loc4_,_loc5_,_loc3_,false)).uploadCompressedTextureFromByteArray(param1,0);
         return new §_-HY§(_loc7_,_loc4_,_loc5_,_loc6_ > 1,false);
      }
      
      private static function §_-vJ§(param1:§_-4g§.Texture, param2:Rectangle) : §_-4g§.Texture
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && §_-4g§.Texture))
         {
            §§push(param2.x == 0);
            §§push(param2.x == 0);
            if(_loc3_)
            {
               if(§§pop())
               {
                  §§pop();
                  if(_loc3_ || param2)
                  {
                     addr36:
                     §§push(param2.y == 0);
                     if(_loc3_ || param1)
                     {
                        addr47:
                        §§push(§§pop());
                        if(_loc3_ || param1)
                        {
                           if(§§pop())
                           {
                              if(!_loc4_)
                              {
                                 §§pop();
                                 if(_loc3_ || param1)
                                 {
                                    §§push(param2.width == param1.width);
                                    if(_loc3_)
                                    {
                                       addr80:
                                       if(§§pop())
                                       {
                                          if(_loc3_ || §_-4g§.Texture)
                                          {
                                          }
                                       }
                                       §§goto(addr102);
                                    }
                                    §§pop();
                                    if(_loc3_ || §_-4g§.Texture)
                                    {
                                       addr97:
                                       addr102:
                                       if(§§pop())
                                       {
                                          if(!_loc4_)
                                          {
                                             return param1;
                                          }
                                       }
                                       return new §_-la§(param1,param2,true);
                                       §§push(param2.height == param1.height);
                                    }
                                    §§goto(addr102);
                                 }
                                 §§goto(addr97);
                              }
                              §§goto(addr102);
                           }
                        }
                        §§goto(addr80);
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr97);
               }
               §§goto(addr47);
            }
            §§goto(addr80);
         }
         §§goto(addr36);
      }
      
      public static function §_-Vp§(param1:int = 64, param2:int = 64, param3:uint = 4.294967295E9, param4:Boolean = false) : §_-4g§.Texture
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:BitmapData = new BitmapData(param1,param2,true,param3);
         var _loc6_:§_-4g§.Texture = §_-su§(_loc5_,false,param4);
         if(_loc7_ || param3)
         {
            _loc5_.dispose();
         }
         return _loc6_;
      }
      
      private static function §_-yJ§(param1:BitmapData, param2:flash.display3D.textures.Texture, param3:Boolean) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:BitmapData = null;
         if(_loc8_ || param2)
         {
            param2.uploadFromBitmapData(param1);
            if(_loc8_ || §_-4g§.Texture)
            {
               if(param3)
               {
                  if(!(_loc9_ && param3))
                  {
                     §§push(param1.width >> 1);
                     if(_loc8_ || param3)
                     {
                        _loc4_ = §§pop();
                        if(!_loc9_)
                        {
                           addr62:
                           §§push(param1.height >> 1);
                           if(_loc8_ || param2)
                           {
                              _loc5_ = §§pop();
                              if(_loc8_ || param1)
                              {
                              }
                              §§goto(addr83);
                           }
                           §§goto(addr82);
                        }
                        §§push(1);
                     }
                     addr82:
                     _loc6_ = §§pop();
                     §§goto(addr83);
                  }
                  addr83:
                  _loc7_ = param1;
                  while(true)
                  {
                     §§push(_loc4_);
                     if(!(_loc9_ && param3))
                     {
                        §§push(1);
                        if(!_loc9_)
                        {
                           §§push(§§pop() >= §§pop());
                           if(!(_loc9_ && param1))
                           {
                              if(!§§pop())
                              {
                                 if(!(_loc9_ && param3))
                                 {
                                    §§pop();
                                    if(!(_loc9_ && §_-4g§.Texture))
                                    {
                                       addr186:
                                       if(_loc5_ < 1)
                                       {
                                          break;
                                       }
                                       _loc7_ = §_-du§(_loc7_,_loc6_ > 1);
                                       if(!(_loc9_ && param2))
                                       {
                                          param2.uploadFromBitmapData(_loc7_,_loc6_++);
                                          if(!_loc9_)
                                          {
                                             addr119:
                                             §§push(_loc4_);
                                             if(!_loc9_)
                                             {
                                                §§push(1);
                                                if(_loc8_ || param3)
                                                {
                                                   §§push(§§pop() >> §§pop());
                                                   if(_loc8_)
                                                   {
                                                      addr133:
                                                      _loc4_ = §§pop();
                                                      if(!_loc9_)
                                                      {
                                                         addr136:
                                                         §§push(_loc5_);
                                                         if(_loc8_ || param3)
                                                         {
                                                            addr144:
                                                            §§push(§§pop() >> 1);
                                                         }
                                                         _loc5_ = §§pop();
                                                      }
                                                      continue;
                                                   }
                                                }
                                                §§goto(addr144);
                                             }
                                             §§goto(addr133);
                                          }
                                          §§goto(addr136);
                                       }
                                       §§goto(addr119);
                                    }
                                    §§goto(addr201);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr186);
                  }
                  if(!_loc9_)
                  {
                     if(_loc7_ != param1)
                     {
                        if(!_loc8_)
                        {
                        }
                     }
                  }
                  §§goto(addr201);
               }
               addr201:
               _loc7_.dispose();
               return;
            }
            §§goto(addr62);
         }
         §§goto(addr83);
      }
      
      private static function §_-du§(param1:BitmapData, param2:Boolean) : BitmapData
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:BitmapData = new BitmapData(Math.max(1,param1.width >> 1),Math.max(1,param1.height >> 1),true,0);
         var _loc4_:Matrix;
         (_loc4_ = new Matrix()).scale(0.5,0.5);
         if(!(_loc5_ && param2))
         {
            _loc3_.draw(param1,_loc4_,null,null,null,true);
            if(_loc6_ || _loc3_)
            {
               if(param2)
               {
                  if(!_loc5_)
                  {
                     addr82:
                     param1.dispose();
                  }
               }
               return _loc3_;
            }
         }
         §§goto(addr82);
      }
      
      public function dispose() : void
      {
      }
      
      public function updateBaseTexture(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : void
      {
      }
      
      public function adjustVertexData(param1:§_-dF§) : §_-dF§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc2_:§_-dF§ = param1.clone();
         if(!_loc6_)
         {
            if(this.frame)
            {
               if(!(_loc6_ && param1))
               {
                  §§push(this.§_-ed§.width + this.§_-ed§.x - this.width);
                  if(!_loc6_)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc6_ && this))
                     {
                        _loc3_ = §§pop();
                        §§push(this.§_-ed§.height + this.§_-ed§.y - this.height);
                        if(_loc5_ || _loc2_)
                        {
                           addr78:
                           §§push(Number(§§pop()));
                        }
                     }
                     _loc4_ = §§pop();
                     _loc2_.§_-w5§(0,-this.§_-ed§.x,-this.§_-ed§.y);
                     §§push(_loc2_);
                     §§push(1);
                     §§push(_loc3_);
                     if(!_loc6_)
                     {
                        §§push(-§§pop());
                     }
                     §§pop().§_-w5§(§§pop(),§§pop(),-this.§_-ed§.y);
                     if(!(_loc6_ && this))
                     {
                        §§push(_loc2_);
                        §§push(2);
                        §§push(-this.§_-ed§.x);
                        §§push(_loc4_);
                        if(!(_loc6_ && param1))
                        {
                           §§push(-§§pop());
                        }
                        §§pop().§_-w5§(§§pop(),§§pop(),§§pop());
                     }
                     §§push(_loc2_);
                     §§push(3);
                     §§push(_loc3_);
                     if(!(_loc6_ && param1))
                     {
                        §§push(-§§pop());
                     }
                     §§push(_loc4_);
                     if(_loc5_ || _loc3_)
                     {
                        §§push(-§§pop());
                     }
                     §§pop().§_-w5§(§§pop(),§§pop(),§§pop());
                     §§goto(addr153);
                  }
                  §§goto(addr78);
               }
            }
         }
         addr153:
         return _loc2_;
      }
      
      public function get frame() : Rectangle
      {
         return this.§_-ed§;
      }
      
      public function set frame(param1:Rectangle) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this);
            if(!_loc2_)
            {
               §§pop().§_-ed§ = !!param1 ? param1.clone() : null;
               §§goto(addr47);
            }
            §§goto(addr40);
         }
         addr47:
      }
      
      public function get repeat() : Boolean
      {
         return this.§_-PU§;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-PU§ = param1;
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
      
      public function get base() : TextureBase
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
   }
}
