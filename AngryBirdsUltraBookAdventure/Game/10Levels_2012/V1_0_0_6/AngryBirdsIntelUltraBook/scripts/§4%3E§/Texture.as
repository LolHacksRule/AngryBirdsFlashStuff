package §4>§
{
   import §!!K§.§else§;
   import §4!S§.§#!s§;
   import §4!S§.§<!f§;
   import §9!k§.§=A§;
   import §9!k§.getNextPowerOfTwo;
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
       
      
      private var §&I§:Rectangle;
      
      private var §,"§:Boolean;
      
      public function Texture()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
            while(true)
            {
               if(getQualifiedClassName(this) == "starling.textures::Texture")
               {
                  if(_loc2_)
                  {
                     break;
                  }
                  while(true)
                  {
                  }
                  addr74:
               }
               while(true)
               {
                  this.§,"§ = false;
                  if(_loc2_)
                  {
                     break;
                  }
                  §§goto(addr74);
               }
               if(!(_loc1_ && _loc1_))
               {
                  return;
               }
            }
         }
         throw new §#!s§();
      }
      
      public static function § l§(param1:Context3D, param2:Bitmap, param3:Boolean = true, param4:Boolean = false) : §4>§.Texture
      {
         return §4!`§(param1,param2.bitmapData,param3,param4);
      }
      
      public static function §4!`§(param1:Context3D, param2:BitmapData, param3:Boolean = true, param4:Boolean = false) : §4>§.Texture
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc9_:BitmapData = null;
         var _loc10_:§<J§ = null;
         var _loc11_:flash.display3D.textures.Texture = null;
         var _loc5_:int = param2.width;
         var _loc6_:int = param2.height;
         §§push(_loc5_);
         if(_loc13_ || param1)
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
         if(!_loc12_)
         {
            if(param1 != null)
            {
               if(!(_loc12_ && param1))
               {
                  §§push(int(getNextPowerOfTwo(param2.width)));
                  if(!_loc12_)
                  {
                     _loc7_ = §§pop();
                     if(_loc13_ || param1)
                     {
                        addr81:
                        _loc8_ = int(getNextPowerOfTwo(param2.height));
                     }
                     _loc11_ = param1.createTexture(_loc7_,_loc8_,Context3DTextureFormat.BGRA,param4);
                     if(!(_loc12_ && param1))
                     {
                        §§push(_loc7_);
                        if(!(_loc12_ && §4>§.Texture))
                        {
                           §§push(_loc5_);
                           if(!(_loc12_ && param2))
                           {
                              §§push(§§pop() > §§pop());
                              if(_loc13_)
                              {
                                 if(!§§pop())
                                 {
                                    if(!_loc12_)
                                    {
                                       §§pop();
                                       §§goto(addr145);
                                    }
                                 }
                              }
                              if(§§pop())
                              {
                                 if(!_loc13_)
                                 {
                                 }
                              }
                              §§goto(addr145);
                           }
                        }
                        §§goto(addr141);
                     }
                     §§goto(addr145);
                  }
               }
               §§goto(addr81);
            }
            addr145:
            if(_loc13_ || param1)
            {
               addr141:
               §§push(_loc8_ > _loc6_);
            }
            (_loc9_ = new BitmapData(_loc7_,_loc8_,true,0)).copyPixels(param2,param2.rect,new Point(0,0));
            param2 = _loc9_;
            uploadBitmapData(_loc11_,param2,param3);
            _loc10_ = new §<J§(_loc11_,_loc7_,_loc8_,param3,true,param4);
            if(!(_loc12_ && param1))
            {
               §§push(§else§.§]!-§);
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        _loc10_.§!G§(param2);
                        addr285:
                        while(true)
                        {
                        }
                     }
                     addr282:
                  }
                  else if(_loc9_)
                  {
                     while(true)
                     {
                        if(!_loc12_)
                        {
                           _loc9_.dispose();
                           while(true)
                           {
                           }
                           addr278:
                        }
                        else
                        {
                           §§goto(addr285);
                        }
                        addr229:
                        if(!(_loc13_ || param2))
                        {
                           continue;
                        }
                        if(_loc13_ || param2)
                        {
                           §§goto(addr188);
                        }
                        §§goto(addr282);
                     }
                  }
                  loop4:
                  while(true)
                  {
                     §§push(_loc5_);
                     while(true)
                     {
                        §§push(_loc7_);
                        addr257:
                        while(true)
                        {
                           §§push(§§pop() == §§pop());
                           continue loop0;
                        }
                        loop9:
                        while(true)
                        {
                           §§push(_loc6_);
                           if(!_loc13_)
                           {
                              break;
                           }
                           §§push(_loc8_);
                           if(!_loc12_)
                           {
                              §§push(§§pop() == §§pop());
                              if(!_loc12_)
                              {
                                 if(!(_loc12_ && param1))
                                 {
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc13_)
                                          {
                                             if(_loc13_)
                                             {
                                                if(!_loc12_)
                                                {
                                                   §§goto(addr227);
                                                }
                                                break;
                                             }
                                             continue loop9;
                                          }
                                          §§goto(addr229);
                                       }
                                       addr188:
                                       return new § !C§(_loc10_,new Rectangle(0,0,_loc5_,_loc6_),true);
                                    }
                                    continue loop4;
                                    addr219:
                                 }
                                 continue loop0;
                              }
                              addr267:
                              while(true)
                              {
                                 §§pop();
                                 continue loop9;
                              }
                           }
                           else
                           {
                              §§goto(addr257);
                           }
                        }
                     }
                  }
               }
            }
            addr227:
            return _loc10_;
         }
         §§goto(addr81);
      }
      
      public static function §;!k§(param1:Context3D, param2:ByteArray) : §4>§.Texture
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc10_ || param2)
         {
            if(param1 == null)
            {
               if(_loc10_ || param2)
               {
                  throw new §<!f§();
               }
            }
         }
         var _loc3_:String = String.fromCharCode(param2[0],param2[1],param2[2]);
         if(!(_loc11_ && §4>§.Texture))
         {
            §§push(_loc3_);
            if(_loc10_)
            {
               if(§§pop() != "ATF")
               {
                  if(_loc10_)
                  {
                     §§goto(addr63);
                  }
               }
               else
               {
                  if(param2[6] == 2)
                  {
                     addr90:
                     §§push(Context3DTextureFormat.COMPRESSED);
                     if(!(_loc11_ && param1))
                     {
                        addr106:
                        §§push(§§pop());
                     }
                  }
                  else
                  {
                     §§push(Context3DTextureFormat.BGRA);
                     if(!_loc11_)
                     {
                        §§goto(addr106);
                     }
                  }
                  var _loc4_:* = §§pop();
                  var _loc5_:int = Math.pow(2,param2[7]);
                  var _loc6_:int = Math.pow(2,param2[8]);
                  var _loc7_:int = param2[9];
                  var _loc8_:flash.display3D.textures.Texture = param1.createTexture(_loc5_,_loc6_,_loc4_,false);
                  if(!(_loc11_ && param2))
                  {
                     uploadAtfData(_loc8_,param2);
                  }
                  var _loc9_:§<J§ = new §<J§(_loc8_,_loc5_,_loc6_,_loc7_ > 1,false);
                  if(_loc10_)
                  {
                     if(§else§.§]!-§)
                     {
                        if(!(_loc11_ && §4>§.Texture))
                        {
                           addr181:
                           _loc9_.§!G§(param2);
                        }
                     }
                     return _loc9_;
                  }
                  §§goto(addr181);
               }
               §§goto(addr90);
            }
            §§goto(addr106);
         }
         addr63:
         throw new ArgumentError("Invalid ATF data");
      }
      
      public static function §6a§(param1:§4>§.Texture, param2:Rectangle = null, param3:Rectangle = null) : §4>§.Texture
      {
         var _loc4_:§4>§.Texture;
         (_loc4_ = new § !C§(param1,param2)).§&I§ = param3;
         return _loc4_;
      }
      
      public static function §!!w§(param1:Context3D, param2:int = 64, param3:int = 64, param4:uint = 4.294967295E9, param5:Boolean = false) : §4>§.Texture
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:BitmapData = new BitmapData(param2,param3,true,param4);
         var _loc7_:§4>§.Texture = §4!`§(param1,_loc6_,false,param5);
         if(_loc8_)
         {
            if(!§else§.§]!-§)
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
            for(; param3; while(!(_loc10_ && param3))
            {
            })
            {
               if(_loc11_ || param3)
               {
                  §§push(param2.width >> 1);
                  while(true)
                  {
                     _loc4_ = §§pop();
                  }
                  addr81:
               }
               while(true)
               {
                  addr53:
                  while(true)
                  {
                     §§push(param2.height >> 1);
                     addr58:
                     while(true)
                     {
                        _loc5_ = §§pop();
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr285);
         }
         while(true)
         {
            §§push(1);
            if(!_loc10_)
            {
               if(_loc11_)
               {
                  _loc6_ = §§pop();
                  if(!_loc10_)
                  {
                     if(!(_loc10_ && param2))
                     {
                        if(false)
                        {
                           §§goto(addr53);
                        }
                        else
                        {
                           _loc7_ = new BitmapData(_loc4_,_loc5_,true,0);
                           _loc8_ = new Matrix(0.5,0,0,0.5);
                           _loc9_ = new Rectangle();
                           loop7:
                           while(true)
                           {
                              §§push(_loc4_);
                              loop8:
                              while(_loc11_)
                              {
                                 if(!(_loc10_ && §4>§.Texture))
                                 {
                                    if(!(_loc10_ && §4>§.Texture))
                                    {
                                       §§push(1);
                                       loop9:
                                       while(!(_loc10_ && param1))
                                       {
                                          §§push(§§pop() >= §§pop());
                                          loop10:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      _loc9_.width = _loc4_;
                                                      break;
                                                   }
                                                   if(_loc11_)
                                                   {
                                                      if(!(_loc11_ || §4>§.Texture))
                                                      {
                                                         loop12:
                                                         while(!_loc10_)
                                                         {
                                                            if(_loc11_ || param3)
                                                            {
                                                               §§push(_loc5_);
                                                               if(_loc10_)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               §§push(1);
                                                               if(!_loc11_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               §§push(§§pop() >= §§pop());
                                                               if(_loc11_ || param3)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               addr202:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  continue loop12;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr228);
                                                            }
                                                         }
                                                         addr222:
                                                         continue loop7;
                                                      }
                                                      if(_loc11_ || param3)
                                                      {
                                                         if(!(_loc11_ || param3))
                                                         {
                                                            break;
                                                         }
                                                         _loc7_.dispose();
                                                         addr167:
                                                         if(!_loc10_)
                                                         {
                                                            if(_loc11_)
                                                            {
                                                               if(false)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               §§goto(addr285);
                                                            }
                                                            else
                                                            {
                                                               _loc7_.fillRect(_loc9_,0);
                                                               _loc7_.draw(param2,_loc8_,null,null,null,true);
                                                               param1.uploadFromBitmapData(_loc7_,_loc6_++);
                                                               addr267:
                                                               if(_loc11_)
                                                               {
                                                                  _loc8_.scale(0.5,0.5);
                                                                  addr234:
                                                                  if(!_loc11_)
                                                                  {
                                                                     §§goto(addr267);
                                                                  }
                                                                  addr225:
                                                                  §§push(_loc4_);
                                                                  §§push(1);
                                                                  while(true)
                                                                  {
                                                                     addr227:
                                                                     addr215:
                                                                     _loc4_ = §§pop() >> §§pop();
                                                                     addr228:
                                                                     break loop9;
                                                                  }
                                                                  §§push(§§pop() >> §§pop());
                                                                  break loop8;
                                                                  addr226:
                                                               }
                                                               addr273:
                                                               §§goto(addr273);
                                                               addr278:
                                                            }
                                                         }
                                                         §§goto(addr234);
                                                      }
                                                      §§goto(addr267);
                                                      §§goto(addr228);
                                                   }
                                                   §§goto(addr167);
                                                }
                                                _loc9_.height = _loc5_;
                                                §§goto(addr278);
                                                addr140:
                                             }
                                             §§goto(addr202);
                                          }
                                       }
                                       if(_loc11_)
                                       {
                                          §§goto(addr234);
                                       }
                                       §§goto(addr226);
                                    }
                                    §§goto(addr227);
                                 }
                                 §§goto(addr215);
                              }
                              while(_loc10_)
                              {
                                 §§goto(addr225);
                                 §§goto(addr234);
                              }
                              _loc5_ = §§pop();
                              §§goto(addr222);
                           }
                        }
                        addr285:
                        return;
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr59);
               }
               §§goto(addr81);
            }
            §§goto(addr58);
         }
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
      
      public function adjustVertexData(param1:§=A§, param2:int, param3:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(!_loc6_)
         {
            if(this.§&I§)
            {
               loop0:
               for(; param3 == 4; if(_loc6_ && param2)
               {
                  continue;
               },§§push(param1),§§push(param2 + 1),§§push(_loc4_),if(_loc7_ || param3)
               {
                  §§push(-§§pop());
               },§§pop().§9!a§(§§pop(),§§pop(),-this.§&I§.y),while(true)
               {
                  §§push(param1);
                  §§push(param2 + 2);
                  §§push(-this.§&I§.x);
                  §§push(_loc5_);
                  if(_loc7_ || param2)
                  {
                     §§push(-§§pop());
                  }
                  §§pop().§9!a§(§§pop(),§§pop(),§§pop());
                  while(!_loc6_)
                  {
                     if(_loc6_ && param3)
                     {
                        break loop0;
                     }
                     §§push(param1);
                     §§push(param2 + 3);
                     §§push(_loc4_);
                     if(_loc7_ || param1)
                     {
                        §§push(-§§pop());
                     }
                     §§push(_loc5_);
                     if(_loc7_ || param2)
                     {
                        §§push(-§§pop());
                     }
                     §§pop().§9!a§(§§pop(),§§pop(),§§pop());
                     if(_loc6_)
                     {
                        continue;
                     }
                     if(!_loc6_)
                     {
                        if(!_loc6_)
                        {
                           if(!(_loc6_ && param2))
                           {
                              §§goto(addr24);
                           }
                           §§goto(addr182);
                        }
                        §§goto(addr181);
                     }
                     §§goto(addr137);
                  }
               })
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§&I§.width + this.§&I§.x - this.width);
                     loop2:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        loop3:
                        while(true)
                        {
                           _loc4_ = §§pop();
                           addr195:
                           loop4:
                           while(true)
                           {
                              §§push(this.§&I§.height + this.§&I§.y - this.height);
                              if(!_loc6_)
                              {
                                 if(!_loc7_)
                                 {
                                    continue loop2;
                                 }
                                 §§push(Number(§§pop()));
                              }
                              if(_loc6_ && param1)
                              {
                                 continue loop3;
                              }
                              _loc5_ = §§pop();
                              while(true)
                              {
                                 param1.§9!a§(param2,-this.§&I§.x,-this.§&I§.y);
                                 addr137:
                                 while(true)
                                 {
                                    if(!_loc6_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop4;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
               }
               throw new ArgumentError("Textures with a frame can only be used on quads");
            }
            addr24:
            return;
         }
         §§goto(addr195);
      }
      
      public function get frame() : Rectangle
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            return !!this.§&I§ ? this.§&I§.clone() : new Rectangle(0,0,this.width,this.height);
         }
         §§goto(addr37);
      }
      
      public function get clipping() : Rectangle
      {
         return new Rectangle(0,0,this.width,this.height);
      }
      
      public function get repeat() : Boolean
      {
         return this.§,"§;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§,"§ = param1;
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
      
      public function get root() : §4>§.Texture
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
      
      public function get parent() : §4>§.Texture
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
