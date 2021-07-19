package §[P§
{
   import §-Z§.§?h§;
   import §3!$§.§+^§;
   import §3!$§.getNextPowerOfTwo;
   import §5d§.§=i§;
   import §5d§.§`!=§;
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
       
      
      private var §?!E§:Rectangle;
      
      private var §=@§:Boolean;
      
      public function Texture()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            while(true)
            {
               if(getQualifiedClassName(this) == "starling.textures::Texture")
               {
                  if(!_loc2_)
                  {
                     break;
                  }
                  loop1:
                  while(_loc1_)
                  {
                     while(true)
                     {
                        this.§=@§ = false;
                        if(_loc1_ || this)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     return;
                  }
                  continue;
               }
               §§goto(addr33);
            }
            throw new §`!=§();
         }
         §§goto(addr44);
      }
      
      public static function §%U§(param1:Context3D, param2:Bitmap, param3:Boolean = true, param4:Boolean = false) : §[P§.Texture
      {
         return §+u§(param1,param2.bitmapData,param3,param4);
      }
      
      public static function §+u§(param1:Context3D, param2:BitmapData, param3:Boolean = true, param4:Boolean = false) : §[P§.Texture
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc9_:BitmapData = null;
         var _loc10_:§&!+§ = null;
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
         if(!(_loc13_ && §[P§.Texture))
         {
            §§push(int(§§pop()));
         }
         var _loc8_:* = §§pop();
         if(!_loc13_)
         {
            if(param1 != null)
            {
               if(_loc12_ || param3)
               {
                  §§push(int(getNextPowerOfTwo(param2.width)));
                  if(_loc12_ || param2)
                  {
                     _loc7_ = §§pop();
                     addr86:
                     if(!(_loc13_ && param3))
                     {
                        addr80:
                        §§push(int(getNextPowerOfTwo(param2.height)));
                     }
                     _loc11_ = param1.createTexture(_loc7_,_loc8_,Context3DTextureFormat.BGRA,param4);
                     if(!_loc13_)
                     {
                        §§push(_loc7_);
                        if(_loc12_ || param2)
                        {
                           §§push(_loc5_);
                           if(!_loc13_)
                           {
                              §§push(§§pop() > §§pop());
                              if(_loc12_)
                              {
                                 if(!§§pop())
                                 {
                                    if(!(_loc13_ && param3))
                                    {
                                       addr120:
                                       §§pop();
                                       if(_loc12_ || §[P§.Texture)
                                       {
                                          addr141:
                                          addr140:
                                          addr129:
                                          addr128:
                                          if(_loc8_ > _loc6_)
                                          {
                                             if(_loc12_ || §[P§.Texture)
                                             {
                                                addr149:
                                                (_loc9_ = new BitmapData(_loc7_,_loc8_,true,0)).copyPixels(param2,param2.rect,new Point(0,0));
                                                param2 = _loc9_;
                                             }
                                             addr174:
                                             _loc10_ = new §&!+§(_loc11_,_loc7_,_loc8_,param3,true,param4);
                                             if(!(_loc13_ && param2))
                                             {
                                                §§push(§?h§.§6!#§);
                                                loop0:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         _loc10_.§<+§(param2);
                                                         addr295:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      addr292:
                                                   }
                                                   else if(_loc9_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(_loc12_ || §[P§.Texture)
                                                         {
                                                            _loc9_.dispose();
                                                            while(true)
                                                            {
                                                            }
                                                            addr288:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr295);
                                                         }
                                                      }
                                                      addr279:
                                                   }
                                                   loop3:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_);
                                                      while(true)
                                                      {
                                                         §§push(_loc7_);
                                                         addr250:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            continue loop0;
                                                         }
                                                         addr273:
                                                         §§push(_loc6_);
                                                         if(!(_loc12_ || param1))
                                                         {
                                                            continue;
                                                         }
                                                         §§push(_loc8_);
                                                         if(!(_loc13_ && param2))
                                                         {
                                                            addr223:
                                                            §§push(§§pop() == §§pop());
                                                            if(_loc13_ && param3)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  if(_loc12_)
                                                                  {
                                                                     §§goto(addr273);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr279);
                                                                  }
                                                               }
                                                               continue loop3;
                                                               addr270:
                                                            }
                                                            if(!(_loc13_ && param2))
                                                            {
                                                               addr238:
                                                               if(§§pop())
                                                               {
                                                                  if(_loc12_)
                                                                  {
                                                                     if(_loc12_)
                                                                     {
                                                                        return _loc10_;
                                                                     }
                                                                     continue loop3;
                                                                  }
                                                               }
                                                               return new §]!&§(_loc10_,new Rectangle(0,0,_loc5_,_loc6_),true);
                                                            }
                                                            continue loop0;
                                                         }
                                                         §§goto(addr250);
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr292);
                                          }
                                          uploadBitmapData(_loc11_,param2,param3);
                                          §§goto(addr174);
                                       }
                                       §§goto(addr149);
                                    }
                                 }
                                 §§goto(addr141);
                              }
                              §§goto(addr120);
                           }
                           §§goto(addr140);
                        }
                        §§goto(addr129);
                     }
                     §§goto(addr128);
                  }
                  _loc8_ = §§pop();
               }
               §§goto(addr86);
            }
            §§goto(addr174);
         }
         §§goto(addr80);
      }
      
      public static function §5!F§(param1:Context3D, param2:ByteArray) : §[P§.Texture
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc10_ || param2)
         {
            if(param1 == null)
            {
               if(_loc10_)
               {
                  throw new §=i§();
               }
            }
         }
         var _loc3_:String = String.fromCharCode(param2[0],param2[1],param2[2]);
         if(_loc10_ || param1)
         {
            §§push(_loc3_);
            if(!_loc11_)
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
                     addr70:
                     §§push(Context3DTextureFormat.COMPRESSED);
                     if(_loc10_ || param1)
                     {
                        addr90:
                     }
                     addr101:
                     §§push(§§pop());
                  }
                  else
                  {
                     §§push(Context3DTextureFormat.BGRA);
                     if(_loc10_ || _loc3_)
                     {
                        §§goto(addr101);
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
                  var _loc9_:§&!+§ = new §&!+§(_loc8_,_loc5_,_loc6_,_loc7_ > 1,false);
                  if(_loc10_)
                  {
                     if(§?h§.§6!#§)
                     {
                        if(!(_loc11_ && §[P§.Texture))
                        {
                           addr171:
                           _loc9_.§<+§(param2);
                        }
                     }
                     return _loc9_;
                  }
                  §§goto(addr171);
               }
               §§goto(addr70);
            }
            §§goto(addr90);
         }
         addr58:
         throw new ArgumentError("Invalid ATF data");
      }
      
      public static function §^!#§(param1:§[P§.Texture, param2:Rectangle = null, param3:Rectangle = null) : §[P§.Texture
      {
         var _loc4_:§[P§.Texture;
         (_loc4_ = new §]!&§(param1,param2)).§?!E§ = param3;
         return _loc4_;
      }
      
      public static function §%>§(param1:Context3D, param2:int = 64, param3:int = 64, param4:uint = 4.294967295E9, param5:Boolean = false) : §[P§.Texture
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:BitmapData = new BitmapData(param2,param3,true,param4);
         var _loc7_:§[P§.Texture = §+u§(param1,_loc6_,false,param5);
         if(!_loc8_)
         {
            if(!§?h§.§6!#§)
            {
               if(!_loc8_)
               {
                  addr50:
                  _loc6_.dispose();
               }
            }
            return _loc7_;
         }
         §§goto(addr50);
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
         if(_loc11_)
         {
            param1.uploadFromBitmapData(param2);
            while(param3)
            {
               addr56:
               if(!(_loc11_ || param1))
               {
                  continue;
               }
               if(false)
               {
                  loop4:
                  while(true)
                  {
                     §§push(param2.height >> 1);
                     while(!_loc10_)
                     {
                        _loc5_ = §§pop();
                        while(true)
                        {
                           §§push(1);
                           if(_loc10_ && param1)
                           {
                              break;
                           }
                           _loc6_ = §§pop();
                           if(!(_loc11_ || param3))
                           {
                              continue;
                           }
                           if(_loc11_)
                           {
                              if(_loc10_)
                              {
                                 break loop4;
                              }
                              §§goto(addr56);
                           }
                           while(true)
                           {
                              continue loop4;
                           }
                        }
                     }
                     addr81:
                     while(true)
                     {
                        _loc4_ = §§pop();
                        §§goto(addr82);
                     }
                  }
                  while(true)
                  {
                     §§goto(addr81);
                  }
                  addr77:
               }
               _loc7_ = new BitmapData(_loc4_,_loc5_,true,0);
               _loc8_ = new Matrix(0.5,0,0,0.5);
               _loc9_ = new Rectangle();
               addr164:
               §§push(_loc4_);
               if(!_loc10_)
               {
                  addr169:
                  §§push(1);
                  if(!(_loc10_ && param1))
                  {
                     addr177:
                     §§push(§§pop() >= §§pop());
                     if(!(§§pop() >= §§pop()))
                     {
                        addr179:
                        §§pop();
                        addr180:
                        if(!_loc10_)
                        {
                           §§push(_loc5_);
                           if(_loc11_)
                           {
                              if(_loc11_ || param1)
                              {
                                 §§push(1);
                                 if(!(_loc10_ && §[P§.Texture))
                                 {
                                    if(_loc11_)
                                    {
                                       §§push(§§pop() >= §§pop());
                                       if(_loc11_)
                                       {
                                          if(_loc11_)
                                          {
                                             addr144:
                                             if(!§§pop())
                                             {
                                                if(!(_loc10_ && param2))
                                                {
                                                   _loc7_.dispose();
                                                }
                                                if(_loc11_ || §[P§.Texture)
                                                {
                                                   if(false)
                                                   {
                                                      §§goto(addr164);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr180);
                                             }
                                             _loc9_.width = _loc4_;
                                             _loc9_.height = _loc5_;
                                             _loc7_.fillRect(_loc9_,0);
                                             _loc7_.draw(param2,_loc8_,null,null,null,true);
                                             param1.uploadFromBitmapData(_loc7_,_loc6_++);
                                             _loc8_.scale(0.5,0.5);
                                             addr213:
                                             if(_loc11_ || param3)
                                             {
                                                §§push(_loc4_);
                                                if(!_loc10_)
                                                {
                                                   addr206:
                                                   _loc4_ = §§pop() >> 1;
                                                   addr207:
                                                   §§push(_loc5_);
                                                   if(!_loc10_)
                                                   {
                                                      addr189:
                                                      _loc5_ = §§pop() >> 1;
                                                      if(_loc11_ || param1)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            §§goto(addr164);
                                                         }
                                                         §§goto(addr213);
                                                      }
                                                      §§goto(addr207);
                                                   }
                                                   §§goto(addr189);
                                                   addr205:
                                                }
                                                §§goto(addr206);
                                             }
                                             addr260:
                                             §§goto(addr260);
                                             addr266:
                                          }
                                          §§goto(addr177);
                                       }
                                       §§goto(addr179);
                                    }
                                    §§goto(addr189);
                                 }
                                 §§goto(addr169);
                              }
                              §§goto(addr206);
                           }
                           §§goto(addr164);
                        }
                        §§goto(addr266);
                     }
                     §§goto(addr144);
                  }
                  §§goto(addr205);
               }
               §§goto(addr189);
            }
            return;
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
      
      public function adjustVertexData(param1:§+^§, param2:int, param3:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(this.§?!E§)
         {
            if(param3 != 4)
            {
               throw new ArgumentError("Textures with a frame can only be used on quads");
            }
            §§push(this.§?!E§.width + this.§?!E§.x - this.width);
            if(!_loc6_)
            {
               §§push(Number(§§pop()));
            }
            loop0:
            while(true)
            {
               _loc4_ = §§pop();
               loop1:
               while(true)
               {
                  §§push(this.§?!E§.height + this.§?!E§.y - this.height);
                  if(!_loc6_)
                  {
                     continue loop0;
                  }
                  addr148:
                  _loc5_ = §§pop();
                  loop2:
                  do
                  {
                     param1.§7!?§(param2,-this.§?!E§.x,-this.§?!E§.y);
                     do
                     {
                        §§push(param1);
                        §§push(param2 + 1);
                        §§push(_loc4_);
                        if(!_loc6_)
                        {
                           §§push(-§§pop());
                        }
                        §§pop().§7!?§(§§pop(),§§pop(),-this.§?!E§.y);
                     }
                     while(_loc6_ && param3);
                     
                     §§push(param1);
                     §§push(param2 + 2);
                     §§push(-this.§?!E§.x);
                     §§push(_loc5_);
                     if(!_loc6_)
                     {
                        §§push(-§§pop());
                     }
                     §§pop().§7!?§(§§pop(),§§pop(),§§pop());
                     while(!(_loc6_ && param2))
                     {
                        §§push(param1);
                        §§push(param2 + 3);
                        §§push(_loc4_);
                        if(!(_loc6_ && param2))
                        {
                           §§push(-§§pop());
                        }
                        §§push(_loc5_);
                        if(_loc7_)
                        {
                           §§push(-§§pop());
                        }
                        §§pop().§7!?§(§§pop(),§§pop(),§§pop());
                        if(!_loc6_)
                        {
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
                  while(!_loc7_);
                  
               }
            }
         }
      }
      
      public function get §+e§() : Rectangle
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            return !!this.§?!E§ ? this.§?!E§.clone() : new Rectangle(0,0,this.width,this.height);
         }
         §§goto(addr32);
      }
      
      public function get clipping() : Rectangle
      {
         return new Rectangle(0,0,this.width,this.height);
      }
      
      public function get repeat() : Boolean
      {
         return this.§=@§;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§=@§ = param1;
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
      
      public function get root() : §[P§.Texture
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
      
      public function get parent() : §[P§.Texture
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
