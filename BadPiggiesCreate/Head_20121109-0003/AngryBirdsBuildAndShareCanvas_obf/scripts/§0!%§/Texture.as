package §0!%§
{
   import §%!j§.§%K§;
   import §]!R§.§'3§;
   import §]!R§.§2"2§;
   import §`!=§.§?!X§;
   import §`!=§.getNextPowerOfTwo;
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
       
      
      private var §6d§:Rectangle;
      
      private var §>Q§:Boolean;
      
      public function Texture()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
         while(getQualifiedClassName(this) != "starling.textures::Texture")
         {
            do
            {
               this.§>Q§ = false;
            }
            while(!_loc2_);
            
            if(!_loc2_)
            {
               break;
            }
            if(_loc2_)
            {
               return;
            }
         }
         throw new §'3§();
      }
      
      public static function §+o§(param1:Context3D, param2:Bitmap, param3:Boolean = true, param4:Boolean = false) : §0!%§.Texture
      {
         return §7!7§(param1,param2.bitmapData,param3,param4);
      }
      
      public static function §7!7§(param1:Context3D, param2:BitmapData, param3:Boolean = true, param4:Boolean = false) : §0!%§.Texture
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc9_:BitmapData = null;
         var _loc10_:§]0§ = null;
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
         if(_loc13_ || §0!%§.Texture)
         {
            §§push(int(§§pop()));
         }
         var _loc8_:* = §§pop();
         if(!_loc12_)
         {
            if(param1 != null)
            {
               if(!_loc12_)
               {
                  addr61:
                  §§push(int(getNextPowerOfTwo(param2.width)));
                  if(!(_loc12_ && param1))
                  {
                     _loc7_ = §§pop();
                     if(_loc13_)
                     {
                        addr81:
                        _loc8_ = int(getNextPowerOfTwo(param2.height));
                     }
                     _loc11_ = param1.createTexture(_loc7_,_loc8_,Context3DTextureFormat.BGRA,param4);
                     if(!(_loc12_ && param3))
                     {
                        §§push(_loc7_);
                        if(_loc13_ || param3)
                        {
                           §§push(_loc5_);
                           if(!_loc12_)
                           {
                              §§push(§§pop() > §§pop());
                              if(_loc13_ || param2)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc13_)
                                    {
                                       addr121:
                                       §§pop();
                                       addr165:
                                       if(!_loc12_)
                                       {
                                          addr126:
                                          §§push(_loc8_ > _loc6_);
                                       }
                                       _loc10_ = new §]0§(_loc11_,_loc7_,_loc8_,param3,true,param4);
                                       if(_loc13_)
                                       {
                                          §§push(§%K§.§!!S§);
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
                                                      addr273:
                                                      while(true)
                                                      {
                                                      }
                                                      addr222:
                                                      if(_loc13_ || param1)
                                                      {
                                                         return _loc10_;
                                                      }
                                                   }
                                                }
                                                loop2:
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
                                                               loop6:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  loop7:
                                                                  while(_loc13_ || §0!%§.Texture)
                                                                  {
                                                                     if(_loc13_ || §0!%§.Texture)
                                                                     {
                                                                        §§push(_loc6_);
                                                                        if(_loc13_)
                                                                        {
                                                                           §§push(_loc8_);
                                                                           if(_loc13_)
                                                                           {
                                                                              §§push(§§pop() == §§pop());
                                                                              if(!_loc12_)
                                                                              {
                                                                                 if(_loc13_ || §0!%§.Texture)
                                                                                 {
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       while(§§pop())
                                                                                       {
                                                                                          if(_loc12_)
                                                                                          {
                                                                                             if(_loc13_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue loop7;
                                                                                          }
                                                                                          if(!(_loc12_ && §0!%§.Texture))
                                                                                          {
                                                                                             §§goto(addr222);
                                                                                          }
                                                                                          §§goto(addr273);
                                                                                       }
                                                                                       return new §"!4§(_loc10_,new Rectangle(0,0,_loc5_,_loc6_),true);
                                                                                       addr211:
                                                                                    }
                                                                                    continue loop0;
                                                                                 }
                                                                                 continue loop5;
                                                                              }
                                                                              continue loop6;
                                                                           }
                                                                           continue loop4;
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                     addr277:
                                                                     while(true)
                                                                     {
                                                                        _loc10_.§2o§(param2);
                                                                        break loop7;
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr211);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr277);
                                          }
                                       }
                                       §§goto(addr273);
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc12_)
                                    {
                                       (_loc9_ = new BitmapData(_loc7_,_loc8_,true,0)).copyPixels(param2,param2.rect,new Point(0,0));
                                       param2 = _loc9_;
                                    }
                                    §§goto(addr165);
                                 }
                                 uploadBitmapData(_loc11_,param2,param3);
                                 §§goto(addr165);
                              }
                              §§goto(addr121);
                           }
                        }
                     }
                     §§goto(addr126);
                  }
               }
               §§goto(addr81);
            }
            §§goto(addr121);
         }
         §§goto(addr61);
      }
      
      public static function §-"5§(param1:Context3D, param2:ByteArray) : §0!%§.Texture
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc11_ || §0!%§.Texture)
         {
            if(param1 == null)
            {
               if(_loc11_ || §0!%§.Texture)
               {
                  §§goto(addr34);
               }
            }
            var _loc3_:String = String.fromCharCode(param2[0],param2[1],param2[2]);
            if(!(_loc10_ && §0!%§.Texture))
            {
               §§push(_loc3_);
               if(_loc11_)
               {
                  if(§§pop() != "ATF")
                  {
                     if(_loc11_ || param1)
                     {
                        throw new ArgumentError("Invalid ATF data");
                     }
                  }
                  else
                  {
                     addr80:
                     if(param2[6] != 2)
                     {
                        §§push(Context3DTextureFormat.BGRA);
                        if(_loc11_ || param2)
                        {
                           addr118:
                           var _loc4_:String = §§pop();
                           var _loc5_:int = Math.pow(2,param2[7]);
                           var _loc6_:int = Math.pow(2,param2[8]);
                           var _loc7_:int = param2[9];
                           var _loc8_:flash.display3D.textures.Texture = param1.createTexture(_loc5_,_loc6_,_loc4_,false);
                           addr117:
                           if(!_loc10_)
                           {
                              uploadAtfData(_loc8_,param2);
                           }
                           var _loc9_:§]0§ = new §]0§(_loc8_,_loc5_,_loc6_,_loc7_ > 1,false);
                           if(!_loc10_)
                           {
                              if(§%K§.§!!S§)
                              {
                                 if(!_loc10_)
                                 {
                                    addr182:
                                    _loc9_.§2o§(param2);
                                 }
                              }
                              return _loc9_;
                           }
                           §§goto(addr182);
                        }
                     }
                     §§goto(addr118);
                  }
                  §§push(Context3DTextureFormat.COMPRESSED);
                  if(_loc10_ && _loc3_)
                  {
                  }
                  §§goto(addr117);
               }
               §§goto(addr118);
            }
            §§goto(addr80);
         }
         addr34:
         throw new §2"2§();
      }
      
      public static function §%!8§(param1:§0!%§.Texture, param2:Rectangle = null, param3:Rectangle = null) : §0!%§.Texture
      {
         var _loc4_:§0!%§.Texture;
         (_loc4_ = new §"!4§(param1,param2)).§6d§ = param3;
         return _loc4_;
      }
      
      public static function empty(param1:Context3D, param2:int = 64, param3:int = 64, param4:uint = 4.294967295E9, param5:Boolean = false) : §0!%§.Texture
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:BitmapData = new BitmapData(param2,param3,true,param4);
         var _loc7_:§0!%§.Texture = §7!7§(param1,_loc6_,false,param5);
         if(!_loc9_)
         {
            if(!§%K§.§!!S§)
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
         if(_loc11_)
         {
            param1.uploadFromBitmapData(param2);
            loop0:
            for(; param3; if(!(_loc11_ || param3))
            {
               continue;
            },§§goto(addr96),§§push(param2.width >> 1))
            {
               if(!(_loc10_ && param2))
               {
                  continue;
               }
               addr97:
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     §§push(param2.height >> 1);
                     addr66:
                     addr96:
                     while(_loc11_ || param1)
                     {
                        _loc5_ = §§pop();
                        while(true)
                        {
                           §§push(1);
                           if(!(_loc11_ || param2))
                           {
                              break;
                           }
                           _loc6_ = §§pop();
                           if(!(_loc10_ && §0!%§.Texture))
                           {
                              if(_loc11_ || param2)
                              {
                                 if(true)
                                 {
                                    break loop3;
                                 }
                                 continue loop3;
                              }
                              continue loop2;
                           }
                        }
                     }
                     while(true)
                     {
                        _loc4_ = §§pop();
                        continue loop2;
                        §§goto(addr66);
                     }
                  }
                  _loc7_ = new BitmapData(_loc4_,_loc5_,true,0);
                  _loc8_ = new Matrix(0.5,0,0,0.5);
                  _loc9_ = new Rectangle();
                  loop6:
                  while(true)
                  {
                     §§push(_loc4_);
                     loop7:
                     while(true)
                     {
                        §§push(1);
                        loop8:
                        while(true)
                        {
                           §§push(§§pop() >= §§pop());
                           if(!(_loc10_ && §0!%§.Texture))
                           {
                              if(!§§pop())
                              {
                                 loop11:
                                 while(true)
                                 {
                                    §§pop();
                                    loop10:
                                    for(; !(_loc10_ && param3); continue loop11)
                                    {
                                       if(_loc11_ || param2)
                                       {
                                          if(!_loc10_)
                                          {
                                             §§push(_loc5_);
                                             if(!_loc11_)
                                             {
                                                continue loop7;
                                             }
                                             if(!_loc10_)
                                             {
                                                if(_loc11_)
                                                {
                                                   if(!(_loc10_ && param3))
                                                   {
                                                      §§push(1);
                                                      if(_loc10_ && param3)
                                                      {
                                                         continue loop8;
                                                      }
                                                      if(!(_loc10_ && param1))
                                                      {
                                                         addr163:
                                                         §§push(§§pop() >= §§pop());
                                                         if(_loc10_ && §0!%§.Texture)
                                                         {
                                                            continue loop11;
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               _loc9_.width = _loc4_;
                                                               break;
                                                            }
                                                            if(!(_loc10_ && param2))
                                                            {
                                                               if(_loc11_)
                                                               {
                                                                  _loc7_.dispose();
                                                                  addr184:
                                                                  if(_loc11_ || param1)
                                                                  {
                                                                     if(_loc11_ || §0!%§.Texture)
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           break loop0;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr245:
                                                                        if(!(_loc11_ || §0!%§.Texture))
                                                                        {
                                                                           addr258:
                                                                           if(!_loc10_)
                                                                           {
                                                                              if(!_loc10_)
                                                                              {
                                                                                 addr233:
                                                                                 §§push(_loc5_);
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    addr236:
                                                                                    §§push(1);
                                                                                    if(_loc11_ || param2)
                                                                                    {
                                                                                       addr244:
                                                                                       _loc5_ = §§pop() >> §§pop();
                                                                                       §§goto(addr245);
                                                                                    }
                                                                                    addr256:
                                                                                    §§push(§§pop() >> §§pop());
                                                                                 }
                                                                                 _loc4_ = §§pop();
                                                                                 §§goto(addr258);
                                                                              }
                                                                              param1.uploadFromBitmapData(_loc7_,_loc6_++);
                                                                              addr287:
                                                                           }
                                                                           _loc8_.scale(0.5,0.5);
                                                                           addr255:
                                                                           §§goto(addr256);
                                                                           §§push(_loc4_);
                                                                           §§push(1);
                                                                           addr268:
                                                                        }
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                                  continue loop10;
                                                               }
                                                               §§goto(addr268);
                                                            }
                                                            §§goto(addr184);
                                                            §§goto(addr163);
                                                         }
                                                         _loc9_.height = _loc5_;
                                                         _loc7_.fillRect(_loc9_,0);
                                                         break;
                                                         addr314:
                                                         addr308:
                                                      }
                                                      §§goto(addr236);
                                                   }
                                                   §§goto(addr255);
                                                }
                                                §§goto(addr233);
                                             }
                                             §§goto(addr244);
                                          }
                                          §§goto(addr314);
                                       }
                                       §§goto(addr308);
                                    }
                                    _loc7_.draw(param2,_loc8_,null,null,null,true);
                                    §§goto(addr287);
                                 }
                                 addr213:
                              }
                              §§goto(addr171);
                           }
                           §§goto(addr213);
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr97);
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
      
      public function adjustVertexData(param1:§?!X§, param2:int, param3:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(_loc7_)
         {
            if(this.§6d§)
            {
               if(!(_loc6_ && param3))
               {
                  if(param3 == 4)
                  {
                     loop0:
                     while(true)
                     {
                        §§push(this.§6d§.width + this.§6d§.x - this.width);
                        if(!(_loc6_ && param2))
                        {
                           §§push(Number(§§pop()));
                        }
                        loop1:
                        while(true)
                        {
                           _loc4_ = §§pop();
                           while(!(_loc6_ && param2))
                           {
                              §§push(this.§6d§.height + this.§6d§.y - this.height);
                              if(_loc7_)
                              {
                                 continue loop1;
                              }
                              addr170:
                              addr169:
                              _loc5_ = §§pop();
                              loop4:
                              while(true)
                              {
                                 param1.§^d§(param2,-this.§6d§.x,-this.§6d§.y);
                                 loop5:
                                 do
                                 {
                                    §§push(param1);
                                    §§push(param2 + 1);
                                    §§push(_loc4_);
                                    if(_loc7_ || param2)
                                    {
                                       §§push(-§§pop());
                                    }
                                    §§pop().§^d§(§§pop(),§§pop(),-this.§6d§.y);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(param1);
                                       §§push(param2 + 2);
                                       §§push(-this.§6d§.x);
                                       §§push(_loc5_);
                                       if(!(_loc6_ && param3))
                                       {
                                          §§push(-§§pop());
                                       }
                                       §§pop().§^d§(§§pop(),§§pop(),§§pop());
                                       while(true)
                                       {
                                          if(_loc7_ || param2)
                                          {
                                             continue loop4;
                                          }
                                          §§push(param1);
                                          addr114:
                                          §§push(param2 + 3);
                                          §§push(_loc4_);
                                          continue loop6;
                                          if(_loc7_ || param3)
                                          {
                                             §§push(-§§pop());
                                          }
                                          §§push(_loc5_);
                                          if(!(_loc6_ && param1))
                                          {
                                             §§push(-§§pop());
                                          }
                                          §§pop().§^d§(§§pop(),§§pop(),§§pop());
                                          if(_loc7_)
                                          {
                                             continue loop5;
                                          }
                                       }
                                       continue loop4;
                                    }
                                 }
                                 while(!_loc7_);
                                 
                                 §§goto(addr24);
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
                  throw new ArgumentError("Textures with a frame can only be used on quads");
               }
               §§goto(addr226);
            }
            addr24:
            return;
         }
         §§goto(addr170);
      }
      
      public function get frame() : Rectangle
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            return !!this.§6d§ ? this.§6d§.clone() : new Rectangle(0,0,this.width,this.height);
         }
         §§goto(addr37);
      }
      
      public function get clipping() : Rectangle
      {
         return new Rectangle(0,0,this.width,this.height);
      }
      
      public function get repeat() : Boolean
      {
         return this.§>Q§;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§>Q§ = param1;
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
      
      public function get root() : §0!%§.Texture
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
      
      public function get parent() : §0!%§.Texture
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
