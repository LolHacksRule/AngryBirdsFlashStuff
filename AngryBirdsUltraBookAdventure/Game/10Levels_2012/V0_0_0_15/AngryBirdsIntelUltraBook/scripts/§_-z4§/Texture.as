package §_-z4§
{
   import §_-0Ea§.§_-AY§;
   import §_-JM§.§_-03y§;
   import §_-JM§.§_-05z§;
   import §_-UD§.§_-9f§;
   import §_-UD§.getNextPowerOfTwo;
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
       
      
      private var §_-Q0§:Rectangle;
      
      private var §_-05M§:Boolean;
      
      public function Texture()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
         loop0:
         do
         {
            if(getQualifiedClassName(this) != "starling.textures::Texture")
            {
               while(true)
               {
                  this.§_-05M§ = false;
                  if(_loc1_ || this)
                  {
                     break;
                  }
                  continue loop0;
               }
               return;
            }
         }
         while(!_loc1_);
         
         throw new §_-03y§();
      }
      
      public static function §_-Qi§(param1:Context3D, param2:Bitmap, param3:Boolean = true, param4:Boolean = false) : §_-z4§.Texture
      {
         return §_-06W§(param1,param2.bitmapData,param3,param4);
      }
      
      public static function §_-06W§(param1:Context3D, param2:BitmapData, param3:Boolean = true, param4:Boolean = false) : §_-z4§.Texture
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc9_:BitmapData = null;
         var _loc10_:§_-Y6§ = null;
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
         if(_loc12_)
         {
            §§push(int(§§pop()));
         }
         var _loc8_:* = §§pop();
         if(_loc12_ || param2)
         {
            if(param1 != null)
            {
               if(!(_loc13_ && param3))
               {
                  addr60:
                  §§push(int(getNextPowerOfTwo(param2.width)));
                  if(!(_loc13_ && param1))
                  {
                     _loc7_ = §§pop();
                     if(_loc12_ || param2)
                     {
                        addr85:
                        _loc8_ = int(getNextPowerOfTwo(param2.height));
                     }
                     _loc11_ = param1.createTexture(_loc7_,_loc8_,Context3DTextureFormat.BGRA,param4);
                     if(!(_loc13_ && param3))
                     {
                        §§push(_loc7_);
                        if(!(_loc13_ && param1))
                        {
                           §§push(_loc5_);
                           if(!_loc13_)
                           {
                              §§push(§§pop() > §§pop());
                              if(!(_loc13_ && §_-z4§.Texture))
                              {
                                 if(!§§pop())
                                 {
                                    if(!_loc13_)
                                    {
                                       §§pop();
                                       if(_loc12_ || param2)
                                       {
                                          addr136:
                                          addr135:
                                          addr134:
                                          if(_loc8_ > _loc6_)
                                          {
                                             if(!(_loc13_ && param1))
                                             {
                                                addr154:
                                                (_loc9_ = new BitmapData(_loc7_,_loc8_,true,0)).copyPixels(param2,param2.rect,new Point(0,0));
                                                param2 = _loc9_;
                                             }
                                             addr179:
                                             _loc10_ = new §_-Y6§(_loc11_,_loc7_,_loc8_,param3,true,param4);
                                             if(!(_loc13_ && param3))
                                             {
                                                §§push(§_-AY§.§_-B4§);
                                                loop0:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc12_ || param1)
                                                      {
                                                         _loc10_.§_-32§(param2);
                                                      }
                                                      while(true)
                                                      {
                                                      }
                                                      addr309:
                                                   }
                                                   else if(_loc9_)
                                                   {
                                                      while(true)
                                                      {
                                                         _loc9_.dispose();
                                                         addr295:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      addr293:
                                                   }
                                                   loop4:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_);
                                                      loop5:
                                                      while(true)
                                                      {
                                                         §§push(_loc7_);
                                                         addr267:
                                                         addr287:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            continue loop0;
                                                         }
                                                         loop11:
                                                         while(true)
                                                         {
                                                            §§push(_loc6_);
                                                            if(_loc13_ && param1)
                                                            {
                                                               continue loop5;
                                                            }
                                                            §§push(_loc8_);
                                                            if(!(_loc13_ && param1))
                                                            {
                                                               addr228:
                                                               §§push(§§pop() == §§pop());
                                                               if(_loc12_ || param1)
                                                               {
                                                                  if(_loc12_ || param1)
                                                                  {
                                                                     while(§§pop())
                                                                     {
                                                                        if(_loc12_ || param2)
                                                                        {
                                                                           return _loc10_;
                                                                        }
                                                                        if(_loc13_ && param2)
                                                                        {
                                                                           while(!_loc13_)
                                                                           {
                                                                              if(_loc12_)
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                              §§goto(addr293);
                                                                           }
                                                                           continue loop4;
                                                                           addr283:
                                                                        }
                                                                        if(!_loc13_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr309);
                                                                     }
                                                                     return new §_-ud§(_loc10_,new Rectangle(0,0,_loc5_,_loc6_),true);
                                                                     addr243:
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               addr282:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  §§goto(addr228);
                                                               }
                                                               §§goto(addr283);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr267);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr287);
                                          }
                                          uploadBitmapData(_loc11_,param2,param3);
                                          §§goto(addr179);
                                       }
                                       §§goto(addr154);
                                    }
                                 }
                              }
                              §§goto(addr136);
                           }
                           §§goto(addr135);
                        }
                        §§goto(addr134);
                     }
                     §§goto(addr179);
                  }
               }
               §§goto(addr85);
            }
            §§goto(addr179);
         }
         §§goto(addr60);
      }
      
      public static function §_-dj§(param1:Context3D, param2:ByteArray) : §_-z4§.Texture
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc10_)
         {
            if(param1 == null)
            {
               if(_loc10_ || param1)
               {
                  throw new §_-05z§();
               }
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
                     §§goto(addr53);
                  }
               }
               else
               {
                  if(param2[6] == 2)
                  {
                     addr65:
                     §§push(Context3DTextureFormat.COMPRESSED);
                     if(_loc10_ || §_-z4§.Texture)
                     {
                        addr91:
                        §§push(§§pop());
                     }
                     §§goto(addr91);
                  }
                  else
                  {
                     §§push(Context3DTextureFormat.BGRA);
                     if(!_loc11_)
                     {
                        §§goto(addr91);
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
                  var _loc9_:§_-Y6§ = new §_-Y6§(_loc8_,_loc5_,_loc6_,_loc7_ > 1,false);
                  if(!(_loc11_ && param2))
                  {
                     if(§_-AY§.§_-B4§)
                     {
                        if(!_loc11_)
                        {
                           addr161:
                           _loc9_.§_-32§(param2);
                        }
                     }
                     return _loc9_;
                  }
                  §§goto(addr161);
               }
               §§goto(addr65);
            }
            §§goto(addr91);
         }
         addr53:
         throw new ArgumentError("Invalid ATF data");
      }
      
      public static function §_-Xd§(param1:§_-z4§.Texture, param2:Rectangle = null, param3:Rectangle = null) : §_-z4§.Texture
      {
         var _loc4_:§_-z4§.Texture;
         (_loc4_ = new §_-ud§(param1,param2)).§_-Q0§ = param3;
         return _loc4_;
      }
      
      public static function §_-WQ§(param1:Context3D, param2:int = 64, param3:int = 64, param4:uint = 4.294967295E9, param5:Boolean = false) : §_-z4§.Texture
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:BitmapData = new BitmapData(param2,param3,true,param4);
         var _loc7_:§_-z4§.Texture = §_-06W§(param1,_loc6_,false,param5);
         if(_loc8_)
         {
            if(!§_-AY§.§_-B4§)
            {
               if(!_loc9_)
               {
                  addr49:
                  _loc6_.dispose();
               }
            }
            return _loc7_;
         }
         §§goto(addr49);
      }
      
      static function uploadBitmapData(param1:flash.display3D.textures.Texture, param2:BitmapData, param3:Boolean) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:int = 0;
         var _loc7_:BitmapData = null;
         var _loc8_:Matrix = null;
         var _loc9_:Rectangle = null;
         if(_loc10_)
         {
            param1.uploadFromBitmapData(param2);
            while(param3)
            {
               loop1:
               for(; !_loc11_; while(true)
               {
                  if(!(_loc11_ && param3))
                  {
                     §§push(1);
                     if(!_loc10_)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop1;
               },§§goto(addr55))
               {
                  while(true)
                  {
                     §§push(param2.width >> 1);
                     loop3:
                     while(true)
                     {
                        _loc4_ = §§pop();
                        addr76:
                        while(true)
                        {
                           addr50:
                           while(true)
                           {
                              §§push(param2.height >> 1);
                              addr55:
                              while(!_loc11_)
                              {
                                 _loc5_ = §§pop();
                                 continue loop1;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr71);
      }
      
      static function uploadAtfData(param1:flash.display3D.textures.Texture, param2:ByteArray, param3:int = 0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || §_-z4§.Texture)
         {
            param1.uploadCompressedTextureFromByteArray(param2,param3);
         }
      }
      
      public function dispose() : void
      {
      }
      
      public function adjustVertexData(param1:§_-9f§, param2:int, param3:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(!_loc6_)
         {
            if(this.§_-Q0§)
            {
               loop0:
               for(; param3 == 4; while(true)
               {
                  if(_loc6_ && param2)
                  {
                     continue loop0;
                  }
                  §§push(param1);
                  §§push(param2 + 1);
                  §§push(_loc4_);
                  if(_loc7_ || this)
                  {
                     §§push(-§§pop());
                  }
                  §§pop().§_-ZN§(§§pop(),§§pop(),-this.§_-Q0§.y);
                  §§goto(addr114);
               },§§goto(addr182))
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§_-Q0§.width + this.§_-Q0§.x - this.width);
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
                              §§push(this.§_-Q0§.height + this.§_-Q0§.y - this.height);
                              if(!(_loc6_ && param3))
                              {
                                 if(_loc6_ && param2)
                                 {
                                    break;
                                 }
                                 §§push(Number(§§pop()));
                              }
                              if(!(_loc7_ || param3))
                              {
                                 continue loop3;
                              }
                              _loc5_ = §§pop();
                              while(true)
                              {
                                 param1.§_-ZN§(param2,-this.§_-Q0§.x,-this.§_-Q0§.y);
                                 continue loop0;
                                 loop8:
                                 while(!(_loc6_ && param2))
                                 {
                                    if(_loc6_)
                                    {
                                       break loop0;
                                    }
                                    §§push(param1);
                                    §§push(param2 + 3);
                                    §§push(_loc4_);
                                    if(!(_loc6_ && param1))
                                    {
                                       §§push(-§§pop());
                                    }
                                    §§push(_loc5_);
                                    if(!_loc6_)
                                    {
                                       §§push(-§§pop());
                                    }
                                    §§pop().§_-ZN§(§§pop(),§§pop(),§§pop());
                                    if(!(_loc7_ || param2))
                                    {
                                       continue;
                                    }
                                    if(_loc7_)
                                    {
                                       if(!_loc6_)
                                       {
                                          if(_loc7_)
                                          {
                                             §§goto(addr24);
                                          }
                                          continue loop4;
                                       }
                                       continue loop0;
                                    }
                                    addr114:
                                    while(true)
                                    {
                                       if(_loc7_)
                                       {
                                          §§push(param1);
                                          §§push(param2 + 2);
                                          §§push(-this.§_-Q0§.x);
                                          §§push(_loc5_);
                                          if(_loc7_)
                                          {
                                             §§push(-§§pop());
                                          }
                                          §§pop().§_-ZN§(§§pop(),§§pop(),§§pop());
                                          continue loop8;
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               throw new ArgumentError("Textures with a frame can only be used on quads");
            }
            addr24:
            return;
         }
         §§goto(addr181);
      }
      
      public function get frame() : Rectangle
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            return !!this.§_-Q0§ ? this.§_-Q0§.clone() : new Rectangle(0,0,this.width,this.height);
         }
         §§goto(addr31);
      }
      
      public function get clipping() : Rectangle
      {
         return new Rectangle(0,0,this.width,this.height);
      }
      
      public function get repeat() : Boolean
      {
         return this.§_-05M§;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§_-05M§ = param1;
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
      
      public function get root() : §_-z4§.Texture
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
      
      public function get parent() : §_-z4§.Texture
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
