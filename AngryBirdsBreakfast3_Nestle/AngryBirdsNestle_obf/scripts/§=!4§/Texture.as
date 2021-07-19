package §=!4§
{
   import §!!!§.§6!l§;
   import §90§.§"!z§;
   import §90§.§?!^§;
   import §^!^§.§#!_§;
   import §^!^§.getNextPowerOfTwo;
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
       
      
      private var § g§:Rectangle;
      
      private var §3!F§:Boolean;
      
      public function Texture()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            do
            {
               if(getQualifiedClassName(this) == "starling.textures::Texture")
               {
                  if(!_loc2_)
                  {
                     throw new §?!^§();
                  }
                  addr73:
                  while(true)
                  {
                  }
                  addr73:
               }
               while(true)
               {
                  this.§3!F§ = false;
                  if(_loc1_ || _loc1_)
                  {
                     break;
                  }
                  §§goto(addr73);
               }
            }
            while(_loc2_ && this);
            
            return;
         }
         §§goto(addr73);
      }
      
      public static function §83§(param1:Context3D, param2:Bitmap, param3:Boolean = true, param4:Boolean = false) : §=!4§.Texture
      {
         return §2!?§(param1,param2.bitmapData,param3,param4);
      }
      
      public static function §2!?§(param1:Context3D, param2:BitmapData, param3:Boolean = true, param4:Boolean = false) : §=!4§.Texture
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc9_:BitmapData = null;
         var _loc10_:§<r§ = null;
         var _loc11_:flash.display3D.textures.Texture = null;
         var _loc5_:int = param2.width;
         var _loc6_:int = param2.height;
         §§push(_loc5_);
         if(_loc12_ || param2)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(_loc6_);
         if(_loc12_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc8_:* = §§pop();
         if(!_loc13_)
         {
            if(param1 != null)
            {
               if(_loc12_ || param1)
               {
                  §§push(int(getNextPowerOfTwo(param2.width)));
                  if(!_loc13_)
                  {
                     _loc7_ = §§pop();
                     addr81:
                     if(!_loc13_)
                     {
                        addr75:
                        §§push(int(getNextPowerOfTwo(param2.height)));
                     }
                     _loc11_ = param1.createTexture(_loc7_,_loc8_,Context3DTextureFormat.BGRA,param4);
                     if(!(_loc13_ && param1))
                     {
                        §§push(_loc7_);
                        if(!(_loc13_ && param3))
                        {
                           §§push(_loc5_);
                           if(!_loc13_)
                           {
                              §§push(§§pop() > §§pop());
                              if(!_loc13_)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc12_)
                                    {
                                       addr115:
                                       §§pop();
                                       addr144:
                                       if(!(_loc13_ && §=!4§.Texture))
                                       {
                                          addr125:
                                          §§push(_loc8_ > _loc6_);
                                       }
                                       (_loc9_ = new BitmapData(_loc7_,_loc8_,true,0)).copyPixels(param2,param2.rect,new Point(0,0));
                                       param2 = _loc9_;
                                       uploadBitmapData(_loc11_,param2,param3);
                                       _loc10_ = new §<r§(_loc11_,_loc7_,_loc8_,param3,true,param4);
                                       if(_loc12_)
                                       {
                                          §§push(§6!l§.§0i§);
                                          loop0:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                if(_loc9_)
                                                {
                                                   loop1:
                                                   while(true)
                                                   {
                                                      if(_loc12_ || param3)
                                                      {
                                                         while(true)
                                                         {
                                                            _loc9_.dispose();
                                                            loop12:
                                                            while(true)
                                                            {
                                                               addr241:
                                                               loop3:
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
                                                                        loop6:
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              while(§§pop())
                                                                              {
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    break loop5;
                                                                                 }
                                                                                 §§goto(addr226);
                                                                              }
                                                                              addr182:
                                                                           }
                                                                           loop7:
                                                                           while(!_loc13_)
                                                                           {
                                                                              §§pop();
                                                                              while(true)
                                                                              {
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    §§push(_loc6_);
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(_loc8_);
                                                                                    if(_loc13_ && param1)
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                    §§push(§§pop() == §§pop());
                                                                                    if(_loc13_ && param1)
                                                                                    {
                                                                                       continue loop7;
                                                                                    }
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       continue loop6;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                    addr284:
                                                                                 }
                                                                                 addr226:
                                                                                 if(!(_loc13_ && param1))
                                                                                 {
                                                                                    if(_loc12_ || param1)
                                                                                    {
                                                                                       §§goto(addr182);
                                                                                    }
                                                                                    continue loop12;
                                                                                 }
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                           continue loop0;
                                                                           return new § !5§(_loc10_,new Rectangle(0,0,_loc5_,_loc6_),true);
                                                                        }
                                                                     }
                                                                     if(_loc12_)
                                                                     {
                                                                        return _loc10_;
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr265:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            _loc10_.§`!'§(param2);
                                                         }
                                                         addr281:
                                                      }
                                                      §§goto(addr284);
                                                   }
                                                }
                                                §§goto(addr241);
                                             }
                                             §§goto(addr281);
                                          }
                                       }
                                       §§goto(addr265);
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc12_ || param2)
                                    {
                                    }
                                 }
                                 §§goto(addr144);
                              }
                              §§goto(addr115);
                           }
                        }
                        §§goto(addr125);
                     }
                     §§goto(addr115);
                  }
                  _loc8_ = §§pop();
                  §§goto(addr81);
               }
               §§goto(addr75);
            }
            §§goto(addr115);
         }
         §§goto(addr81);
      }
      
      public static function §'t§(param1:Context3D, param2:ByteArray) : §=!4§.Texture
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(!_loc10_)
         {
            if(param1 == null)
            {
               if(!(_loc10_ && §=!4§.Texture))
               {
                  §§goto(addr29);
               }
            }
            var _loc3_:String = String.fromCharCode(param2[0],param2[1],param2[2]);
            if(!(_loc10_ && param1))
            {
               §§push(_loc3_);
               if(_loc11_ || §=!4§.Texture)
               {
                  if(§§pop() != "ATF")
                  {
                     if(_loc11_)
                     {
                        throw new ArgumentError("Invalid ATF data");
                     }
                     addr75:
                     if(param2[6] == 2)
                     {
                        §§push(Context3DTextureFormat.COMPRESSED);
                        if(_loc10_)
                        {
                        }
                        addr107:
                        §§push(§§pop());
                     }
                     else
                     {
                        §§push(Context3DTextureFormat.BGRA);
                        if(!(_loc10_ && param1))
                        {
                           §§goto(addr107);
                        }
                     }
                  }
                  §§goto(addr75);
               }
               var _loc4_:* = §§pop();
               var _loc5_:int = Math.pow(2,param2[7]);
               var _loc6_:int = Math.pow(2,param2[8]);
               var _loc7_:int = param2[9];
               var _loc8_:flash.display3D.textures.Texture = param1.createTexture(_loc5_,_loc6_,_loc4_,false);
               if(_loc11_)
               {
                  uploadAtfData(_loc8_,param2);
               }
               var _loc9_:§<r§ = new §<r§(_loc8_,_loc5_,_loc6_,_loc7_ > 1,false);
               if(_loc11_)
               {
                  if(§6!l§.§0i§)
                  {
                     if(_loc11_)
                     {
                        _loc9_.§`!'§(param2);
                     }
                  }
               }
               return _loc9_;
            }
            §§goto(addr75);
         }
         addr29:
         throw new §"!z§();
      }
      
      public static function §#!%§(param1:§=!4§.Texture, param2:Rectangle = null, param3:Rectangle = null) : §=!4§.Texture
      {
         var _loc4_:§=!4§.Texture;
         (_loc4_ = new § !5§(param1,param2)).§ g§ = param3;
         return _loc4_;
      }
      
      public static function §1!X§(param1:Context3D, param2:int = 64, param3:int = 64, param4:uint = 4.294967295E9, param5:Boolean = false) : §=!4§.Texture
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:BitmapData = new BitmapData(param2,param3,true,param4);
         var _loc7_:§=!4§.Texture = §2!?§(param1,_loc6_,false,param5);
         if(!_loc8_)
         {
            if(!§6!l§.§0i§)
            {
               if(!(_loc8_ && §=!4§.Texture))
               {
                  addr65:
                  _loc6_.dispose();
               }
            }
            return _loc7_;
         }
         §§goto(addr65);
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
         if(!(_loc10_ && param2))
         {
            param1.uploadFromBitmapData(param2);
            loop0:
            for(; param3; if(_loc10_ && param3)
            {
               continue;
            })
            {
               if(_loc11_)
               {
                  continue;
               }
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §§push(param2.height >> 1);
                     while(true)
                     {
                        _loc5_ = §§pop();
                        while(true)
                        {
                           §§push(1);
                           if(!(_loc11_ || param1))
                           {
                              break;
                           }
                           if(!(_loc10_ && §=!4§.Texture))
                           {
                              _loc6_ = §§pop();
                              if(!(_loc10_ && §=!4§.Texture))
                              {
                                 if(_loc11_ || param1)
                                 {
                                    if(true)
                                    {
                                       break loop2;
                                    }
                                    continue loop2;
                                 }
                                 continue loop1;
                              }
                              continue;
                           }
                           addr96:
                           while(true)
                           {
                              _loc4_ = §§pop();
                              continue loop1;
                           }
                        }
                     }
                  }
                  _loc7_ = new BitmapData(_loc4_,_loc5_,true,0);
                  _loc8_ = new Matrix(0.5,0,0,0.5);
                  _loc9_ = new Rectangle();
                  addr178:
                  §§push(_loc4_);
                  §§push(1);
                  if(_loc11_)
                  {
                     addr184:
                     §§push(§§pop() >= §§pop());
                     if(!(§§pop() >= §§pop()))
                     {
                        addr186:
                        §§pop();
                        addr187:
                        if(!(_loc10_ && param2))
                        {
                           §§push(_loc5_);
                           if(_loc11_ || §=!4§.Texture)
                           {
                              if(!(_loc10_ && param1))
                              {
                                 §§push(1);
                                 if(_loc11_)
                                 {
                                    §§push(§§pop() >= §§pop());
                                    if(_loc11_)
                                    {
                                       if(!_loc10_)
                                       {
                                          addr157:
                                          if(!§§pop())
                                          {
                                             if(!_loc10_)
                                             {
                                                if(_loc11_)
                                                {
                                                   _loc7_.dispose();
                                                   addr165:
                                                   if(!_loc10_)
                                                   {
                                                      if(_loc11_)
                                                      {
                                                         if(!(_loc10_ && §=!4§.Texture))
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr178);
                                                            }
                                                            break loop0;
                                                         }
                                                         addr258:
                                                         if(_loc11_ || §=!4§.Texture)
                                                         {
                                                            _loc8_.scale(0.5,0.5);
                                                            addr242:
                                                            _loc4_ >>= 1;
                                                            addr243:
                                                            addr240:
                                                            addr241:
                                                            §§push(_loc5_);
                                                            if(_loc11_ || param3)
                                                            {
                                                               addr205:
                                                               §§push(1);
                                                               if(!(_loc10_ && param3))
                                                               {
                                                                  addr213:
                                                                  §§push(§§pop() >> §§pop());
                                                                  if(!_loc10_)
                                                                  {
                                                                     if(!(_loc10_ && param2))
                                                                     {
                                                                        _loc5_ = §§pop();
                                                                        addr223:
                                                                        if(_loc11_ || §=!4§.Texture)
                                                                        {
                                                                           if(_loc11_ || §=!4§.Texture)
                                                                           {
                                                                              §§goto(addr178);
                                                                           }
                                                                           _loc9_.height = _loc5_;
                                                                           _loc7_.fillRect(_loc9_,0);
                                                                           addr281:
                                                                           if(!(_loc10_ && §=!4§.Texture))
                                                                           {
                                                                              _loc7_.draw(param2,_loc8_,null,null,null,true);
                                                                              param1.uploadFromBitmapData(_loc7_,_loc6_++);
                                                                              §§goto(addr258);
                                                                              addr275:
                                                                           }
                                                                           addr303:
                                                                           §§goto(addr303);
                                                                           addr309:
                                                                        }
                                                                        §§goto(addr243);
                                                                     }
                                                                     §§goto(addr240);
                                                                  }
                                                                  §§goto(addr242);
                                                               }
                                                               §§goto(addr241);
                                                            }
                                                            §§goto(addr213);
                                                            addr249:
                                                         }
                                                         §§goto(addr281);
                                                      }
                                                      §§goto(addr223);
                                                   }
                                                   §§goto(addr187);
                                                }
                                                §§goto(addr249);
                                             }
                                             §§goto(addr165);
                                          }
                                          _loc9_.width = _loc4_;
                                          §§goto(addr309);
                                       }
                                       §§goto(addr184);
                                    }
                                    §§goto(addr186);
                                 }
                                 §§goto(addr178);
                              }
                              §§goto(addr213);
                           }
                           §§goto(addr178);
                        }
                        §§goto(addr275);
                     }
                     §§goto(addr157);
                  }
                  §§goto(addr205);
               }
            }
            return;
         }
         §§goto(addr96);
         §§push(param2.width >> 1);
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
      
      public function adjustVertexData(param1:§#!_§, param2:int, param3:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(_loc7_ || this)
         {
            if(this.§ g§)
            {
               loop0:
               while(param3 == 4)
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§ g§.width + this.§ g§.x - this.width);
                     if(!_loc6_)
                     {
                        §§push(Number(§§pop()));
                     }
                     while(true)
                     {
                        _loc4_ = §§pop();
                        while(true)
                        {
                           §§push(this.§ g§.height + this.§ g§.y - this.height);
                           if(_loc7_)
                           {
                              if(_loc6_)
                              {
                                 break;
                              }
                              §§push(Number(§§pop()));
                           }
                           _loc5_ = §§pop();
                           loop4:
                           while(!(_loc6_ && param2))
                           {
                              while(true)
                              {
                                 param1.§8l§(param2,-this.§ g§.x,-this.§ g§.y);
                                 while(true)
                                 {
                                    §§push(param1);
                                    §§push(param2 + 1);
                                    §§push(_loc4_);
                                    if(_loc7_)
                                    {
                                       §§push(-§§pop());
                                    }
                                    §§pop().§8l§(§§pop(),§§pop(),-this.§ g§.y);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(param1);
                                       §§push(param2 + 2);
                                       §§push(-this.§ g§.x);
                                       §§push(_loc5_);
                                       if(!(_loc6_ && this))
                                       {
                                          §§push(-§§pop());
                                       }
                                       §§pop().§8l§(§§pop(),§§pop(),§§pop());
                                       while(!_loc6_)
                                       {
                                          if(!_loc7_)
                                          {
                                             break loop0;
                                          }
                                          §§push(param1);
                                          §§push(param2 + 3);
                                          §§push(_loc4_);
                                          if(!_loc6_)
                                          {
                                             §§push(-§§pop());
                                          }
                                          §§push(_loc5_);
                                          if(_loc7_)
                                          {
                                             §§push(-§§pop());
                                          }
                                          §§pop().§8l§(§§pop(),§§pop(),§§pop());
                                          if(_loc7_ || this)
                                          {
                                             continue loop7;
                                          }
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               throw new ArgumentError("Textures with a frame can only be used on quads");
            }
            §§goto(addr29);
         }
         §§goto(addr159);
      }
      
      public function get §&F§() : Rectangle
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            return !!this.§ g§ ? this.§ g§.clone() : new Rectangle(0,0,this.width,this.height);
         }
         §§goto(addr36);
      }
      
      public function get clipping() : Rectangle
      {
         return new Rectangle(0,0,this.width,this.height);
      }
      
      public function get repeat() : Boolean
      {
         return this.§3!F§;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§3!F§ = param1;
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
      
      public function get root() : §=!4§.Texture
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
      
      public function get parent() : §=!4§.Texture
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
