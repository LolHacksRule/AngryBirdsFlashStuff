package §^!+§
{
   import § !'§.§4!+§;
   import § !'§.§[!$§;
   import §<&§.§^b§;
   import §`s§.§0p§;
   import §`s§.getNextPowerOfTwo;
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
       
      
      private var §&!;§:Rectangle;
      
      private var §%1§:Boolean;
      
      public function Texture()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
            while(getQualifiedClassName(this) != "starling.textures::Texture")
            {
               do
               {
                  this.§%1§ = false;
               }
               while(_loc2_ && this);
               
               if(!_loc1_)
               {
                  break;
               }
               if(_loc2_)
               {
                  continue;
               }
               return;
               addr63:
            }
            throw new §[!$§();
         }
         §§goto(addr63);
      }
      
      public static function §@#§(param1:Context3D, param2:Bitmap, param3:Boolean = true, param4:Boolean = false) : §^!+§.Texture
      {
         return §>x§(param1,param2.bitmapData,param3,param4);
      }
      
      public static function §>x§(param1:Context3D, param2:BitmapData, param3:Boolean = true, param4:Boolean = false) : §^!+§.Texture
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc9_:BitmapData = null;
         var _loc10_:§+!I§ = null;
         var _loc11_:flash.display3D.textures.Texture = null;
         var _loc5_:int = param2.width;
         var _loc6_:int = param2.height;
         §§push(_loc5_);
         if(!(_loc13_ && §^!+§.Texture))
         {
            §§push(int(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(_loc6_);
         if(!(_loc13_ && param2))
         {
            §§push(int(§§pop()));
         }
         var _loc8_:* = §§pop();
         if(!_loc13_)
         {
            if(param1 != null)
            {
               if(!(_loc13_ && param1))
               {
                  §§push(int(getNextPowerOfTwo(param2.width)));
                  if(!_loc13_)
                  {
                     _loc7_ = §§pop();
                     addr86:
                     if(_loc12_ || param3)
                     {
                        addr80:
                        §§push(int(getNextPowerOfTwo(param2.height)));
                     }
                     _loc11_ = param1.createTexture(_loc7_,_loc8_,Context3DTextureFormat.BGRA,param4);
                     if(_loc12_ || param3)
                     {
                        §§push(_loc7_);
                        if(_loc12_ || param3)
                        {
                           §§push(_loc5_);
                           if(!_loc13_)
                           {
                              §§push(§§pop() > §§pop());
                              if(!_loc13_)
                              {
                                 if(!§§pop())
                                 {
                                    if(!(_loc13_ && §^!+§.Texture))
                                    {
                                       addr125:
                                       §§pop();
                                       addr174:
                                       if(_loc12_)
                                       {
                                          addr140:
                                          §§push(_loc8_ > _loc6_);
                                       }
                                       _loc10_ = new §+!I§(_loc11_,_loc7_,_loc8_,param3,true,param4);
                                       if(!_loc13_)
                                       {
                                          §§push(§^b§.§16§);
                                          loop0:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc12_)
                                                {
                                                   _loc10_.§;x§(param2);
                                                }
                                                while(true)
                                                {
                                                   addr270:
                                                   if(_loc13_ && param3)
                                                   {
                                                      continue;
                                                   }
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(_loc6_);
                                                      if(!(_loc13_ && param1))
                                                      {
                                                         §§push(_loc8_);
                                                         if(_loc12_ || param2)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(_loc13_ && param3)
                                                            {
                                                               continue loop0;
                                                            }
                                                            if(_loc12_ || §^!+§.Texture)
                                                            {
                                                               loop10:
                                                               while(§§pop())
                                                               {
                                                                  if(!_loc12_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!_loc13_)
                                                                  {
                                                                     return _loc10_;
                                                                  }
                                                                  addr266:
                                                                  loop9:
                                                                  while(_loc12_)
                                                                  {
                                                                     if(_loc12_)
                                                                     {
                                                                        §§goto(addr270);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           _loc9_.dispose();
                                                                           break loop9;
                                                                        }
                                                                        addr283:
                                                                     }
                                                                  }
                                                                  loop2:
                                                                  while(true)
                                                                  {
                                                                     addr242:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc5_);
                                                                        addr244:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc7_);
                                                                           addr245:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() == §§pop());
                                                                              addr246:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 continue loop10;
                                                                              }
                                                                           }
                                                                           continue loop11;
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                  }
                                                               }
                                                               return new §&<§(_loc10_,new Rectangle(0,0,_loc5_,_loc6_),true);
                                                            }
                                                            §§goto(addr246);
                                                         }
                                                         §§goto(addr245);
                                                      }
                                                      §§goto(addr244);
                                                   }
                                                }
                                             }
                                             else if(_loc9_)
                                             {
                                                §§goto(addr283);
                                             }
                                             §§goto(addr242);
                                          }
                                       }
                                       §§goto(addr277);
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(!(_loc13_ && param3))
                                    {
                                       (_loc9_ = new BitmapData(_loc7_,_loc8_,true,0)).copyPixels(param2,param2.rect,new Point(0,0));
                                       param2 = _loc9_;
                                    }
                                    §§goto(addr174);
                                 }
                                 uploadBitmapData(_loc11_,param2,param3);
                                 §§goto(addr174);
                              }
                              §§goto(addr125);
                           }
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr125);
                  }
                  _loc8_ = §§pop();
               }
               §§goto(addr86);
            }
            §§goto(addr125);
         }
         §§goto(addr80);
      }
      
      public static function §'!I§(param1:Context3D, param2:ByteArray) : §^!+§.Texture
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(!_loc10_)
         {
            if(param1 == null)
            {
               if(_loc11_)
               {
                  throw new §4!+§();
               }
            }
         }
         var _loc3_:String = String.fromCharCode(param2[0],param2[1],param2[2]);
         if(_loc11_)
         {
            §§push(_loc3_);
            if(_loc11_ || param2)
            {
               if(§§pop() != "ATF")
               {
                  if(_loc11_)
                  {
                     throw new ArgumentError("Invalid ATF data");
                  }
                  addr66:
                  §§push(Context3DTextureFormat.COMPRESSED);
                  if(_loc10_)
                  {
                  }
               }
               else
               {
                  if(param2[6] == 2)
                  {
                     §§goto(addr66);
                  }
                  else
                  {
                     §§push(Context3DTextureFormat.BGRA);
                     if(_loc11_ || §^!+§.Texture)
                     {
                        addr92:
                        §§push(§§pop());
                     }
                  }
                  var _loc4_:* = §§pop();
                  var _loc5_:int = Math.pow(2,param2[7]);
                  var _loc6_:int = Math.pow(2,param2[8]);
                  var _loc7_:int = param2[9];
                  var _loc8_:flash.display3D.textures.Texture = param1.createTexture(_loc5_,_loc6_,_loc4_,false);
                  if(!(_loc10_ && §^!+§.Texture))
                  {
                     uploadAtfData(_loc8_,param2);
                  }
                  var _loc9_:§+!I§ = new §+!I§(_loc8_,_loc5_,_loc6_,_loc7_ > 1,false);
                  if(!_loc10_)
                  {
                     if(§^b§.§16§)
                     {
                        if(!(_loc10_ && param2))
                        {
                           addr167:
                           _loc9_.§;x§(param2);
                        }
                     }
                     return _loc9_;
                  }
                  §§goto(addr167);
               }
               §§goto(addr66);
            }
            §§goto(addr92);
         }
         §§goto(addr66);
      }
      
      public static function §?!a§(param1:§^!+§.Texture, param2:Rectangle = null, param3:Rectangle = null) : §^!+§.Texture
      {
         var _loc4_:§^!+§.Texture;
         (_loc4_ = new §&<§(param1,param2)).§&!;§ = param3;
         return _loc4_;
      }
      
      public static function §<!,§(param1:Context3D, param2:int = 64, param3:int = 64, param4:uint = 4.294967295E9, param5:Boolean = false) : §^!+§.Texture
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:BitmapData = new BitmapData(param2,param3,true,param4);
         var _loc7_:§^!+§.Texture = §>x§(param1,_loc6_,false,param5);
         if(_loc8_)
         {
            if(!§^b§.§16§)
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
         var _loc6_:int = 0;
         var _loc7_:BitmapData = null;
         var _loc8_:Matrix = null;
         var _loc9_:Rectangle = null;
         if(!_loc11_)
         {
            param1.uploadFromBitmapData(param2);
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
                        addr50:
                        while(true)
                        {
                           §§push(param2.height >> 1);
                           addr55:
                           while(_loc10_ || §^!+§.Texture)
                           {
                              _loc5_ = §§pop();
                              while(true)
                              {
                                 if(!(_loc11_ && param1))
                                 {
                                    continue loop1;
                                 }
                                 continue loop3;
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr81);
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
      
      public function adjustVertexData(param1:§0p§, param2:int, param3:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(_loc7_)
         {
            if(this.§&!;§)
            {
               loop0:
               for(; param3 == 4; if(!(_loc7_ || param3))
               {
                  continue;
               },§§push(param1),§§push(param2 + 1),§§push(_loc4_),if(_loc7_)
               {
                  §§push(-§§pop());
               },§§pop().§=c§(§§pop(),§§pop(),-this.§&!;§.y),§§goto(addr112))
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§&!;§.width + this.§&!;§.x - this.width);
                     if(_loc7_)
                     {
                        §§push(Number(§§pop()));
                     }
                     loop2:
                     while(true)
                     {
                        _loc4_ = §§pop();
                        addr195:
                        loop3:
                        while(true)
                        {
                           §§push(this.§&!;§.height + this.§&!;§.y - this.height);
                           if(!(_loc6_ && param1))
                           {
                              if(!(_loc7_ || param3))
                              {
                                 continue loop2;
                              }
                              §§push(Number(§§pop()));
                           }
                           _loc5_ = §§pop();
                           loop4:
                           while(true)
                           {
                              param1.§=c§(param2,-this.§&!;§.x,-this.§&!;§.y);
                              while(true)
                              {
                                 if(!_loc6_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop4;
                                 addr73:
                                 if(!(_loc6_ && param2))
                                 {
                                    if(_loc6_ && param3)
                                    {
                                       break;
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
                                    §§pop().§=c§(§§pop(),§§pop(),§§pop());
                                    addr87:
                                    if(!_loc7_)
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          if(!(_loc6_ && this))
                                          {
                                             §§goto(addr73);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                if(!(_loc7_ || param3))
                                                {
                                                   break loop0;
                                                }
                                                §§push(param1);
                                                §§push(param2 + 2);
                                                §§push(-this.§&!;§.x);
                                                §§push(_loc5_);
                                                if(!_loc6_)
                                                {
                                                   §§push(-§§pop());
                                                }
                                                §§pop().§=c§(§§pop(),§§pop(),§§pop());
                                                continue loop7;
                                             }
                                             addr112:
                                          }
                                       }
                                       continue;
                                    }
                                    if(_loc7_ || this)
                                    {
                                       §§goto(addr24);
                                    }
                                    continue loop3;
                                 }
                              }
                              continue loop1;
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
         if(_loc2_)
         {
            return !!this.§&!;§ ? this.§&!;§.clone() : new Rectangle(0,0,this.width,this.height);
         }
         §§goto(addr32);
      }
      
      public function get clipping() : Rectangle
      {
         return new Rectangle(0,0,this.width,this.height);
      }
      
      public function get repeat() : Boolean
      {
         return this.§%1§;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§%1§ = param1;
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
      
      public function get root() : §^!+§.Texture
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
      
      public function get parent() : §^!+§.Texture
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
