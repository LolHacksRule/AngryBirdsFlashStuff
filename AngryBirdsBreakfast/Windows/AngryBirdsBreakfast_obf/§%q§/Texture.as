package §%q§
{
   import §'O§.§+!-§;
   import §'O§.§1,§;
   import §+o§.§3C§;
   import §+o§.getNextPowerOfTwo;
   import §`!a§.§1"&§;
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
       
      
      private var §2!n§:Rectangle;
      
      private var §4+§:Boolean;
      
      public function Texture()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
            while(getQualifiedClassName(this) != "starling.textures::Texture")
            {
               loop1:
               while(true)
               {
                  this.§4+§ = false;
                  if(!(_loc2_ && _loc2_))
                  {
                     break;
                  }
                  addr78:
                  while(true)
                  {
                     continue loop1;
                  }
               }
               if(!_loc1_)
               {
                  break;
               }
               if(!(_loc2_ && _loc2_))
               {
                  return;
               }
            }
            throw new §1,§();
         }
         §§goto(addr78);
      }
      
      public static function §1o§(param1:Context3D, param2:Bitmap, param3:Boolean = true, param4:Boolean = false) : §%q§.Texture
      {
         return §5r§(param1,param2.bitmapData,param3,param4);
      }
      
      public static function §5r§(param1:Context3D, param2:BitmapData, param3:Boolean = true, param4:Boolean = false) : §%q§.Texture
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc9_:BitmapData = null;
         var _loc10_:§+j§ = null;
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
         if(!(_loc12_ && param2))
         {
            if(param1 != null)
            {
               if(!(_loc12_ && param3))
               {
                  addr61:
                  §§push(int(getNextPowerOfTwo(param2.width)));
                  if(_loc13_ || param1)
                  {
                     _loc7_ = §§pop();
                     addr87:
                     if(_loc13_ || §%q§.Texture)
                     {
                        §§push(int(getNextPowerOfTwo(param2.height)));
                     }
                     _loc11_ = param1.createTexture(_loc7_,_loc8_,Context3DTextureFormat.BGRA,param4);
                     if(!_loc12_)
                     {
                        §§push(_loc7_);
                        if(!(_loc12_ && §%q§.Texture))
                        {
                           §§push(_loc5_);
                           if(!(_loc12_ && param2))
                           {
                              §§push(§§pop() > §§pop());
                              if(!_loc12_)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc13_)
                                    {
                                       addr121:
                                       §§pop();
                                       if(!(_loc12_ && param1))
                                       {
                                          addr132:
                                          addr131:
                                          addr130:
                                          if(_loc8_ > _loc6_)
                                          {
                                             if(_loc13_ || param3)
                                             {
                                                (_loc9_ = new BitmapData(_loc7_,_loc8_,true,0)).copyPixels(param2,param2.rect,new Point(0,0));
                                                param2 = _loc9_;
                                                addr140:
                                             }
                                             addr175:
                                             _loc10_ = new §+j§(_loc11_,_loc7_,_loc8_,param3,true,param4);
                                             if(!(_loc12_ && §%q§.Texture))
                                             {
                                                §§push(§1"&§.§;J§);
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
                                                               loop7:
                                                               while(true)
                                                               {
                                                                  if(!(_loc12_ && §%q§.Texture))
                                                                  {
                                                                     if(!_loc12_)
                                                                     {
                                                                        if(!(_loc12_ && param3))
                                                                        {
                                                                           §§push(_loc6_);
                                                                           if(!(_loc12_ && param1))
                                                                           {
                                                                              §§push(_loc8_);
                                                                              if(_loc13_ || §%q§.Texture)
                                                                              {
                                                                                 addr224:
                                                                                 §§push(§§pop() == §§pop());
                                                                                 if(!(_loc12_ && §%q§.Texture))
                                                                                 {
                                                                                    while(§§pop())
                                                                                    {
                                                                                       if(!(_loc13_ || param3))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(_loc13_)
                                                                                       {
                                                                                          continue loop1;
                                                                                       }
                                                                                       continue loop7;
                                                                                       §§goto(addr224);
                                                                                    }
                                                                                    return new §<w§(_loc10_,new Rectangle(0,0,_loc5_,_loc6_),true);
                                                                                    addr232:
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                              }
                                                                              addr255:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() == §§pop());
                                                                              if(_loc13_ || param2)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                        addr312:
                                                                        while(true)
                                                                        {
                                                                           _loc10_.§^e§(param2);
                                                                           break loop7;
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop2;
                                                               }
                                                               addr315:
                                                               while(true)
                                                               {
                                                                  addr253:
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr255);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr253);
                                                   }
                                                   §§goto(addr312);
                                                }
                                             }
                                             §§goto(addr315);
                                          }
                                          uploadBitmapData(_loc11_,param2,param3);
                                          §§goto(addr175);
                                       }
                                       §§goto(addr140);
                                    }
                                 }
                                 §§goto(addr132);
                              }
                              §§goto(addr121);
                           }
                           §§goto(addr131);
                        }
                        §§goto(addr130);
                     }
                     §§goto(addr175);
                  }
                  _loc8_ = §§pop();
               }
               §§goto(addr87);
            }
            §§goto(addr175);
         }
         §§goto(addr61);
      }
      
      public static function §-2§(param1:Context3D, param2:ByteArray) : §%q§.Texture
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc11_)
         {
            if(param1 == null)
            {
               if(!_loc10_)
               {
                  throw new §+!-§();
               }
            }
         }
         var _loc3_:String = String.fromCharCode(param2[0],param2[1],param2[2]);
         if(!_loc10_)
         {
            §§push(_loc3_);
            if(_loc11_)
            {
               if(§§pop() != "ATF")
               {
                  if(!_loc10_)
                  {
                     throw new ArgumentError("Invalid ATF data");
                  }
                  addr61:
                  §§push(Context3DTextureFormat.COMPRESSED);
                  if(!(_loc10_ && param2))
                  {
                     addr81:
                  }
                  addr93:
                  var _loc4_:String = §§pop();
                  var _loc5_:int = Math.pow(2,param2[7]);
                  var _loc6_:int = Math.pow(2,param2[8]);
                  var _loc7_:int = param2[9];
                  var _loc8_:flash.display3D.textures.Texture = param1.createTexture(_loc5_,_loc6_,_loc4_,false);
                  addr92:
                  if(!_loc10_)
                  {
                     uploadAtfData(_loc8_,param2);
                  }
                  var _loc9_:§+j§ = new §+j§(_loc8_,_loc5_,_loc6_,_loc7_ > 1,false);
                  if(!_loc10_)
                  {
                     if(§1"&§.§;J§)
                     {
                        if(_loc11_)
                        {
                           addr157:
                           _loc9_.§^e§(param2);
                        }
                     }
                     return _loc9_;
                  }
                  §§goto(addr157);
               }
               else
               {
                  if(param2[6] == 2)
                  {
                     §§goto(addr61);
                  }
                  else
                  {
                     §§push(Context3DTextureFormat.BGRA);
                     if(_loc11_ || §%q§.Texture)
                     {
                        §§goto(addr92);
                     }
                  }
                  §§goto(addr93);
               }
               §§goto(addr61);
            }
            §§goto(addr81);
         }
         §§goto(addr61);
      }
      
      public static function §@!r§(param1:§%q§.Texture, param2:Rectangle = null, param3:Rectangle = null) : §%q§.Texture
      {
         var _loc4_:§%q§.Texture;
         (_loc4_ = new §<w§(param1,param2)).§2!n§ = param3;
         return _loc4_;
      }
      
      public static function §8!>§(param1:Context3D, param2:int = 64, param3:int = 64, param4:uint = 4.294967295E9, param5:Boolean = false) : §%q§.Texture
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:BitmapData = new BitmapData(param2,param3,true,param4);
         var _loc7_:§%q§.Texture = §5r§(param1,_loc6_,false,param5);
         if(!_loc8_)
         {
            if(!§1"&§.§;J§)
            {
               if(!(_loc8_ && param3))
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
         if(!_loc10_)
         {
            param1.uploadFromBitmapData(param2);
         }
         loop0:
         for(; param3; while(!(_loc10_ && param2))
         {
            loop4:
            while(true)
            {
               §§push(param2.height >> 1);
               loop5:
               while(true)
               {
                  _loc5_ = §§pop();
                  while(true)
                  {
                     §§push(1);
                     if(!(_loc10_ && param2))
                     {
                        if(_loc11_)
                        {
                           _loc6_ = §§pop();
                           if(_loc10_ && param1)
                           {
                              continue;
                           }
                           if(!_loc11_)
                           {
                              break loop4;
                           }
                           if(_loc11_)
                           {
                              if(false)
                              {
                                 continue loop4;
                              }
                              _loc7_ = new BitmapData(_loc4_,_loc5_,true,0);
                              _loc8_ = new Matrix(0.5,0,0,0.5);
                              _loc9_ = new Rectangle();
                              addr180:
                              §§push(_loc4_);
                              if(_loc11_ || param1)
                              {
                                 addr190:
                                 §§push(1);
                                 if(!_loc10_)
                                 {
                                    addr193:
                                    §§push(§§pop() >= §§pop());
                                    if(!(§§pop() >= §§pop()))
                                    {
                                       addr195:
                                       §§pop();
                                       addr196:
                                       if(_loc11_)
                                       {
                                          if(!_loc10_)
                                          {
                                             if(!(_loc10_ && param1))
                                             {
                                                §§push(_loc5_);
                                                if(_loc11_)
                                                {
                                                   if(!(_loc10_ && param2))
                                                   {
                                                      if(!_loc10_)
                                                      {
                                                         §§push(1);
                                                         if(_loc11_ || param1)
                                                         {
                                                            §§push(§§pop() >= §§pop());
                                                            if(!_loc10_)
                                                            {
                                                               if(_loc11_ || param3)
                                                               {
                                                                  addr149:
                                                                  if(!§§pop())
                                                                  {
                                                                     if(_loc11_ || param2)
                                                                     {
                                                                        if(_loc11_ || param1)
                                                                        {
                                                                           if(!(_loc10_ && param3))
                                                                           {
                                                                              if(!_loc10_)
                                                                              {
                                                                                 _loc7_.dispose();
                                                                                 addr176:
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       §§goto(addr180);
                                                                                    }
                                                                                    break loop0;
                                                                                 }
                                                                                 addr241:
                                                                                 if(_loc11_ || §%q§.Texture)
                                                                                 {
                                                                                    addr234:
                                                                                    _loc4_ >>= 1;
                                                                                    addr235:
                                                                                    addr233:
                                                                                    §§push(_loc5_);
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       addr213:
                                                                                       §§push(1);
                                                                                       if(_loc11_ || param2)
                                                                                       {
                                                                                          addr221:
                                                                                          _loc5_ = §§pop() >> §§pop();
                                                                                          if(_loc11_ || param1)
                                                                                          {
                                                                                             §§goto(addr180);
                                                                                          }
                                                                                          §§goto(addr235);
                                                                                       }
                                                                                       §§goto(addr233);
                                                                                    }
                                                                                    §§goto(addr221);
                                                                                    addr232:
                                                                                 }
                                                                                 _loc7_.draw(param2,_loc8_,null,null,null,true);
                                                                                 param1.uploadFromBitmapData(_loc7_,_loc6_++);
                                                                                 _loc8_.scale(0.5,0.5);
                                                                                 §§goto(addr241);
                                                                                 addr273:
                                                                                 addr267:
                                                                                 addr257:
                                                                              }
                                                                              _loc7_.fillRect(_loc9_,0);
                                                                              §§goto(addr273);
                                                                              addr288:
                                                                           }
                                                                           §§goto(addr221);
                                                                        }
                                                                        §§goto(addr196);
                                                                     }
                                                                     §§goto(addr176);
                                                                  }
                                                                  _loc9_.width = _loc4_;
                                                                  _loc9_.height = _loc5_;
                                                                  §§goto(addr288);
                                                                  addr294:
                                                               }
                                                               §§goto(addr193);
                                                            }
                                                            §§goto(addr195);
                                                         }
                                                         §§goto(addr190);
                                                      }
                                                      §§goto(addr234);
                                                   }
                                                   §§goto(addr221);
                                                }
                                                §§goto(addr180);
                                             }
                                             §§goto(addr294);
                                          }
                                          §§goto(addr267);
                                       }
                                       §§goto(addr257);
                                    }
                                    §§goto(addr149);
                                 }
                                 §§goto(addr213);
                              }
                              §§goto(addr232);
                           }
                           else
                           {
                              §§goto(addr70);
                           }
                        }
                        break;
                     }
                     continue loop5;
                  }
                  §§goto(addr74);
               }
            }
         })
         {
            while(true)
            {
               §§push(param2.width >> 1);
               addr74:
               while(true)
               {
                  _loc4_ = §§pop();
                  continue loop0;
               }
            }
         }
      }
      
      static function uploadAtfData(param1:flash.display3D.textures.Texture, param2:ByteArray, param3:int = 0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            param1.uploadCompressedTextureFromByteArray(param2,param3);
         }
      }
      
      public function dispose() : void
      {
      }
      
      public function adjustVertexData(param1:§3C§, param2:int, param3:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(_loc7_ || param3)
         {
            if(this.§2!n§)
            {
               loop0:
               while(true)
               {
                  if(param3 == 4)
                  {
                     while(true)
                     {
                        §§push(this.§2!n§.width + this.§2!n§.x - this.width);
                        loop2:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           while(true)
                           {
                              _loc4_ = §§pop();
                              while(true)
                              {
                                 if(!_loc7_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(this.§2!n§.height + this.§2!n§.y - this.height);
                                 if(_loc7_ || param1)
                                 {
                                    if(!(_loc7_ || param2))
                                    {
                                       break;
                                    }
                                    if(_loc6_)
                                    {
                                       continue loop2;
                                    }
                                    §§push(Number(§§pop()));
                                 }
                                 _loc5_ = §§pop();
                                 loop5:
                                 while(true)
                                 {
                                    param1.include(param2,-this.§2!n§.x,-this.§2!n§.y);
                                    addr132:
                                    while(_loc7_ || param3)
                                    {
                                       while(true)
                                       {
                                          §§push(param1);
                                          §§push(param2 + 1);
                                          §§push(_loc4_);
                                          if(!(_loc6_ && param3))
                                          {
                                             §§push(-§§pop());
                                          }
                                          §§pop().include(§§pop(),§§pop(),-this.§2!n§.y);
                                          continue loop5;
                                       }
                                       return;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  throw new ArgumentError("Textures with a frame can only be used on quads");
               }
            }
            §§goto(addr29);
         }
         §§goto(addr139);
      }
      
      public function get §>!A§() : Rectangle
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            return !!this.§2!n§ ? this.§2!n§.clone() : new Rectangle(0,0,this.width,this.height);
         }
         §§goto(addr37);
      }
      
      public function get clipping() : Rectangle
      {
         return new Rectangle(0,0,this.width,this.height);
      }
      
      public function get repeat() : Boolean
      {
         return this.§4+§;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§4+§ = param1;
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
      
      public function get root() : §%q§.Texture
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
      
      public function get parent() : §%q§.Texture
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
