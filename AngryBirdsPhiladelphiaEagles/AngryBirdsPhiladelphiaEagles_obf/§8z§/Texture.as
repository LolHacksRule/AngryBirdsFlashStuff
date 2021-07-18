package §8z§
{
   import §+§.§0&§;
   import §+§.getNextPowerOfTwo;
   import §5Z§.§[Z§;
   import §7!O§.§-!C§;
   import §7!O§.§^!§;
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
       
      
      private var §9@§:Rectangle;
      
      private var §`Y§:Boolean;
      
      public function Texture()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            while(true)
            {
               if(getQualifiedClassName(this) != "starling.textures::Texture")
               {
                  loop1:
                  while(true)
                  {
                     this.§`Y§ = false;
                     if(!_loc1_)
                     {
                        break;
                     }
                     addr69:
                     while(true)
                     {
                        continue loop1;
                     }
                  }
                  if(!_loc1_)
                  {
                     break;
                  }
               }
               if(_loc2_ || this)
               {
                  throw new §^!§();
               }
            }
            return;
         }
         §§goto(addr69);
      }
      
      public static function §@!-§(param1:Context3D, param2:Bitmap, param3:Boolean = true, param4:Boolean = false) : §8z§.Texture
      {
         return §@"§(param1,param2.bitmapData,param3,param4);
      }
      
      public static function §@"§(param1:Context3D, param2:BitmapData, param3:Boolean = true, param4:Boolean = false) : §8z§.Texture
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc9_:BitmapData = null;
         var _loc10_:§5y§ = null;
         var _loc11_:flash.display3D.textures.Texture = null;
         var _loc5_:int = param2.width;
         var _loc6_:int = param2.height;
         §§push(_loc5_);
         if(!(_loc12_ && param2))
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
         if(!(_loc12_ && §8z§.Texture))
         {
            if(param1 != null)
            {
               if(!(_loc12_ && param3))
               {
                  §§push(int(getNextPowerOfTwo(param2.width)));
                  if(_loc13_)
                  {
                     _loc7_ = §§pop();
                     addr82:
                     if(_loc13_)
                     {
                        §§push(int(getNextPowerOfTwo(param2.height)));
                     }
                     _loc11_ = param1.createTexture(_loc7_,_loc8_,Context3DTextureFormat.BGRA,param4);
                     if(!_loc12_)
                     {
                        §§push(_loc7_);
                        if(!(_loc12_ && param2))
                        {
                           §§push(_loc5_);
                           if(!_loc12_)
                           {
                              §§push(§§pop() > §§pop());
                              if(_loc13_)
                              {
                                 if(!§§pop())
                                 {
                                    if(!(_loc12_ && param1))
                                    {
                                       §§pop();
                                       if(_loc13_ || param3)
                                       {
                                          addr137:
                                          addr136:
                                          addr135:
                                          if(_loc8_ > _loc6_)
                                          {
                                             if(!_loc12_)
                                             {
                                                addr140:
                                                (_loc9_ = new BitmapData(_loc7_,_loc8_,true,0)).copyPixels(param2,param2.rect,new Point(0,0));
                                                param2 = _loc9_;
                                             }
                                             addr165:
                                             _loc10_ = new §5y§(_loc11_,_loc7_,_loc8_,param3,true,param4);
                                             if(!_loc12_)
                                             {
                                                §§push(§[Z§.§1'§);
                                                loop0:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         while(true)
                                                         {
                                                            _loc9_.dispose();
                                                            addr266:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                         addr264:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc5_);
                                                         loop4:
                                                         while(true)
                                                         {
                                                            §§push(_loc7_);
                                                            loop5:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               if(!_loc12_)
                                                               {
                                                                  if(_loc12_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     loop8:
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        loop7:
                                                                        for(; _loc13_ || param3; continue loop8)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc6_);
                                                                              if(!(_loc12_ && param1))
                                                                              {
                                                                                 §§push(_loc8_);
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    addr204:
                                                                                    §§push(§§pop() == §§pop());
                                                                                    if(_loc13_ || param1)
                                                                                    {
                                                                                       while(§§pop())
                                                                                       {
                                                                                          if(_loc13_)
                                                                                          {
                                                                                             break loop5;
                                                                                          }
                                                                                          if(!(_loc12_ && param3))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue loop7;
                                                                                          §§goto(addr204);
                                                                                       }
                                                                                       return new §>6§(_loc10_,new Rectangle(0,0,_loc5_,_loc6_),true);
                                                                                       addr212:
                                                                                    }
                                                                                    continue loop8;
                                                                                 }
                                                                                 continue loop5;
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                        }
                                                                        §§goto(addr266);
                                                                     }
                                                                     addr250:
                                                                  }
                                                                  §§goto(addr212);
                                                               }
                                                               §§goto(addr250);
                                                            }
                                                            if(_loc13_)
                                                            {
                                                               if(_loc13_)
                                                               {
                                                                  return _loc10_;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr264);
                                                            }
                                                         }
                                                      }
                                                      addr230:
                                                   }
                                                   while(true)
                                                   {
                                                      _loc10_.§--§(param2);
                                                      §§goto(addr230);
                                                   }
                                                }
                                             }
                                             §§goto(addr258);
                                          }
                                          uploadBitmapData(_loc11_,param2,param3);
                                          §§goto(addr165);
                                       }
                                       §§goto(addr140);
                                    }
                                 }
                              }
                              §§goto(addr137);
                           }
                           §§goto(addr136);
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr165);
                  }
                  _loc8_ = §§pop();
               }
               §§goto(addr82);
            }
            §§goto(addr165);
         }
         §§goto(addr82);
      }
      
      public static function § K§(param1:Context3D, param2:ByteArray) : §8z§.Texture
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(!_loc11_)
         {
            if(param1 == null)
            {
               if(_loc10_)
               {
                  §§goto(addr23);
               }
            }
            var _loc3_:String = String.fromCharCode(param2[0],param2[1],param2[2]);
            if(_loc10_ || param1)
            {
               §§push(_loc3_);
               if(_loc10_ || _loc3_)
               {
                  if(§§pop() != "ATF")
                  {
                     if(!_loc11_)
                     {
                        §§goto(addr58);
                     }
                  }
                  else
                  {
                     if(param2[6] == 2)
                     {
                        addr80:
                        §§push(Context3DTextureFormat.COMPRESSED);
                        if(!_loc11_)
                        {
                           addr91:
                           §§push(§§pop());
                        }
                     }
                     else
                     {
                        §§push(Context3DTextureFormat.BGRA);
                        if(_loc10_)
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
                     var _loc9_:§5y§ = new §5y§(_loc8_,_loc5_,_loc6_,_loc7_ > 1,false);
                     if(_loc10_)
                     {
                        if(§[Z§.§1'§)
                        {
                           if(!_loc11_)
                           {
                              addr156:
                              _loc9_.§--§(param2);
                           }
                        }
                        return _loc9_;
                     }
                     §§goto(addr156);
                  }
                  §§goto(addr80);
               }
               §§goto(addr91);
            }
            addr58:
            throw new ArgumentError("Invalid ATF data");
         }
         addr23:
         throw new §-!C§();
      }
      
      public static function §,_§(param1:§8z§.Texture, param2:Rectangle = null, param3:Rectangle = null) : §8z§.Texture
      {
         var _loc4_:§8z§.Texture;
         (_loc4_ = new §>6§(param1,param2)).§9@§ = param3;
         return _loc4_;
      }
      
      public static function §[!3§(param1:Context3D, param2:int = 64, param3:int = 64, param4:uint = 4.294967295E9, param5:Boolean = false) : §8z§.Texture
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:BitmapData = new BitmapData(param2,param3,true,param4);
         var _loc7_:§8z§.Texture = §@"§(param1,_loc6_,false,param5);
         if(_loc8_ || §8z§.Texture)
         {
            if(!§[Z§.§1'§)
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
            loop0:
            while(param3)
            {
               loop1:
               for(; !(_loc10_ && §8z§.Texture); if(!(_loc11_ || §8z§.Texture))
               {
                  continue;
               },if(false)
               {
                  §§goto(addr58);
               },_loc7_ = new BitmapData(_loc4_,_loc5_,true,0),_loc8_ = new Matrix(0.5,0,0,0.5),_loc9_ = new Rectangle(),addr162:,§§push(_loc4_),if(!_loc10_)
               {
                  addr167:
                  §§push(1);
                  if(_loc11_ || param1)
                  {
                     §§push(§§pop() >= §§pop());
                     if(!(_loc10_ && §8z§.Texture))
                     {
                        if(!§§pop())
                        {
                           addr184:
                           §§pop();
                           addr185:
                           if(_loc11_ || param2)
                           {
                              §§push(_loc5_);
                              if(_loc11_ || param1)
                              {
                                 if(_loc11_)
                                 {
                                    §§push(1);
                                    if(!_loc10_)
                                    {
                                       §§push(§§pop() >= §§pop());
                                       if(_loc11_ || param1)
                                       {
                                          addr140:
                                          if(!§§pop())
                                          {
                                             if(_loc11_ || param1)
                                             {
                                                _loc7_.dispose();
                                                if(_loc11_)
                                                {
                                                   if(!(_loc10_ && param1))
                                                   {
                                                      if(false)
                                                      {
                                                         §§goto(addr162);
                                                      }
                                                      break loop0;
                                                   }
                                                   addr209:
                                                   if(_loc11_ || param3)
                                                   {
                                                      §§goto(addr162);
                                                   }
                                                   _loc8_.scale(0.5,0.5);
                                                   addr221:
                                                   _loc4_ >>= 1;
                                                   addr220:
                                                   §§push(_loc5_);
                                                   if(!_loc10_)
                                                   {
                                                      addr198:
                                                      §§push(1);
                                                      if(_loc11_)
                                                      {
                                                         addr201:
                                                         §§push(§§pop() >> §§pop());
                                                         if(!(_loc10_ && param2))
                                                         {
                                                            _loc5_ = §§pop();
                                                            §§goto(addr209);
                                                         }
                                                         §§goto(addr221);
                                                      }
                                                      §§goto(addr220);
                                                   }
                                                   addr219:
                                                   §§goto(addr219);
                                                   addr247:
                                                   addr228:
                                                }
                                                §§goto(addr185);
                                             }
                                             _loc9_.height = _loc5_;
                                             _loc7_.fillRect(_loc9_,0);
                                             _loc7_.draw(param2,_loc8_,null,null,null,true);
                                             param1.uploadFromBitmapData(_loc7_,_loc6_++);
                                             §§goto(addr247);
                                             addr274:
                                          }
                                          _loc9_.width = _loc4_;
                                          §§goto(addr274);
                                       }
                                       §§goto(addr184);
                                    }
                                    §§goto(addr167);
                                 }
                                 §§goto(addr201);
                              }
                              §§goto(addr162);
                           }
                           §§goto(addr228);
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr184);
                  }
                  §§goto(addr198);
               },§§goto(addr209))
               {
                  while(true)
                  {
                     §§push(param2.width >> 1);
                     loop3:
                     while(true)
                     {
                        _loc4_ = §§pop();
                        loop4:
                        while(true)
                        {
                           addr58:
                           while(true)
                           {
                              §§push(param2.height >> 1);
                              loop6:
                              while(true)
                              {
                                 _loc5_ = §§pop();
                                 while(_loc11_)
                                 {
                                    §§push(1);
                                    if(!(_loc10_ && param2))
                                    {
                                       if(!_loc10_)
                                       {
                                          _loc6_ = §§pop();
                                          if(_loc11_)
                                          {
                                             continue loop1;
                                          }
                                          continue;
                                       }
                                       continue loop3;
                                    }
                                    continue loop6;
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr77);
      }
      
      static function uploadAtfData(param1:flash.display3D.textures.Texture, param2:ByteArray, param3:int = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            param1.uploadCompressedTextureFromByteArray(param2,param3);
         }
      }
      
      public function dispose() : void
      {
      }
      
      public function adjustVertexData(param1:§0&§, param2:int, param3:int) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         if(this.§9@§)
         {
            loop0:
            for(; param3 == 4; while(_loc6_ || param1)
            {
               §§push(this.§9@§.height + this.§9@§.y - this.height);
               if(_loc6_ || this)
               {
                  §§goto(addr140);
               }
               §§goto(addr148);
            })
            {
               loop1:
               while(true)
               {
                  §§push(this.§9@§.width + this.§9@§.x - this.width);
                  if(!_loc7_)
                  {
                     §§push(Number(§§pop()));
                  }
                  while(true)
                  {
                     _loc4_ = §§pop();
                     continue loop0;
                     addr140:
                     if(!(_loc7_ && param1))
                     {
                        addr148:
                        _loc5_ = §§pop();
                        while(!_loc7_)
                        {
                           param1.§7!6§(param2,-this.§9@§.x,-this.§9@§.y);
                           if(!_loc7_)
                           {
                              §§push(param1);
                              §§push(param2 + 1);
                              §§push(_loc4_);
                              if(_loc6_ || param2)
                              {
                                 §§push(-§§pop());
                              }
                              §§pop().§7!6§(§§pop(),§§pop(),-this.§9@§.y);
                              §§push(param1);
                              §§push(param2 + 2);
                              §§push(-this.§9@§.x);
                              §§push(_loc5_);
                              if(!(_loc7_ && param1))
                              {
                                 §§push(-§§pop());
                              }
                              §§pop().§7!6§(§§pop(),§§pop(),§§pop());
                              §§push(param1);
                              §§push(param2 + 3);
                              §§push(_loc4_);
                              if(!(_loc7_ && param2))
                              {
                                 §§push(-§§pop());
                              }
                              §§push(_loc5_);
                              if(_loc6_ || param3)
                              {
                                 §§push(-§§pop());
                              }
                              §§pop().§7!6§(§§pop(),§§pop(),§§pop());
                              if(!(_loc7_ && param2))
                              {
                                 §§goto(addr21);
                              }
                              continue loop0;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
            throw new ArgumentError("Textures with a frame can only be used on quads");
         }
         addr21:
      }
      
      public function get §#6§() : Rectangle
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            return !!this.§9@§ ? this.§9@§.clone() : new Rectangle(0,0,this.width,this.height);
         }
         §§goto(addr32);
      }
      
      public function get clipping() : Rectangle
      {
         return new Rectangle(0,0,this.width,this.height);
      }
      
      public function get repeat() : Boolean
      {
         return this.§`Y§;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§`Y§ = param1;
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
      
      public function get root() : §8z§.Texture
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
      
      public function get parent() : §8z§.Texture
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
