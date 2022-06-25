package §?]§
{
   import §2m§.§<!?§;
   import §7H§.§'!w§;
   import §7H§.getNextPowerOfTwo;
   import §[z§.§+"#§;
   import §[z§.§@F§;
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
       
      
      private var §5_§:Rectangle;
      
      private var §2!b§:Boolean;
      
      public function Texture()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
            loop0:
            do
            {
               if(getQualifiedClassName(this) != "starling.textures::Texture")
               {
                  while(true)
                  {
                     this.§2!b§ = false;
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  return;
               }
               addr49:
            }
            while(!_loc2_);
            
            throw new §@F§();
         }
         while(true)
         {
            §§goto(addr49);
         }
      }
      
      public static function §`!s§(param1:Context3D, param2:Bitmap, param3:Boolean = true, param4:Boolean = false) : §?]§.Texture
      {
         return §=u§(param1,param2.bitmapData,param3,param4);
      }
      
      public static function §=u§(param1:Context3D, param2:BitmapData, param3:Boolean = true, param4:Boolean = false) : §?]§.Texture
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc9_:BitmapData = null;
         var _loc10_:§!!J§ = null;
         var _loc11_:flash.display3D.textures.Texture = null;
         var _loc5_:int = param2.width;
         var _loc6_:int = param2.height;
         §§push(_loc5_);
         if(_loc13_ || §?]§.Texture)
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
               if(_loc13_ || param1)
               {
                  §§push(int(getNextPowerOfTwo(param2.width)));
                  if(!(_loc12_ && §?]§.Texture))
                  {
                     _loc7_ = §§pop();
                     addr92:
                     if(!(_loc12_ && param1))
                     {
                        addr86:
                        §§push(int(getNextPowerOfTwo(param2.height)));
                     }
                     _loc11_ = param1.createTexture(_loc7_,_loc8_,Context3DTextureFormat.BGRA,param4);
                     if(!(_loc12_ && param3))
                     {
                        §§push(_loc7_);
                        if(_loc13_)
                        {
                           §§push(_loc5_);
                           if(!_loc12_)
                           {
                              §§push(§§pop() > §§pop());
                              if(_loc13_ || param3)
                              {
                                 if(!§§pop())
                                 {
                                    if(!(_loc12_ && param2))
                                    {
                                       addr131:
                                       §§pop();
                                       addr180:
                                       if(!_loc12_)
                                       {
                                          addr136:
                                          §§push(_loc8_ > _loc6_);
                                       }
                                       _loc10_ = new §!!J§(_loc11_,_loc7_,_loc8_,param3,true,param4);
                                       if(_loc13_)
                                       {
                                          §§push(§<!?§.§&"#§);
                                          loop0:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                if(_loc9_)
                                                {
                                                   if(_loc13_ || §?]§.Texture)
                                                   {
                                                      if(!(_loc12_ && param2))
                                                      {
                                                         _loc9_.dispose();
                                                      }
                                                      else
                                                      {
                                                         addr312:
                                                         _loc10_.§7!k§(param2);
                                                         loop9:
                                                         while(true)
                                                         {
                                                            addr258:
                                                            loop2:
                                                            while(true)
                                                            {
                                                               §§push(_loc5_);
                                                               loop3:
                                                               while(true)
                                                               {
                                                                  §§push(_loc7_);
                                                                  addr261:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() == §§pop());
                                                                     addr262:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           while(!_loc12_)
                                                                           {
                                                                              §§pop();
                                                                           }
                                                                           continue loop0;
                                                                           addr264:
                                                                        }
                                                                        else
                                                                        {
                                                                           addr239:
                                                                        }
                                                                        while(§§pop())
                                                                        {
                                                                           if(_loc13_ || param3)
                                                                           {
                                                                              return _loc10_;
                                                                           }
                                                                           addr250:
                                                                           if(_loc13_ || param2)
                                                                           {
                                                                              break;
                                                                           }
                                                                           addr267:
                                                                           while(true)
                                                                           {
                                                                              if(_loc13_ || §?]§.Texture)
                                                                              {
                                                                                 continue loop3;
                                                                              }
                                                                              addr306:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    continue loop2;
                                                                                 }
                                                                                 continue loop9;
                                                                              }
                                                                              §§goto(addr250);
                                                                           }
                                                                           continue loop3;
                                                                        }
                                                                        return new §1P§(_loc10_,new Rectangle(0,0,_loc5_,_loc6_),true);
                                                                        §§goto(addr267);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr315:
                                                      }
                                                      §§goto(addr315);
                                                   }
                                                   §§goto(addr306);
                                                }
                                                §§goto(addr258);
                                             }
                                             §§goto(addr312);
                                          }
                                       }
                                       §§goto(addr312);
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc13_ || param1)
                                    {
                                       addr155:
                                       (_loc9_ = new BitmapData(_loc7_,_loc8_,true,0)).copyPixels(param2,param2.rect,new Point(0,0));
                                       param2 = _loc9_;
                                    }
                                    §§goto(addr180);
                                 }
                                 uploadBitmapData(_loc11_,param2,param3);
                                 §§goto(addr180);
                              }
                              §§goto(addr131);
                           }
                        }
                        §§goto(addr136);
                     }
                     §§goto(addr155);
                  }
                  _loc8_ = §§pop();
                  §§goto(addr92);
               }
               §§goto(addr86);
            }
            §§goto(addr131);
         }
         §§goto(addr92);
      }
      
      public static function §%!M§(param1:Context3D, param2:ByteArray) : §?]§.Texture
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc10_)
         {
            if(param1 == null)
            {
               if(!_loc11_)
               {
                  throw new §+"#§();
               }
            }
         }
         var _loc3_:String = String.fromCharCode(param2[0],param2[1],param2[2]);
         if(!_loc11_)
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
                  addr65:
                  §§push(Context3DTextureFormat.COMPRESSED);
                  if(!_loc10_)
                  {
                  }
                  §§push(§§pop());
               }
               else if(param2[6] == 2)
               {
                  §§goto(addr65);
               }
               else
               {
                  §§push(Context3DTextureFormat.BGRA);
                  if(_loc10_)
                  {
                     §§goto(addr65);
                  }
               }
               §§goto(addr65);
            }
            var _loc4_:* = §§pop();
            var _loc5_:int = Math.pow(2,param2[7]);
            var _loc6_:int = Math.pow(2,param2[8]);
            var _loc7_:int = param2[9];
            var _loc8_:flash.display3D.textures.Texture = param1.createTexture(_loc5_,_loc6_,_loc4_,false);
            if(_loc10_ || §?]§.Texture)
            {
               uploadAtfData(_loc8_,param2);
            }
            var _loc9_:§!!J§ = new §!!J§(_loc8_,_loc5_,_loc6_,_loc7_ > 1,false);
            if(_loc10_)
            {
               if(§<!?§.§&"#§)
               {
                  if(_loc10_ || §?]§.Texture)
                  {
                     _loc9_.§7!k§(param2);
                  }
               }
            }
            return _loc9_;
         }
         §§goto(addr65);
      }
      
      public static function § N§(param1:§?]§.Texture, param2:Rectangle = null, param3:Rectangle = null) : §?]§.Texture
      {
         var _loc4_:§?]§.Texture;
         (_loc4_ = new §1P§(param1,param2)).§5_§ = param3;
         return _loc4_;
      }
      
      public static function §<!T§(param1:Context3D, param2:int = 64, param3:int = 64, param4:uint = 4.294967295E9, param5:Boolean = false) : §?]§.Texture
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:BitmapData = new BitmapData(param2,param3,true,param4);
         var _loc7_:§?]§.Texture = §=u§(param1,_loc6_,false,param5);
         if(!_loc9_)
         {
            if(!§<!?§.§&"#§)
            {
               if(!(_loc9_ && param1))
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
         var _loc6_:int = 0;
         var _loc7_:BitmapData = null;
         var _loc8_:Matrix = null;
         var _loc9_:Rectangle = null;
         if(_loc11_)
         {
            param1.uploadFromBitmapData(param2);
         }
         loop0:
         for(; param3; if(!(_loc11_ || param1))
         {
            continue;
         },if(false)
         {
            §§goto(addr58);
         },_loc7_ = new BitmapData(_loc4_,_loc5_,true,0),_loc8_ = new Matrix(0.5,0,0,0.5),_loc9_ = new Rectangle(),addr185:,§§push(_loc4_),§§push(1),if(_loc11_ || param2)
         {
            §§push(§§pop() >= §§pop());
            if(_loc11_)
            {
               if(!§§pop())
               {
                  addr200:
                  §§pop();
                  addr201:
                  if(!(_loc10_ && param2))
                  {
                     §§push(_loc5_);
                     if(_loc11_)
                     {
                        if(!(_loc10_ && param1))
                        {
                           if(!_loc10_)
                           {
                              §§push(1);
                              if(_loc11_ || §?]§.Texture)
                              {
                                 if(_loc11_ || param2)
                                 {
                                    §§push(§§pop() >= §§pop());
                                    if(!_loc10_)
                                    {
                                       addr149:
                                       if(!§§pop())
                                       {
                                          if(!(_loc10_ && param2))
                                          {
                                             _loc7_.dispose();
                                          }
                                          if(_loc11_)
                                          {
                                             if(!(_loc10_ && §?]§.Texture))
                                             {
                                                if(!(_loc10_ && param1))
                                                {
                                                   if(_loc11_ || param1)
                                                   {
                                                      if(false)
                                                      {
                                                         §§goto(addr185);
                                                      }
                                                      break;
                                                   }
                                                   _loc7_.fillRect(_loc9_,0);
                                                   _loc7_.draw(param2,_loc8_,null,null,null,true);
                                                   param1.uploadFromBitmapData(_loc7_,_loc6_++);
                                                   _loc8_.scale(0.5,0.5);
                                                   addr298:
                                                   addr293:
                                                   addr287:
                                                   addr277:
                                                }
                                                if(_loc11_)
                                                {
                                                   if(!(_loc10_ && param2))
                                                   {
                                                      addr228:
                                                      §§push(_loc4_);
                                                      if(!_loc10_)
                                                      {
                                                         addr227:
                                                         §§push(§§pop() >> 1);
                                                      }
                                                      _loc4_ = §§pop();
                                                      if(_loc11_ || §?]§.Texture)
                                                      {
                                                         if(_loc11_ || param3)
                                                         {
                                                            addr211:
                                                            §§push(_loc5_ >> 1);
                                                            if(_loc11_ || §?]§.Texture)
                                                            {
                                                               _loc5_ = §§pop();
                                                               addr221:
                                                               §§goto(addr185);
                                                            }
                                                            §§goto(addr228);
                                                         }
                                                         _loc9_.height = _loc5_;
                                                         §§goto(addr298);
                                                         addr304:
                                                      }
                                                      §§goto(addr293);
                                                   }
                                                   §§goto(addr287);
                                                }
                                                §§goto(addr277);
                                             }
                                             §§goto(addr228);
                                          }
                                          §§goto(addr201);
                                       }
                                       _loc9_.width = _loc4_;
                                       §§goto(addr304);
                                    }
                                    §§goto(addr200);
                                 }
                                 §§goto(addr227);
                              }
                              §§goto(addr185);
                           }
                        }
                        §§goto(addr211);
                     }
                     §§goto(addr185);
                  }
                  §§goto(addr221);
               }
               §§goto(addr149);
            }
            §§goto(addr200);
         },§§goto(addr211))
         {
            loop1:
            while(true)
            {
               §§push(param2.width >> 1);
               loop2:
               while(true)
               {
                  _loc4_ = §§pop();
                  addr82:
                  while(true)
                  {
                     addr58:
                     while(true)
                     {
                        §§push(param2.height >> 1);
                        addr63:
                        while(!_loc10_)
                        {
                           _loc5_ = §§pop();
                           continue loop1;
                        }
                        continue loop2;
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
         if(_loc4_)
         {
            param1.uploadCompressedTextureFromByteArray(param2,param3);
         }
      }
      
      public function dispose() : void
      {
      }
      
      public function adjustVertexData(param1:§'!w§, param2:int, param3:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(_loc7_ || param2)
         {
            if(this.§5_§)
            {
               if(!(_loc6_ && param2))
               {
                  if(param3 != 4)
                  {
                     if(!_loc6_)
                     {
                        throw new ArgumentError("Textures with a frame can only be used on quads");
                     }
                     while(true)
                     {
                     }
                     addr221:
                  }
                  loop0:
                  while(true)
                  {
                     §§push(this.§5_§.width + this.§5_§.x - this.width);
                     if(_loc7_ || param3)
                     {
                        §§push(Number(§§pop()));
                     }
                     while(true)
                     {
                        _loc4_ = §§pop();
                        loop2:
                        while(true)
                        {
                           §§push(this.§5_§.height + this.§5_§.y - this.height);
                           if(!(_loc6_ && param3))
                           {
                              §§push(Number(§§pop()));
                           }
                           if(!(_loc7_ || this))
                           {
                              break;
                           }
                           _loc5_ = §§pop();
                           loop3:
                           while(true)
                           {
                              param1.§&M§(param2,-this.§5_§.x,-this.§5_§.y);
                              loop4:
                              while(true)
                              {
                                 §§push(param1);
                                 §§push(param2 + 1);
                                 §§push(_loc4_);
                                 if(_loc7_ || param1)
                                 {
                                    §§push(-§§pop());
                                 }
                                 §§pop().§&M§(§§pop(),§§pop(),-this.§5_§.y);
                                 loop5:
                                 while(_loc7_)
                                 {
                                    if(!(_loc6_ && this))
                                    {
                                       while(true)
                                       {
                                          §§push(param1);
                                          §§push(param2 + 2);
                                          §§push(-this.§5_§.x);
                                          §§push(_loc5_);
                                          if(_loc7_)
                                          {
                                             §§push(-§§pop());
                                          }
                                          §§pop().§&M§(§§pop(),§§pop(),§§pop());
                                          while(_loc7_ || param3)
                                          {
                                             §§push(param1);
                                             §§push(param2 + 3);
                                             §§push(_loc4_);
                                             if(!(_loc6_ && this))
                                             {
                                                §§push(-§§pop());
                                             }
                                             §§push(_loc5_);
                                             if(!(_loc6_ && this))
                                             {
                                                §§push(-§§pop());
                                             }
                                             §§pop().§&M§(§§pop(),§§pop(),§§pop());
                                             if(_loc6_ && this)
                                             {
                                                continue;
                                             }
                                             if(_loc6_)
                                             {
                                                continue loop4;
                                             }
                                             if(!_loc7_)
                                             {
                                                continue loop3;
                                             }
                                             §§goto(addr68);
                                          }
                                          continue loop5;
                                       }
                                       addr29:
                                       return;
                                       addr68:
                                       addr129:
                                    }
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr221);
            }
            §§goto(addr29);
         }
         §§goto(addr129);
      }
      
      public function get frame() : Rectangle
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            return !!this.§5_§ ? this.§5_§.clone() : new Rectangle(0,0,this.width,this.height);
         }
         §§goto(addr31);
      }
      
      public function get clipping() : Rectangle
      {
         return new Rectangle(0,0,this.width,this.height);
      }
      
      public function get repeat() : Boolean
      {
         return this.§2!b§;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§2!b§ = param1;
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
      
      public function get root() : §?]§.Texture
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
      
      public function get parent() : §?]§.Texture
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
