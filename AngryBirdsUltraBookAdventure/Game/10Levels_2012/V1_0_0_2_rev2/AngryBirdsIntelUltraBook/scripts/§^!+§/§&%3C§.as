package §^!+§
{
   import §`s§.§0p§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §&<§ extends Texture
   {
      
      private static var §<!^§:Point;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §<!^§ = new Point();
         }
      }
      
      private var §3^§:Texture;
      
      private var §%!k§:Rectangle;
      
      private var §=!w§:Rectangle;
      
      private var §1!K§:Boolean;
      
      private var §&!d§:BitmapData;
      
      public function §&<§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            super();
            do
            {
               this.§3^§ = param1;
               loop1:
               do
               {
                  this.§1!K§ = param3;
                  while(true)
                  {
                     if(param2 == null)
                     {
                        continue;
                     }
                     this.§3!Z§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
                     if(_loc5_ && this)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  §§goto(addr24);
               }
               while(_loc5_);
               
            }
            while(_loc5_ && param1);
            
            addr24:
            return;
         }
         §§goto(addr100);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§1!K§)
            {
               while(true)
               {
                  this.§3^§.dispose();
                  addr97:
                  while(true)
                  {
                  }
                  addr58:
                  if(_loc1_ && _loc1_)
                  {
                     continue;
                  }
                  addr75:
                  loop3:
                  while(true)
                  {
                     super.dispose();
                     if(!(_loc1_ && _loc1_))
                     {
                        if(_loc2_ || _loc1_)
                        {
                           return;
                        }
                        addr90:
                        while(true)
                        {
                           this.§&!d§ = null;
                        }
                     }
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           break loop3;
                        }
                        §§goto(addr58);
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr97);
                  addr24:
               }
            }
            while(true)
            {
               if(this.§&!d§)
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     this.§&!d§.dispose();
                  }
                  §§goto(addr90);
               }
               §§goto(addr24);
               §§goto(addr97);
            }
         }
         §§goto(addr90);
      }
      
      private function §3!Z§(param1:Rectangle) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Rectangle = null;
         if(!(_loc4_ && param1))
         {
            this.§%!k§ = param1;
            if(!_loc4_)
            {
               addr32:
               this.§=!w§ = param1.clone();
            }
            var _loc2_:§&<§ = this.§3^§ as §&<§;
            while(_loc2_)
            {
               _loc3_ = _loc2_.§%!k§;
               if(_loc5_)
               {
                  this.§=!w§.x = _loc3_.x + this.§=!w§.x * _loc3_.width;
                  loop1:
                  while(true)
                  {
                     this.§=!w§.y = _loc3_.y + this.§=!w§.y * _loc3_.height;
                     loop2:
                     while(true)
                     {
                        addr80:
                        while(true)
                        {
                           this.§=!w§.width *= _loc3_.width;
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 if(!_loc4_)
                                 {
                                    this.§=!w§.height *= _loc3_.height;
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
               while(false)
               {
                  §§goto(addr80);
               }
               _loc2_ = _loc2_.§3^§ as §&<§;
            }
            return;
         }
         §§goto(addr32);
      }
      
      override public function adjustVertexData(param1:§0p§, param2:int, param3:int) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(!(_loc11_ && param1))
         {
            super.adjustVertexData(param1,param2,param3);
         }
         var _loc4_:Number = this.§=!w§.x;
         var _loc5_:Number = this.§=!w§.y;
         var _loc6_:Number = this.§=!w§.width;
         var _loc7_:Number = this.§=!w§.height;
         §§push(param2);
         if(!(_loc11_ && param3))
         {
            §§push(int(§§pop() + param3));
         }
         var _loc8_:* = §§pop();
         §§push(param2);
         if(!(_loc11_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         while(true)
         {
            if(_loc9_ >= _loc8_)
            {
               if(_loc11_)
               {
                  continue;
               }
               if(_loc10_)
               {
                  if(!(_loc11_ && param2))
                  {
                     break;
                  }
                  §§push(param1);
                  §§push(_loc9_);
                  §§push(_loc4_);
                  if(_loc10_ || param1)
                  {
                     §§push(§<!^§.x * _loc6_);
                     if(_loc10_)
                     {
                        addr130:
                        §§push(§§pop() + §§pop());
                        §§push(_loc5_);
                        if(_loc10_ || param3)
                        {
                           addr138:
                           §§push(§§pop() + §<!^§.y * _loc7_);
                        }
                        §§pop().setTexCoords(§§pop(),§§pop(),§§pop());
                        _loc9_++;
                        continue;
                        addr144:
                     }
                     §§goto(addr138);
                  }
                  §§goto(addr130);
                  addr151:
               }
               §§goto(addr144);
            }
            else
            {
               param1.getTexCoords(_loc9_,§<!^§);
            }
            §§goto(addr151);
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§3^§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§3^§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Rectangle = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(_loc5_)
         {
            if(this.§&!d§)
            {
               if(_loc5_)
               {
                  §§goto(addr30);
               }
            }
            var _loc1_:BitmapData = this.bitmapData;
            if(!(_loc6_ && _loc3_))
            {
               if(_loc1_)
               {
                  addr46:
                  _loc2_ = this.clipping;
                  if(!(_loc6_ && _loc2_))
                  {
                     _loc2_.x *= this.bitmapData.width;
                     loop0:
                     while(true)
                     {
                        _loc2_.y *= this.bitmapData.height;
                        while(true)
                        {
                           _loc2_.width *= this.bitmapData.width;
                           loop2:
                           while(!(_loc6_ && _loc3_))
                           {
                              continue loop0;
                              addr135:
                              loop5:
                              while(true)
                              {
                                 if(_loc5_ || _loc1_)
                                 {
                                    §§push(int(Math.max(2,_loc2_.height)));
                                    if(_loc5_ || _loc2_)
                                    {
                                       _loc4_ = §§pop();
                                       loop6:
                                       while(true)
                                       {
                                          loop7:
                                          do
                                          {
                                             this.§&!d§ = new BitmapData(_loc3_,_loc4_,true,0);
                                             while(true)
                                             {
                                                if(_loc5_)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   this.§&!d§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
                                                   if(!(_loc6_ && _loc1_))
                                                   {
                                                      if(!(_loc6_ && this))
                                                      {
                                                         continue loop7;
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue;
                                                }
                                                continue loop6;
                                             }
                                             addr152:
                                             while(true)
                                             {
                                                §§push(int(Math.max(2,_loc2_.width)));
                                                break loop5;
                                             }
                                          }
                                          while(false);
                                          
                                          §§goto(addr206);
                                       }
                                       addr126:
                                    }
                                    break;
                                    addr142:
                                 }
                                 continue loop2;
                              }
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 §§goto(addr135);
                                 §§goto(addr142);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr126);
               }
               addr206:
               return this.§&!d§;
            }
            §§goto(addr46);
         }
         addr30:
         return this.§&!d§;
      }
      
      public function get §9#§() : Boolean
      {
         return this.§1!K§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§=!w§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§3^§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§3^§.root;
      }
      
      override public function get width() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§3^§.width);
         if(!(_loc1_ && _loc2_))
         {
            return §§pop() * this.§%!k§.width;
         }
      }
      
      override public function get height() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§3^§.height);
         if(_loc1_)
         {
            return §§pop() * this.§%!k§.height;
         }
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§3^§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§3^§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§3^§.requestBaseTextureUpdate(param1);
         }
      }
   }
}
