package §0!R§
{
   import §&!-§.§+#§;
   import §&!-§.§?!#§;
   import §'6§.§"]§;
   import §1V§.§1!-§;
   import §1V§.getNextPowerOfTwo;
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
       
      
      private var §3!'§:Rectangle;
      
      private var §^$§:Boolean;
      
      public function Texture()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            while(getQualifiedClassName(this) != "starling.textures::Texture")
            {
               do
               {
                  this.§^$§ = false;
               }
               while(_loc1_ && _loc1_);
               
               if(_loc1_ && _loc2_)
               {
                  break;
               }
               if(_loc2_ || _loc1_)
               {
                  return;
               }
            }
         }
         throw new §+#§();
      }
      
      public static function §1!H§(param1:Context3D, param2:Bitmap, param3:Boolean = true, param4:Boolean = false) : §0!R§.Texture
      {
         return § ![§(param1,param2.bitmapData,param3,param4);
      }
      
      public static function § ![§(param1:Context3D, param2:BitmapData, param3:Boolean = true, param4:Boolean = false) : §0!R§.Texture
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc9_:BitmapData = null;
         var _loc10_:§+W§ = null;
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
         if(!_loc12_)
         {
            §§push(int(§§pop()));
         }
         var _loc8_:* = §§pop();
         if(_loc13_ || param3)
         {
            if(param1 != null)
            {
               if(!(_loc12_ && param1))
               {
                  §§push(int(getNextPowerOfTwo(param2.width)));
                  if(!(_loc12_ && §0!R§.Texture))
                  {
                     _loc7_ = §§pop();
                     addr82:
                     if(!_loc12_)
                     {
                        §§push(int(getNextPowerOfTwo(param2.height)));
                     }
                     _loc11_ = param1.createTexture(_loc7_,_loc8_,Context3DTextureFormat.BGRA,param4);
                     if(!(_loc12_ && param2))
                     {
                        §§push(_loc7_);
                        if(!_loc12_)
                        {
                           §§push(_loc5_);
                           if(_loc13_)
                           {
                              §§push(§§pop() > §§pop());
                              if(_loc13_)
                              {
                                 if(!§§pop())
                                 {
                                    if(!(_loc12_ && param3))
                                    {
                                       §§pop();
                                       addr165:
                                       if(_loc13_)
                                       {
                                          addr131:
                                          §§push(_loc8_ > _loc6_);
                                       }
                                       _loc10_ = new §+W§(_loc11_,_loc7_,_loc8_,param3,true,param4);
                                       if(!_loc12_)
                                       {
                                          §§push(§"]§.§^!E§);
                                          loop0:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                if(_loc9_)
                                                {
                                                   if(!_loc12_)
                                                   {
                                                      _loc9_.dispose();
                                                   }
                                                   loop1:
                                                   while(true)
                                                   {
                                                      if(!_loc12_)
                                                      {
                                                         loop3:
                                                         while(true)
                                                         {
                                                            §§push(_loc5_);
                                                            loop4:
                                                            while(true)
                                                            {
                                                               §§push(_loc7_);
                                                               addr243:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  addr244:
                                                                  while(_loc13_)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        while(§§pop())
                                                                        {
                                                                           if(!_loc12_)
                                                                           {
                                                                              return _loc10_;
                                                                           }
                                                                           if(!(_loc12_ && param3))
                                                                           {
                                                                              if(_loc13_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              addr270:
                                                                              addr270:
                                                                              while(true)
                                                                              {
                                                                                 continue loop3;
                                                                              }
                                                                              addr270:
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                              §§goto(addr270);
                                                                              addr249:
                                                                           }
                                                                           §§goto(addr270);
                                                                        }
                                                                        return new §@?§(_loc10_,new Rectangle(0,0,_loc5_,_loc6_),true);
                                                                        addr214:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                     }
                                                                     §§goto(addr249);
                                                                  }
                                                                  continue loop0;
                                                               }
                                                            }
                                                         }
                                                         addr240:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            _loc10_.§0!c§(param2);
                                                         }
                                                         addr267:
                                                      }
                                                      §§goto(addr270);
                                                   }
                                                }
                                                §§goto(addr240);
                                             }
                                             §§goto(addr267);
                                          }
                                       }
                                       §§goto(addr251);
                                    }
                                 }
                              }
                              if(§§pop())
                              {
                                 if(!(_loc12_ && §0!R§.Texture))
                                 {
                                    (_loc9_ = new BitmapData(_loc7_,_loc8_,true,0)).copyPixels(param2,param2.rect,new Point(0,0));
                                    param2 = _loc9_;
                                 }
                                 §§goto(addr165);
                              }
                              uploadBitmapData(_loc11_,param2,param3);
                              §§goto(addr165);
                           }
                        }
                        §§goto(addr131);
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
      
      public static function §<"4§(param1:Context3D, param2:ByteArray) : §0!R§.Texture
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc10_ || §0!R§.Texture)
         {
            if(param1 == null)
            {
               if(!_loc11_)
               {
                  §§goto(addr28);
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
                     if(_loc10_ || §0!R§.Texture)
                     {
                        §§goto(addr58);
                     }
                  }
                  if(param2[6] == 2)
                  {
                     §§push(Context3DTextureFormat.COMPRESSED);
                     if(!_loc10_)
                     {
                     }
                     addr96:
                     §§push(§§pop());
                  }
                  else
                  {
                     §§push(Context3DTextureFormat.BGRA);
                     if(_loc10_)
                     {
                        §§goto(addr96);
                     }
                  }
               }
               var _loc4_:* = §§pop();
               var _loc5_:int = Math.pow(2,param2[7]);
               var _loc6_:int = Math.pow(2,param2[8]);
               var _loc7_:int = param2[9];
               var _loc8_:flash.display3D.textures.Texture = param1.createTexture(_loc5_,_loc6_,_loc4_,false);
               if(!(_loc11_ && §0!R§.Texture))
               {
                  uploadAtfData(_loc8_,param2);
               }
               var _loc9_:§+W§ = new §+W§(_loc8_,_loc5_,_loc6_,_loc7_ > 1,false);
               if(_loc10_)
               {
                  if(§"]§.§^!E§)
                  {
                     if(!(_loc11_ && _loc3_))
                     {
                        _loc9_.§0!c§(param2);
                     }
                  }
               }
               return _loc9_;
            }
            addr58:
            throw new ArgumentError("Invalid ATF data");
         }
         addr28:
         throw new §?!#§();
      }
      
      public static function § !3§(param1:§0!R§.Texture, param2:Rectangle = null, param3:Rectangle = null) : §0!R§.Texture
      {
         var _loc4_:§0!R§.Texture;
         (_loc4_ = new §@?§(param1,param2)).§3!'§ = param3;
         return _loc4_;
      }
      
      public static function §4!j§(param1:Context3D, param2:int = 64, param3:int = 64, param4:uint = 4.294967295E9, param5:Boolean = false) : §0!R§.Texture
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:BitmapData = new BitmapData(param2,param3,true,param4);
         var _loc7_:§0!R§.Texture = § ![§(param1,_loc6_,false,param5);
         if(!(_loc9_ && §0!R§.Texture))
         {
            if(!§"]§.§^!E§)
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
         if(_loc10_)
         {
            param1.uploadFromBitmapData(param2);
            loop0:
            for(; param3; if(_loc11_ && param3)
            {
               continue;
            },§§goto(addr85),§§push(param2.width >> 1))
            {
               if(!_loc11_)
               {
                  continue;
               }
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     §§push(param2.height >> 1);
                     while(!_loc11_)
                     {
                        _loc5_ = §§pop();
                        while(true)
                        {
                           §§push(1);
                           if(_loc11_ && param1)
                           {
                              break;
                           }
                           _loc6_ = §§pop();
                           if(_loc11_ && param3)
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
                                 while(!(_loc11_ && param3))
                                 {
                                    if(!(_loc11_ && param1))
                                    {
                                       §§push(§§pop() >= §§pop());
                                       loop10:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop13:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   _loc9_.width = _loc4_;
                                                   break;
                                                }
                                                if(!_loc11_)
                                                {
                                                   if(!(_loc11_ && param1))
                                                   {
                                                      if(!(_loc11_ && param1))
                                                      {
                                                         _loc7_.dispose();
                                                         addr161:
                                                         if(_loc10_ || §0!R§.Texture)
                                                         {
                                                            if(true)
                                                            {
                                                               break loop0;
                                                            }
                                                            continue loop7;
                                                         }
                                                         loop12:
                                                         while(!_loc11_)
                                                         {
                                                            if(_loc10_ || param3)
                                                            {
                                                               §§push(_loc5_);
                                                               if(!(_loc10_ || §0!R§.Texture))
                                                               {
                                                                  continue loop8;
                                                               }
                                                               if(_loc11_)
                                                               {
                                                                  addr207:
                                                                  if(_loc10_)
                                                                  {
                                                                     if(_loc10_ || param2)
                                                                     {
                                                                        _loc5_ = §§pop();
                                                                        addr217:
                                                                        if(!(_loc10_ || §0!R§.Texture))
                                                                        {
                                                                           break loop13;
                                                                        }
                                                                        continue loop7;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        addr228:
                                                                        §§push(§§pop() >> 1);
                                                                     }
                                                                     addr227:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     break loop12;
                                                                  }
                                                                  §§push(_loc5_);
                                                                  break loop8;
                                                                  addr239:
                                                               }
                                                               §§push(1);
                                                               if(!_loc10_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               §§push(§§pop() >= §§pop());
                                                               if(_loc10_)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               addr192:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  continue loop12;
                                                               }
                                                            }
                                                            §§goto(addr227);
                                                            §§push(_loc4_);
                                                         }
                                                         if(!_loc11_)
                                                         {
                                                            addr232:
                                                            if(!(_loc11_ && param2))
                                                            {
                                                               §§goto(addr239);
                                                            }
                                                            while(_loc10_)
                                                            {
                                                               _loc7_.draw(param2,_loc8_,null,null,null,true);
                                                               §§goto(addr232);
                                                            }
                                                            while(true)
                                                            {
                                                               _loc7_.fillRect(_loc9_,0);
                                                               §§goto(addr280);
                                                            }
                                                            addr280:
                                                            addr287:
                                                         }
                                                         while(true)
                                                         {
                                                            param1.uploadFromBitmapData(_loc7_,_loc6_++);
                                                         }
                                                      }
                                                      _loc8_.scale(0.5,0.5);
                                                      §§goto(addr245);
                                                   }
                                                   §§goto(addr217);
                                                }
                                                §§goto(addr161);
                                             }
                                             _loc9_.height = _loc5_;
                                             §§goto(addr287);
                                             addr141:
                                          }
                                          §§goto(addr192);
                                       }
                                    }
                                    §§goto(addr228);
                                 }
                                 §§goto(addr207);
                                 §§push(§§pop() >> §§pop());
                              }
                              while(true)
                              {
                                 §§goto(addr206);
                                 §§goto(addr207);
                              }
                              §§goto(addr217);
                           }
                        }
                     }
                     addr85:
                     while(true)
                     {
                        _loc4_ = §§pop();
                        break loop3;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr58);
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
      
      public function adjustVertexData(param1:§1!-§, param2:int, param3:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(_loc7_)
         {
            if(this.§3!'§)
            {
               if(_loc7_ || param1)
               {
                  if(param3 == 4)
                  {
                     loop0:
                     while(true)
                     {
                        §§push(this.§3!'§.width + this.§3!'§.x - this.width);
                        if(_loc7_)
                        {
                           §§push(Number(§§pop()));
                        }
                        while(true)
                        {
                           _loc4_ = §§pop();
                           while(true)
                           {
                              §§push(this.§3!'§.height + this.§3!'§.y - this.height);
                              if(_loc7_ || param2)
                              {
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 §§push(Number(§§pop()));
                              }
                              _loc5_ = §§pop();
                              loop3:
                              while(!(_loc6_ && param3))
                              {
                                 param1.§7"%§(param2,-this.§3!'§.x,-this.§3!'§.y);
                                 do
                                 {
                                    §§push(param1);
                                    §§push(param2 + 1);
                                    §§push(_loc4_);
                                    if(_loc7_ || param2)
                                    {
                                       §§push(-§§pop());
                                    }
                                    §§pop().§7"%§(§§pop(),§§pop(),-this.§3!'§.y);
                                    while(_loc7_ || param3)
                                    {
                                       §§push(param1);
                                       §§push(param2 + 2);
                                       §§push(-this.§3!'§.x);
                                       §§push(_loc5_);
                                       if(!(_loc6_ && this))
                                       {
                                          §§push(-§§pop());
                                       }
                                       §§pop().§7"%§(§§pop(),§§pop(),§§pop());
                                       for(; _loc7_ || param3; §§push(param1),§§push(param2 + 3),§§push(_loc4_),if(!(_loc6_ && param3))
                                       {
                                          §§push(-§§pop());
                                       },§§push(_loc5_),if(!_loc6_)
                                       {
                                          §§push(-§§pop());
                                       },§§pop().§7"%§(§§pop(),§§pop(),§§pop()),if(!(_loc7_ || param3))
                                       {
                                          continue;
                                       },if(_loc7_)
                                       {
                                          §§goto(addr56);
                                       },§§goto(addr122))
                                       {
                                          if(!(_loc6_ && this))
                                          {
                                             continue;
                                          }
                                       }
                                       continue loop3;
                                    }
                                    continue loop0;
                                 }
                                 while(_loc6_);
                                 
                                 return;
                              }
                           }
                        }
                     }
                  }
                  throw new ArgumentError("Textures with a frame can only be used on quads");
               }
               §§goto(addr216);
            }
            §§goto(addr24);
         }
         §§goto(addr58);
      }
      
      public function get frame() : Rectangle
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            return !!this.§3!'§ ? this.§3!'§.clone() : new Rectangle(0,0,this.width,this.height);
         }
         §§goto(addr37);
      }
      
      public function get clipping() : Rectangle
      {
         return new Rectangle(0,0,this.width,this.height);
      }
      
      public function get repeat() : Boolean
      {
         return this.§^$§;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§^$§ = param1;
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
      
      public function get root() : §0!R§.Texture
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
      
      public function get parent() : §0!R§.Texture
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
