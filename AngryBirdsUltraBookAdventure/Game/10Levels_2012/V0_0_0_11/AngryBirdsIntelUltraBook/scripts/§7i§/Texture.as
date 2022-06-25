package §7i§
{
   import §"v§.§2!;§;
   import §"v§.§`!M§;
   import §0P§.Starling;
   import §8g§.VertexData;
   import §8g§.getNextPowerOfTwo;
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
       
      
      private var §3b§:Rectangle;
      
      private var §-!b§:Boolean;
      
      public function Texture()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            loop0:
            while(getQualifiedClassName(this) != "starling.textures::Texture")
            {
               while(true)
               {
                  this.§-!b§ = false;
                  if(!(_loc1_ && _loc2_))
                  {
                     break;
                  }
                  if(!_loc1_)
                  {
                     continue;
                  }
                  continue loop0;
               }
               if(!_loc1_)
               {
                  return;
               }
               break;
            }
            throw new §2!;§();
         }
         §§goto(addr69);
      }
      
      public static function §8;§(param1:Context3D, param2:Bitmap, param3:Boolean = true, param4:Boolean = false) : §7i§.Texture
      {
         return §8v§(param1,param2.bitmapData,param3,param4);
      }
      
      public static function §8v§(param1:Context3D, param2:BitmapData, param3:Boolean = true, param4:Boolean = false) : §7i§.Texture
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc9_:BitmapData = null;
         var _loc10_:ConcreteTexture = null;
         var _loc11_:flash.display3D.textures.Texture = null;
         var _loc5_:int = param2.width;
         var _loc6_:int = param2.height;
         §§push(_loc5_);
         if(!_loc13_)
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
               if(!(_loc13_ && param1))
               {
                  §§push(int(getNextPowerOfTwo(param2.width)));
                  if(_loc12_ || param3)
                  {
                     _loc7_ = §§pop();
                     addr81:
                     if(_loc12_)
                     {
                        addr75:
                        §§push(int(getNextPowerOfTwo(param2.height)));
                     }
                     _loc11_ = param1.createTexture(_loc7_,_loc8_,Context3DTextureFormat.BGRA,param4);
                     if(_loc12_)
                     {
                        §§push(_loc7_);
                        if(!_loc13_)
                        {
                           §§push(_loc5_);
                           if(!_loc13_)
                           {
                              §§push(§§pop() > §§pop());
                              if(_loc12_ || param1)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc12_)
                                 {
                                    §§push(§§pop());
                                    if(_loc12_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(!§§pop())
                                    {
                                       if(_loc12_ || param3)
                                       {
                                          addr122:
                                          §§pop();
                                          if(!_loc13_)
                                          {
                                             addr127:
                                             addr126:
                                             §§push(_loc8_ > _loc6_);
                                             if(_loc12_ || param3)
                                             {
                                             }
                                             addr136:
                                             if(§§pop())
                                             {
                                                if(!(_loc13_ && §7i§.Texture))
                                                {
                                                   _loc9_ = new BitmapData(_loc7_,_loc8_,true,0);
                                                   addr144:
                                                   if(!_loc13_)
                                                   {
                                                      _loc9_.copyPixels(param2,param2.rect,new Point(0,0));
                                                   }
                                                   param2 = _loc9_;
                                                }
                                                addr183:
                                                _loc10_ = new ConcreteTexture(_loc11_,_loc7_,_loc8_,param3,true,param4);
                                                if(!_loc13_)
                                                {
                                                   §§push(Starling.§>!f§);
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         §§push(Boolean(_loc9_));
                                                         continue;
                                                      }
                                                   }
                                                }
                                                §§goto(addr329);
                                             }
                                             uploadBitmapData(_loc11_,param2,param3);
                                             §§goto(addr183);
                                          }
                                          §§goto(addr144);
                                       }
                                       §§push(Boolean(§§pop()));
                                    }
                                 }
                                 §§goto(addr136);
                              }
                              §§goto(addr122);
                           }
                           §§goto(addr127);
                        }
                        §§goto(addr126);
                     }
                     §§goto(addr144);
                  }
                  _loc8_ = §§pop();
               }
               §§goto(addr81);
            }
            §§goto(addr183);
         }
         §§goto(addr75);
      }
      
      public static function §3!9§(param1:Context3D, param2:ByteArray) : §7i§.Texture
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc10_ || §7i§.Texture)
         {
            if(param1 == null)
            {
               if(!(_loc11_ && _loc3_))
               {
                  throw new §`!M§();
               }
            }
         }
         var _loc3_:String = String.fromCharCode(param2[0],param2[1],param2[2]);
         if(!_loc11_)
         {
            §§push(_loc3_);
            if(!_loc11_)
            {
               if(§§pop() != "ATF")
               {
                  if(!(_loc11_ && _loc3_))
                  {
                     §§goto(addr64);
                  }
               }
               else
               {
                  if(param2[6] == 2)
                  {
                     addr91:
                     §§push(Context3DTextureFormat.COMPRESSED);
                     if(!_loc11_)
                     {
                        addr109:
                        §§push(§§pop());
                        addr97:
                     }
                  }
                  else
                  {
                     §§push(Context3DTextureFormat.BGRA);
                     if(!(_loc11_ && §7i§.Texture))
                     {
                        §§goto(addr109);
                     }
                  }
                  var _loc4_:* = §§pop();
                  var _loc5_:int = Math.pow(2,param2[7]);
                  var _loc6_:int = Math.pow(2,param2[8]);
                  var _loc7_:int = param2[9];
                  var _loc8_:flash.display3D.textures.Texture = param1.createTexture(_loc5_,_loc6_,_loc4_,false);
                  if(_loc10_)
                  {
                     uploadAtfData(_loc8_,param2);
                  }
                  var _loc9_:ConcreteTexture = new ConcreteTexture(_loc8_,_loc5_,_loc6_,_loc7_ > 1,false);
                  if(!_loc11_)
                  {
                     if(Starling.§>!f§)
                     {
                        if(_loc10_ || param1)
                        {
                           addr183:
                           _loc9_.§=!4§(param2);
                        }
                     }
                     return _loc9_;
                  }
                  §§goto(addr183);
               }
               §§goto(addr91);
            }
            §§goto(addr97);
         }
         addr64:
         throw new ArgumentError("Invalid ATF data");
      }
      
      public static function §+s§(param1:§7i§.Texture, param2:Rectangle = null, param3:Rectangle = null) : §7i§.Texture
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§7i§.Texture = new § %§(param1,param2);
         if(!(_loc5_ && param2))
         {
            _loc4_.§3b§ = param3;
         }
         return _loc4_;
      }
      
      public static function §9@§(param1:Context3D, param2:int = 64, param3:int = 64, param4:uint = 4.294967295E9, param5:Boolean = false) : §7i§.Texture
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:BitmapData = new BitmapData(param2,param3,true,param4);
         var _loc7_:§7i§.Texture = §8v§(param1,_loc6_,false,param5);
         if(!(_loc9_ && param1))
         {
            §§push(Starling.§>!f§);
            if(_loc8_ || param2)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(!(_loc9_ && param1))
               {
                  addr78:
                  _loc6_.dispose();
               }
            }
            return _loc7_;
         }
         §§goto(addr78);
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
         if(!_loc10_)
         {
            param1.uploadFromBitmapData(param2);
            loop0:
            for(; param3; if(!(_loc11_ || param1))
            {
               continue;
            },if(false)
            {
               §§goto(addr82);
            },_loc7_ = new BitmapData(_loc4_,_loc5_,true,0),_loc8_ = new Matrix(0.5,0,0,0.5),_loc9_ = new Rectangle(),loop9:
            while(true)
            {
               §§push(_loc4_);
               loop10:
               while(!(_loc10_ && param1))
               {
                  §§push(1);
                  loop11:
                  for(; _loc11_; §§push(1),if(!(_loc11_ || §7i§.Texture))
                  {
                     continue;
                  },§§push(§§pop() >= §§pop()),if(!(_loc10_ && param2))
                  {
                     if(!_loc10_)
                     {
                        §§goto(addr168);
                        §§push(Boolean(§§pop()));
                     }
                     §§goto(addr242);
                  },§§goto(addr168))
                  {
                     if(!(_loc10_ && param3))
                     {
                        §§push(§§pop() >= §§pop());
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop13:
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc11_ || param2)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr254:
                                    addr314:
                                    loop15:
                                    while(_loc11_ || param1)
                                    {
                                       if(!(_loc10_ && param3))
                                       {
                                          §§push(_loc5_);
                                          if(!(_loc10_ && param1))
                                          {
                                             if(_loc11_ || param3)
                                             {
                                                continue loop11;
                                             }
                                             addr283:
                                             addr283:
                                             while(true)
                                             {
                                                _loc5_ = §§pop();
                                                addr284:
                                                if(_loc11_ || param1)
                                                {
                                                   if(_loc11_ || §7i§.Texture)
                                                   {
                                                      break;
                                                   }
                                                   addr380:
                                                   _loc9_.height = _loc5_;
                                                   loop19:
                                                   while(true)
                                                   {
                                                      _loc7_.fillRect(_loc9_,0);
                                                      addr369:
                                                      while(true)
                                                      {
                                                         _loc7_.draw(param2,_loc8_,null,null,null,true);
                                                         continue loop19;
                                                      }
                                                   }
                                                }
                                                while(!_loc11_)
                                                {
                                                   §§goto(addr369);
                                                }
                                                §§push(_loc4_);
                                                if(_loc11_ || param3)
                                                {
                                                   addr309:
                                                   §§push(§§pop() >> 1);
                                                   if(_loc11_)
                                                   {
                                                      §§push(int(§§pop()));
                                                   }
                                                }
                                                do
                                                {
                                                   _loc4_ = §§pop();
                                                   break loop15;
                                                }
                                                while(!_loc11_);
                                                
                                                break loop11;
                                             }
                                             continue loop9;
                                          }
                                          continue loop10;
                                       }
                                       §§goto(addr355);
                                    }
                                    §§push(_loc5_);
                                    addr168:
                                    if(_loc11_ || param2)
                                    {
                                       §§goto(addr278);
                                    }
                                    §§goto(addr283);
                                    if(!(_loc11_ || param3))
                                    {
                                       continue;
                                    }
                                    if(!(_loc11_ || §7i§.Texture))
                                    {
                                       continue loop13;
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          _loc9_.width = _loc4_;
                                          break;
                                       }
                                       if(!(_loc10_ && §7i§.Texture))
                                       {
                                          if(!(_loc10_ && param3))
                                          {
                                             _loc7_.dispose();
                                             addr211:
                                             if(!_loc10_)
                                             {
                                                if(_loc11_ || param3)
                                                {
                                                   if(true)
                                                   {
                                                      break loop0;
                                                   }
                                                   continue loop9;
                                                }
                                                §§goto(addr334);
                                             }
                                             else
                                             {
                                                §§goto(addr254);
                                             }
                                          }
                                          §§goto(addr284);
                                       }
                                       §§goto(addr211);
                                    }
                                    §§goto(addr380);
                                    addr192:
                                 }
                              }
                              else
                              {
                                 §§goto(addr192);
                              }
                              §§goto(addr380);
                           }
                        }
                        addr242:
                     }
                     §§goto(addr309);
                  }
                  §§push(§§pop() >> §§pop());
                  break;
               }
               while(true)
               {
                  §§goto(addr283);
                  §§goto(addr281);
               }
            })
            {
               while(true)
               {
                  §§push(param2.width >> 1);
                  addr104:
                  addr66:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     addr105:
                     loop3:
                     while(true)
                     {
                        _loc4_ = §§pop();
                        addr106:
                        while(true)
                        {
                           addr82:
                           while(true)
                           {
                              §§push(param2.height >> 1);
                              addr87:
                              while(true)
                              {
                                 §§push(int(§§pop()));
                                 addr88:
                                 while(!(_loc10_ && param2))
                                 {
                                    _loc5_ = §§pop();
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
                  if(_loc11_ || param2)
                  {
                     continue loop0;
                  }
               }
            }
            return;
         }
         while(true)
         {
            §§push(1);
            if(!(_loc10_ && §7i§.Texture))
            {
               if(_loc11_)
               {
                  if(!_loc10_)
                  {
                     addr49:
                     §§push(int(§§pop()));
                     if(!_loc10_)
                     {
                        continue;
                     }
                     §§goto(addr88);
                  }
                  else
                  {
                     §§goto(addr104);
                  }
               }
               §§goto(addr87);
            }
            §§goto(addr49);
         }
      }
      
      static function uploadAtfData(param1:flash.display3D.textures.Texture, param2:ByteArray, param3:int = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            param1.uploadCompressedTextureFromByteArray(param2,param3);
         }
      }
      
      public function dispose() : void
      {
      }
      
      public function adjustVertexData(param1:VertexData, param2:int, param3:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(_loc7_)
         {
            if(this.§3b§)
            {
               while(true)
               {
                  if(param3 == 4)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(this.§3b§.width + this.§3b§.x - this.width);
                        loop2:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           while(true)
                           {
                              _loc4_ = §§pop();
                              loop4:
                              while(true)
                              {
                                 §§push(this.§3b§.height + this.§3b§.y - this.height);
                                 if(_loc7_ || this)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 if(!(_loc6_ && param2))
                                 {
                                    _loc5_ = §§pop();
                                    while(_loc7_ || this)
                                    {
                                       param1.§5!$§(param2,-this.§3b§.x,-this.§3b§.y);
                                       loop6:
                                       while(true)
                                       {
                                          §§push(param1);
                                          §§push(param2 + 1);
                                          §§push(_loc4_);
                                          if(!(_loc6_ && param2))
                                          {
                                             §§push(-§§pop());
                                          }
                                          §§pop().§5!$§(§§pop(),§§pop(),-this.§3b§.y);
                                          while(true)
                                          {
                                             if(!(_loc6_ && this))
                                             {
                                                if(_loc6_)
                                                {
                                                   break;
                                                }
                                                §§push(param1);
                                                §§push(param2 + 2);
                                                §§push(-this.§3b§.x);
                                                §§push(_loc5_);
                                                if(!_loc6_)
                                                {
                                                   §§push(-§§pop());
                                                }
                                                §§pop().§5!$§(§§pop(),§§pop(),§§pop());
                                                continue;
                                             }
                                             continue loop6;
                                          }
                                          §§goto(addr217);
                                       }
                                       if(_loc7_ || param3)
                                       {
                                          if(_loc7_ || this)
                                          {
                                             §§goto(addr24);
                                          }
                                          continue loop4;
                                       }
                                    }
                                    continue loop1;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
                  addr217:
                  throw new ArgumentError("Textures with a frame can only be used on quads");
                  if(!(_loc7_ || this))
                  {
                     continue;
                  }
                  §§goto(addr94);
               }
            }
            addr24:
            return;
         }
         §§goto(addr217);
      }
      
      public function get frame() : Rectangle
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            return Boolean(this.§3b§) ? this.§3b§.clone() : new Rectangle(0,0,this.width,this.height);
         }
         §§goto(addr32);
      }
      
      public function get clipping() : Rectangle
      {
         return new Rectangle(0,0,this.width,this.height);
      }
      
      public function get repeat() : Boolean
      {
         return this.§-!b§;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§-!b§ = param1;
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
      
      public function get root() : §7i§.Texture
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
      
      public function get parent() : §7i§.Texture
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
