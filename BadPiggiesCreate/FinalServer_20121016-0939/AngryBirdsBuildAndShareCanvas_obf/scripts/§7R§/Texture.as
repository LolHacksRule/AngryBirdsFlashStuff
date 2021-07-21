package §7R§
{
   import §2!F§.§0M§;
   import §2!F§.§["?§;
   import §3W§.§>!-§;
   import §3W§.getNextPowerOfTwo;
   import §6p§.§?%§;
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
       
      
      private var §#",§:Rectangle;
      
      private var §9!L§:Boolean;
      
      public function Texture()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
            while(true)
            {
               if(getQualifiedClassName(this) != "starling.textures::Texture")
               {
                  loop1:
                  while(true)
                  {
                     this.§9!L§ = false;
                     if(!(_loc1_ && this))
                     {
                        break;
                     }
                     addr84:
                     while(true)
                     {
                        continue loop1;
                     }
                  }
                  if(_loc2_ || _loc1_)
                  {
                     break;
                  }
               }
               if(!(_loc1_ && this))
               {
                  throw new §["?§();
               }
            }
            return;
         }
         §§goto(addr84);
      }
      
      public static function §5s§(param1:Context3D, param2:Bitmap, param3:Boolean = true, param4:Boolean = false) : §7R§.Texture
      {
         return §@6§(param1,param2.bitmapData,param3,param4);
      }
      
      public static function §@6§(param1:Context3D, param2:BitmapData, param3:Boolean = true, param4:Boolean = false) : §7R§.Texture
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc9_:BitmapData = null;
         var _loc10_:§1!5§ = null;
         var _loc11_:flash.display3D.textures.Texture = null;
         var _loc5_:int = param2.width;
         var _loc6_:int = param2.height;
         §§push(_loc5_);
         if(_loc13_ || param2)
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(_loc6_);
         if(_loc13_)
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
                  addr56:
                  §§push(int(getNextPowerOfTwo(param2.width)));
                  if(!(_loc12_ && param1))
                  {
                     _loc7_ = §§pop();
                     §§goto(addr82);
                  }
                  _loc8_ = §§pop();
               }
               addr82:
               if(_loc13_ || §7R§.Texture)
               {
                  §§push(int(getNextPowerOfTwo(param2.height)));
               }
               _loc11_ = param1.createTexture(_loc7_,_loc8_,Context3DTextureFormat.BGRA,param4);
               if(!_loc12_)
               {
                  §§push(_loc7_);
                  if(!(_loc12_ && param3))
                  {
                     §§push(_loc5_);
                     if(_loc13_)
                     {
                        §§push(§§pop() > §§pop());
                        if(_loc13_ || param2)
                        {
                           if(!§§pop())
                           {
                              if(_loc13_ || param1)
                              {
                                 §§pop();
                                 if(_loc13_)
                                 {
                                    §§goto(addr127);
                                 }
                                 §§goto(addr130);
                              }
                           }
                        }
                        addr127:
                        §§goto(addr126);
                     }
                     addr126:
                     §§goto(addr125);
                  }
                  addr125:
                  §§goto(addr124);
               }
               addr124:
               if(_loc8_ > _loc6_)
               {
                  if(!_loc12_)
                  {
                     (_loc9_ = new BitmapData(_loc7_,_loc8_,true,0)).copyPixels(param2,param2.rect,new Point(0,0));
                     param2 = _loc9_;
                     addr130:
                  }
                  §§goto(addr165);
               }
               uploadBitmapData(_loc11_,param2,param3);
               §§goto(addr165);
            }
            addr165:
            _loc10_ = new §1!5§(_loc11_,_loc7_,_loc8_,param3,true,param4);
            if(_loc13_ || §7R§.Texture)
            {
               §§push(§?%§.§ !O§);
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     if(_loc9_)
                     {
                        if(!(_loc12_ && param2))
                        {
                           _loc9_.dispose();
                        }
                        while(true)
                        {
                           addr233:
                           if(_loc13_ || param3)
                           {
                              if(_loc12_ && param1)
                              {
                                 while(true)
                                 {
                                    _loc10_.§#"2§(param2);
                                    loop10:
                                    while(true)
                                    {
                                       addr259:
                                       while(true)
                                       {
                                          §§push(_loc5_);
                                          loop3:
                                          while(true)
                                          {
                                             §§push(_loc7_);
                                             loop4:
                                             while(true)
                                             {
                                                §§push(§§pop() == §§pop());
                                                loop5:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      continue loop0;
                                                   }
                                                   loop8:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!_loc12_)
                                                         {
                                                            §§goto(addr233);
                                                         }
                                                         else
                                                         {
                                                            addr249:
                                                            if(!(_loc13_ || param2))
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc6_);
                                                                  if(!(_loc13_ || param1))
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(_loc8_);
                                                                  if(!(_loc12_ && §7R§.Texture))
                                                                  {
                                                                     §§push(§§pop() == §§pop());
                                                                     if(!(_loc12_ && param3))
                                                                     {
                                                                        if(!(_loc12_ && param2))
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        continue loop5;
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                                  continue loop4;
                                                                  §§goto(addr249);
                                                               }
                                                               continue loop3;
                                                               addr273:
                                                            }
                                                            if(!_loc13_)
                                                            {
                                                               continue loop10;
                                                            }
                                                         }
                                                      }
                                                      return new §?P§(_loc10_,new Rectangle(0,0,_loc5_,_loc6_),true);
                                                   }
                                                   continue loop10;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 addr302:
                              }
                              §§goto(addr247);
                           }
                        }
                     }
                     §§goto(addr259);
                  }
                  §§goto(addr302);
               }
            }
            addr247:
            return _loc10_;
         }
         §§goto(addr56);
      }
      
      public static function §`!=§(param1:Context3D, param2:ByteArray) : §7R§.Texture
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
            if(!_loc11_)
            {
               §§push(_loc3_);
               if(_loc10_)
               {
                  if(§§pop() != "ATF")
                  {
                     if(!_loc11_)
                     {
                        throw new ArgumentError("Invalid ATF data");
                     }
                  }
                  if(param2[6] == 2)
                  {
                     addr65:
                     §§push(Context3DTextureFormat.COMPRESSED);
                     if(!(_loc11_ && param1))
                     {
                        addr96:
                        §§push(§§pop());
                        addr75:
                     }
                  }
                  else
                  {
                     §§push(Context3DTextureFormat.BGRA);
                     if(!(_loc11_ && param2))
                     {
                        §§goto(addr96);
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
                  var _loc9_:§1!5§ = new §1!5§(_loc8_,_loc5_,_loc6_,_loc7_ > 1,false);
                  if(!(_loc11_ && param2))
                  {
                     if(§?%§.§ !O§)
                     {
                        if(!_loc11_)
                        {
                           addr171:
                           _loc9_.§#"2§(param2);
                        }
                     }
                     return _loc9_;
                  }
                  §§goto(addr171);
               }
               §§goto(addr75);
            }
            §§goto(addr65);
         }
         addr23:
         throw new §0M§();
      }
      
      public static function §^z§(param1:§7R§.Texture, param2:Rectangle = null, param3:Rectangle = null) : §7R§.Texture
      {
         var _loc4_:§7R§.Texture;
         (_loc4_ = new §?P§(param1,param2)).§#",§ = param3;
         return _loc4_;
      }
      
      public static function empty(param1:Context3D, param2:int = 64, param3:int = 64, param4:uint = 4.294967295E9, param5:Boolean = false) : §7R§.Texture
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:BitmapData = new BitmapData(param2,param3,true,param4);
         var _loc7_:§7R§.Texture = §@6§(param1,_loc6_,false,param5);
         if(!(_loc9_ && param3))
         {
            if(!§?%§.§ !O§)
            {
               if(_loc8_ || param1)
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
         if(!(_loc11_ && param1))
         {
            param1.uploadFromBitmapData(param2);
            loop0:
            while(param3)
            {
               loop1:
               while(true)
               {
                  §§push(param2.width >> 1);
                  loop2:
                  while(true)
                  {
                     _loc4_ = §§pop();
                     loop3:
                     while(true)
                     {
                        if(!_loc10_)
                        {
                           continue loop0;
                        }
                        loop4:
                        do
                        {
                           §§push(param2.height >> 1);
                           loop5:
                           while(!(_loc11_ && param2))
                           {
                              _loc5_ = §§pop();
                              while(_loc10_)
                              {
                                 if(!_loc11_)
                                 {
                                    §§push(1);
                                    if(!(_loc11_ && §7R§.Texture))
                                    {
                                       _loc6_ = §§pop();
                                       if(!_loc11_)
                                       {
                                          continue loop4;
                                       }
                                       continue;
                                    }
                                    continue loop5;
                                 }
                                 continue loop1;
                              }
                              continue loop3;
                           }
                           continue loop2;
                        }
                        while(false);
                        
                        _loc7_ = new BitmapData(_loc4_,_loc5_,true,0);
                        _loc8_ = new Matrix(0.5,0,0,0.5);
                        _loc9_ = new Rectangle();
                        addr170:
                        §§push(_loc4_);
                        if(!_loc11_)
                        {
                           if(_loc10_ || param2)
                           {
                              addr182:
                              §§push(1);
                              if(!_loc11_)
                              {
                                 addr185:
                                 §§push(§§pop() >= §§pop());
                                 if(!(§§pop() >= §§pop()))
                                 {
                                    addr187:
                                    §§pop();
                                    addr188:
                                    if(!_loc11_)
                                    {
                                       if(_loc10_)
                                       {
                                          §§push(_loc5_);
                                          if(_loc10_ || §7R§.Texture)
                                          {
                                             §§push(1);
                                             if(_loc10_ || param1)
                                             {
                                                if(!_loc11_)
                                                {
                                                   §§push(§§pop() >= §§pop());
                                                   if(_loc10_ || §7R§.Texture)
                                                   {
                                                      if(_loc10_)
                                                      {
                                                         addr146:
                                                         if(!§§pop())
                                                         {
                                                            if(!(_loc11_ && §7R§.Texture))
                                                            {
                                                               if(_loc10_ || param1)
                                                               {
                                                                  _loc7_.dispose();
                                                                  addr164:
                                                                  if(_loc10_)
                                                                  {
                                                                     if(!_loc11_)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           §§goto(addr170);
                                                                        }
                                                                        break loop0;
                                                                     }
                                                                     addr207:
                                                                     §§goto(addr170);
                                                                  }
                                                                  §§goto(addr188);
                                                               }
                                                               addr226:
                                                               if(_loc10_)
                                                               {
                                                                  if(_loc10_ || §7R§.Texture)
                                                                  {
                                                                     if(_loc10_)
                                                                     {
                                                                        addr212:
                                                                        _loc4_ >>= 1;
                                                                        addr210:
                                                                        if(!(_loc11_ && param2))
                                                                        {
                                                                           addr195:
                                                                           §§push(_loc5_);
                                                                           if(_loc10_ || param1)
                                                                           {
                                                                              addr203:
                                                                              §§push(§§pop() >> 1);
                                                                              if(_loc10_)
                                                                              {
                                                                                 _loc5_ = §§pop();
                                                                                 §§goto(addr207);
                                                                              }
                                                                              §§goto(addr212);
                                                                           }
                                                                           §§goto(addr210);
                                                                        }
                                                                        param1.uploadFromBitmapData(_loc7_,_loc6_++);
                                                                        _loc8_.scale(0.5,0.5);
                                                                        §§goto(addr226);
                                                                        addr256:
                                                                        addr246:
                                                                        addr211:
                                                                     }
                                                                     _loc9_.height = _loc5_;
                                                                     addr283:
                                                                  }
                                                                  _loc7_.fillRect(_loc9_,0);
                                                                  _loc7_.draw(param2,_loc8_,null,null,null,true);
                                                                  §§goto(addr256);
                                                                  addr262:
                                                               }
                                                               §§goto(addr246);
                                                            }
                                                            §§goto(addr164);
                                                         }
                                                         _loc9_.width = _loc4_;
                                                         §§goto(addr283);
                                                      }
                                                      §§goto(addr185);
                                                   }
                                                   §§goto(addr187);
                                                }
                                                §§goto(addr203);
                                             }
                                             §§goto(addr182);
                                          }
                                          §§goto(addr170);
                                       }
                                       §§goto(addr262);
                                    }
                                    §§goto(addr212);
                                 }
                                 §§goto(addr146);
                              }
                              §§goto(addr211);
                           }
                           §§goto(addr195);
                        }
                        §§goto(addr203);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr74);
      }
      
      static function uploadAtfData(param1:flash.display3D.textures.Texture, param2:ByteArray, param3:int = 0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && §7R§.Texture))
         {
            param1.uploadCompressedTextureFromByteArray(param2,param3);
         }
      }
      
      public function dispose() : void
      {
      }
      
      public function adjustVertexData(param1:§>!-§, param2:int, param3:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(!_loc6_)
         {
            if(this.§#",§)
            {
               if(_loc7_)
               {
                  if(param3 != 4)
                  {
                     if(_loc7_)
                     {
                        §§goto(addr207);
                     }
                     else
                     {
                        while(true)
                        {
                        }
                        addr211:
                     }
                  }
                  loop1:
                  while(true)
                  {
                     §§push(this.§#",§.width + this.§#",§.x - this.width);
                     if(!(_loc6_ && param2))
                     {
                        §§push(Number(§§pop()));
                     }
                     while(true)
                     {
                        _loc4_ = §§pop();
                        while(true)
                        {
                           §§push(this.§#",§.height + this.§#",§.y - this.height);
                           if(!_loc6_)
                           {
                              §§push(Number(§§pop()));
                           }
                           if(_loc6_ && param1)
                           {
                              break;
                           }
                           _loc5_ = §§pop();
                           loop4:
                           while(true)
                           {
                              param1.§"e§(param2,-this.§#",§.x,-this.§#",§.y);
                              do
                              {
                                 if(!_loc6_)
                                 {
                                    §§push(param1);
                                    §§push(param2 + 1);
                                    §§push(_loc4_);
                                    if(_loc7_ || param3)
                                    {
                                       §§push(-§§pop());
                                    }
                                    §§pop().§"e§(§§pop(),§§pop(),-this.§#",§.y);
                                    continue loop4;
                                 }
                                 continue loop1;
                              }
                              while(_loc6_ && param2);
                              
                              §§goto(addr24);
                           }
                        }
                     }
                  }
               }
               addr207:
               throw new ArgumentError("Textures with a frame can only be used on quads");
            }
            addr24:
            return;
         }
         §§goto(addr165);
      }
      
      public function get frame() : Rectangle
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            return !!this.§#",§ ? this.§#",§.clone() : new Rectangle(0,0,this.width,this.height);
         }
         §§goto(addr31);
      }
      
      public function get clipping() : Rectangle
      {
         return new Rectangle(0,0,this.width,this.height);
      }
      
      public function get repeat() : Boolean
      {
         return this.§9!L§;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§9!L§ = param1;
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
      
      public function get root() : §7R§.Texture
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
      
      public function get parent() : §7R§.Texture
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
