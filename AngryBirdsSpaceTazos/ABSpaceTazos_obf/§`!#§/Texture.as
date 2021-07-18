package §`!#§
{
   import §&!Z§.§6!r§;
   import §&!Z§.getNextPowerOfTwo;
   import §5Q§.§^!e§;
   import §=5§.§""C§;
   import §=5§.§^T§;
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
       
      
      private var §>?§:Rectangle;
      
      private var §#!=§:Boolean;
      
      public function Texture()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            loop0:
            do
            {
               if(getQualifiedClassName(this) == "starling.textures::Texture")
               {
                  if(!(_loc1_ && this))
                  {
                     throw new §^T§();
                  }
                  loop1:
                  while(true)
                  {
                     addr24:
                     while(true)
                     {
                        this.§#!=§ = false;
                        if(!(_loc1_ && this))
                        {
                           break;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
               §§goto(addr24);
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      public static function §3<§(param1:Context3D, param2:Bitmap, param3:Boolean = true, param4:Boolean = false) : §`!#§.Texture
      {
         return §"A§(param1,param2.bitmapData,param3,param4);
      }
      
      public static function §"A§(param1:Context3D, param2:BitmapData, param3:Boolean = true, param4:Boolean = false) : §`!#§.Texture
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc9_:BitmapData = null;
         var _loc10_:§[!O§ = null;
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
         if(!(_loc13_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc8_:* = §§pop();
         if(_loc12_)
         {
            if(param1 != null)
            {
               if(!_loc13_)
               {
                  §§push(int(getNextPowerOfTwo(param2.width)));
                  if(_loc12_)
                  {
                     _loc7_ = §§pop();
                     addr76:
                     if(_loc12_)
                     {
                        §§push(int(getNextPowerOfTwo(param2.height)));
                     }
                     _loc11_ = param1.createTexture(_loc7_,_loc8_,Context3DTextureFormat.BGRA,param4);
                     if(!_loc13_)
                     {
                        §§push(_loc7_);
                        if(!_loc13_)
                        {
                           §§push(_loc5_);
                           if(_loc12_ || param2)
                           {
                              §§push(§§pop() > §§pop());
                              if(!(_loc13_ && param2))
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc12_ || param3)
                                    {
                                       §§pop();
                                       if(!_loc13_)
                                       {
                                          addr121:
                                          addr120:
                                          addr119:
                                          addr118:
                                          if(_loc8_ > _loc6_)
                                          {
                                             if(!_loc13_)
                                             {
                                                (_loc9_ = new BitmapData(_loc7_,_loc8_,true,0)).copyPixels(param2,param2.rect,new Point(0,0));
                                                param2 = _loc9_;
                                                addr124:
                                             }
                                             addr159:
                                             _loc10_ = new §[!O§(_loc11_,_loc7_,_loc8_,param3,true,param4);
                                             if(!(_loc13_ && param2))
                                             {
                                                §§push(§^!e§.§<S§);
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
                                                            _loc9_.dispose();
                                                            loop2:
                                                            while(true)
                                                            {
                                                               addr215:
                                                               if(_loc12_ || param1)
                                                               {
                                                                  if(!(_loc12_ || §`!#§.Texture))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        _loc10_.§1!!§(param2);
                                                                        loop10:
                                                                        while(true)
                                                                        {
                                                                           addr241:
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
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    addr256:
                                                                                    loop8:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       loop7:
                                                                                       for(; _loc12_; continue loop8)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc6_);
                                                                                             if(!(_loc13_ && §`!#§.Texture))
                                                                                             {
                                                                                                §§push(_loc8_);
                                                                                                if(_loc12_)
                                                                                                {
                                                                                                   addr203:
                                                                                                   §§push(§§pop() == §§pop());
                                                                                                   if(!(_loc13_ && param3))
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(!_loc13_)
                                                                                                            {
                                                                                                               §§goto(addr215);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               if(!(_loc12_ || param3))
                                                                                                               {
                                                                                                                  continue loop7;
                                                                                                               }
                                                                                                               if(!_loc12_)
                                                                                                               {
                                                                                                                  continue loop10;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         return new §`!X§(_loc10_,new Rectangle(0,0,_loc5_,_loc6_),true);
                                                                                                         §§goto(addr203);
                                                                                                      }
                                                                                                      continue loop2;
                                                                                                      addr211:
                                                                                                   }
                                                                                                   continue loop8;
                                                                                                }
                                                                                                continue loop5;
                                                                                             }
                                                                                             continue loop4;
                                                                                          }
                                                                                       }
                                                                                       continue loop1;
                                                                                    }
                                                                                 }
                                                                                 continue loop0;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr281:
                                                                  }
                                                                  return _loc10_;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr241);
                                                   }
                                                   §§goto(addr281);
                                                }
                                             }
                                             §§goto(addr259);
                                          }
                                          uploadBitmapData(_loc11_,param2,param3);
                                          §§goto(addr159);
                                       }
                                       §§goto(addr124);
                                    }
                                 }
                              }
                              §§goto(addr121);
                           }
                           §§goto(addr120);
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr118);
                  }
                  _loc8_ = §§pop();
               }
               §§goto(addr76);
            }
            §§goto(addr159);
         }
         §§goto(addr76);
      }
      
      public static function §="!§(param1:Context3D, param2:ByteArray) : §`!#§.Texture
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
            if(!(_loc11_ && param2))
            {
               §§push(_loc3_);
               if(_loc10_ || §`!#§.Texture)
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
                     addr75:
                     §§push(Context3DTextureFormat.COMPRESSED);
                     if(_loc10_ || _loc3_)
                     {
                        addr106:
                        §§push(§§pop());
                     }
                  }
                  else
                  {
                     §§push(Context3DTextureFormat.BGRA);
                     if(!(_loc11_ && param1))
                     {
                        §§goto(addr106);
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
                  var _loc9_:§[!O§ = new §[!O§(_loc8_,_loc5_,_loc6_,_loc7_ > 1,false);
                  if(!(_loc11_ && _loc3_))
                  {
                     if(§^!e§.§<S§)
                     {
                        if(!(_loc11_ && _loc3_))
                        {
                           _loc9_.§1!!§(param2);
                        }
                     }
                  }
                  return _loc9_;
               }
               §§goto(addr106);
            }
            §§goto(addr75);
         }
         addr23:
         throw new §""C§();
      }
      
      public static function §>!r§(param1:§`!#§.Texture, param2:Rectangle = null, param3:Rectangle = null) : §`!#§.Texture
      {
         var _loc4_:§`!#§.Texture;
         (_loc4_ = new §`!X§(param1,param2)).§>?§ = param3;
         return _loc4_;
      }
      
      public static function §#M§(param1:Context3D, param2:int = 64, param3:int = 64, param4:uint = 4.294967295E9, param5:Boolean = false) : §`!#§.Texture
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:BitmapData = new BitmapData(param2,param3,true,param4);
         var _loc7_:§`!#§.Texture = §"A§(param1,_loc6_,false,param5);
         if(_loc8_)
         {
            if(!§^!e§.§<S§)
            {
               if(_loc8_ || param1)
               {
                  addr64:
                  _loc6_.dispose();
               }
            }
            return _loc7_;
         }
         §§goto(addr64);
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
            loop0:
            for(; param3; if(!(_loc11_ || param2))
            {
               continue;
            },§§goto(addr81),§§push(param2.width >> 1))
            {
               if(!(_loc10_ && param2))
               {
                  continue;
               }
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     §§push(param2.height >> 1);
                     loop4:
                     while(!_loc10_)
                     {
                        _loc5_ = §§pop();
                        loop5:
                        for(; !_loc10_; _loc6_ = §§pop(),if(!(_loc11_ || param1))
                        {
                           continue;
                        },if(false)
                        {
                           continue loop3;
                        },§§goto(addr87))
                        {
                           while(true)
                           {
                              §§push(1);
                              if(!_loc10_)
                              {
                                 continue loop5;
                              }
                              continue loop4;
                           }
                           _loc7_ = new BitmapData(_loc4_,_loc5_,true,0);
                           _loc8_ = new Matrix(0.5,0,0,0.5);
                           _loc9_ = new Rectangle();
                           loop7:
                           while(true)
                           {
                              §§push(_loc4_);
                              loop8:
                              while(!_loc10_)
                              {
                                 §§push(1);
                                 loop9:
                                 for(; !_loc10_; §§push(1),if(!(_loc11_ || §`!#§.Texture))
                                 {
                                    continue;
                                 },§§push(§§pop() >= §§pop()),if(!_loc10_)
                                 {
                                    §§goto(addr127);
                                 },§§goto(addr185))
                                 {
                                    if(!_loc10_)
                                    {
                                       §§push(§§pop() >= §§pop());
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                addr186:
                                                while(_loc11_ || param2)
                                                {
                                                   §§push(_loc5_);
                                                   if(!_loc10_)
                                                   {
                                                      if(_loc11_)
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            §§push(1);
                                                         }
                                                         else
                                                         {
                                                            addr196:
                                                         }
                                                         continue loop9;
                                                         break loop9;
                                                      }
                                                      addr198:
                                                      _loc5_ = §§pop();
                                                      break;
                                                   }
                                                   continue loop8;
                                                }
                                                addr221:
                                                if(_loc11_ || param1)
                                                {
                                                   addr206:
                                                   if(!_loc11_)
                                                   {
                                                      while(!(_loc11_ || param1))
                                                      {
                                                         while(true)
                                                         {
                                                            if(!(_loc10_ && param3))
                                                            {
                                                               if(_loc11_ || param1)
                                                               {
                                                                  break;
                                                               }
                                                               addr288:
                                                               addr294:
                                                               _loc9_.height = _loc5_;
                                                               _loc7_.fillRect(_loc9_,0);
                                                            }
                                                            _loc7_.draw(param2,_loc8_,null,null,null,true);
                                                         }
                                                         param1.uploadFromBitmapData(_loc7_,_loc6_++);
                                                         _loc8_.scale(0.5,0.5);
                                                      }
                                                      §§push(_loc4_);
                                                      if(_loc11_ || param1)
                                                      {
                                                         addr219:
                                                         §§push(§§pop() >> 1);
                                                         break loop8;
                                                      }
                                                      break loop8;
                                                      addr227:
                                                   }
                                                   continue loop7;
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr196);
                                                }
                                                §§goto(addr206);
                                             }
                                             addr185:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   _loc9_.width = _loc4_;
                                                   break;
                                                }
                                                if(!(_loc10_ && param2))
                                                {
                                                   if(_loc11_ || param2)
                                                   {
                                                      if(_loc11_ || param3)
                                                      {
                                                         _loc7_.dispose();
                                                         addr169:
                                                         if(_loc11_)
                                                         {
                                                            if(true)
                                                            {
                                                               break loop0;
                                                            }
                                                            continue loop7;
                                                         }
                                                         §§goto(addr243);
                                                      }
                                                      §§goto(addr288);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr186);
                                                   }
                                                }
                                                §§goto(addr169);
                                             }
                                             addr134:
                                          }
                                          §§goto(addr294);
                                          addr127:
                                          if(!(_loc11_ || param3))
                                          {
                                             continue;
                                          }
                                          §§goto(addr134);
                                       }
                                    }
                                    §§goto(addr219);
                                 }
                                 §§goto(addr198);
                                 §§push(§§pop() >> §§pop());
                              }
                              while(true)
                              {
                                 _loc4_ = §§pop();
                                 §§goto(addr221);
                              }
                              §§goto(addr206);
                           }
                        }
                        continue loop2;
                     }
                     addr81:
                     while(true)
                     {
                        _loc4_ = §§pop();
                        continue loop2;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr59);
      }
      
      static function uploadAtfData(param1:flash.display3D.textures.Texture, param2:ByteArray, param3:int = 0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            param1.uploadCompressedTextureFromByteArray(param2,param3);
         }
      }
      
      public function dispose() : void
      {
      }
      
      public function adjustVertexData(param1:§6!r§, param2:int, param3:int) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(!(_loc7_ && param2))
         {
            if(this.§>?§)
            {
               loop0:
               while(true)
               {
                  if(param3 == 4)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(this.§>?§.width + this.§>?§.x - this.width);
                        loop2:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop3:
                           while(true)
                           {
                              _loc4_ = §§pop();
                              loop4:
                              while(_loc6_)
                              {
                                 §§push(this.§>?§.height + this.§>?§.y - this.height);
                                 if(!_loc7_)
                                 {
                                    if(_loc7_ && param1)
                                    {
                                       continue loop3;
                                    }
                                    §§push(Number(§§pop()));
                                 }
                                 if(!(_loc6_ || param3))
                                 {
                                    continue loop2;
                                 }
                                 _loc5_ = §§pop();
                                 loop5:
                                 while(true)
                                 {
                                    param1.§<">§(param2,-this.§>?§.x,-this.§>?§.y);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(param1);
                                       §§push(param2 + 1);
                                       §§push(_loc4_);
                                       if(_loc6_)
                                       {
                                          §§push(-§§pop());
                                       }
                                       §§pop().§<">§(§§pop(),§§pop(),-this.§>?§.y);
                                       while(true)
                                       {
                                          if(!_loc7_)
                                          {
                                             if(!(_loc6_ || param1))
                                             {
                                                break;
                                             }
                                             if(_loc6_ || param1)
                                             {
                                                §§push(param1);
                                                §§push(param2 + 2);
                                                §§push(-this.§>?§.x);
                                                §§push(_loc5_);
                                                if(!_loc7_)
                                                {
                                                   §§push(-§§pop());
                                                }
                                                §§pop().§<">§(§§pop(),§§pop(),§§pop());
                                                continue loop6;
                                             }
                                             continue loop1;
                                          }
                                          continue loop5;
                                          addr63:
                                          if(_loc6_ || param2)
                                          {
                                             continue loop0;
                                          }
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                              §§goto(addr216);
                           }
                        }
                     }
                  }
                  §§goto(addr216);
               }
            }
            return;
         }
         addr216:
         throw new ArgumentError("Textures with a frame can only be used on quads");
      }
      
      public function get §`6§() : Rectangle
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            return !!this.§>?§ ? this.§>?§.clone() : new Rectangle(0,0,this.width,this.height);
         }
         §§goto(addr31);
      }
      
      public function get clipping() : Rectangle
      {
         return new Rectangle(0,0,this.width,this.height);
      }
      
      public function get repeat() : Boolean
      {
         return this.§#!=§;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§#!=§ = param1;
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
      
      public function get root() : §`!#§.Texture
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
      
      public function get parent() : §`!#§.Texture
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
