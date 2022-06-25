package §7i§
{
   import §8g§.VertexData;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class § %§ extends Texture
   {
      
      private static var §=!J§:Point;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || § %§)
         {
            §=!J§ = new Point();
         }
      }
      
      private var §+w§:Texture;
      
      private var §;!J§:Rectangle;
      
      private var § !T§:Rectangle;
      
      private var §2-§:Boolean;
      
      private var §,L§:BitmapData;
      
      public function § %§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            super();
            loop0:
            while(true)
            {
               this.§+w§ = param1;
               do
               {
                  this.§2-§ = param3;
                  continue loop0;
               }
               while(!(_loc4_ || param3));
               
               addr24:
               return;
            }
         }
         §§goto(addr80);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§2-§);
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.§+w§.dispose();
                     addr97:
                     while(true)
                     {
                     }
                  }
                  addr93:
               }
               while(true)
               {
                  §§push(Boolean(this.§,L§));
                  if(_loc2_)
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           while(true)
                           {
                              this.§,L§.dispose();
                              loop8:
                              while(true)
                              {
                                 this.§,L§ = null;
                                 addr56:
                                 addr75:
                                 while(true)
                                 {
                                    if(_loc1_ || _loc1_)
                                    {
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       continue loop4;
                                    }
                                    continue loop8;
                                 }
                              }
                           }
                           addr85:
                        }
                        else
                        {
                           §§goto(addr93);
                        }
                     }
                     §§goto(addr97);
                  }
                  while(true)
                  {
                     super.dispose();
                     if(_loc1_ || this)
                     {
                        if(_loc1_)
                        {
                           return;
                        }
                     }
                     else
                     {
                        §§goto(addr56);
                     }
                     §§goto(addr97);
                     §§goto(addr75);
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      private function §9g§(param1:Rectangle) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Rectangle = null;
         if(!(_loc5_ && _loc3_))
         {
            this.§;!J§ = param1;
            if(_loc4_ || param1)
            {
               this.§ !T§ = param1.clone();
            }
         }
         var _loc2_:§ %§ = this.§+w§ as § %§;
         loop0:
         for(; _loc2_; _loc2_ = _loc2_.§+w§ as § %§)
         {
            _loc3_ = _loc2_.§;!J§;
            if(!_loc5_)
            {
               this.§ !T§.x = _loc3_.x + this.§ !T§.x * _loc3_.width;
               loop1:
               while(true)
               {
                  this.§ !T§.y = _loc3_.y + this.§ !T§.y * _loc3_.height;
                  while(true)
                  {
                     addr92:
                     addr83:
                     while(true)
                     {
                        this.§ !T§.width *= _loc3_.width;
                        continue loop1;
                     }
                     if(_loc4_ || _loc2_)
                     {
                        while(false)
                        {
                           §§goto(addr92);
                        }
                        continue loop0;
                        addr90:
                     }
                  }
               }
            }
            §§goto(addr90);
         }
      }
      
      override public function adjustVertexData(param1:VertexData, param2:int, param3:int) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(!_loc10_)
         {
            super.adjustVertexData(param1,param2,param3);
         }
         var _loc4_:Number = this.§ !T§.x;
         var _loc5_:Number = this.§ !T§.y;
         var _loc6_:Number = this.§ !T§.width;
         var _loc7_:Number = this.§ !T§.height;
         §§push(param2);
         if(!_loc10_)
         {
            §§push(int(§§pop() + param3));
         }
         var _loc8_:* = §§pop();
         §§push(param2);
         if(!_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         while(true)
         {
            §§push(_loc9_);
            if(!(_loc10_ && param1))
            {
               if(_loc11_)
               {
                  if(§§pop() >= _loc8_)
                  {
                     if(_loc10_ && param1)
                     {
                        continue;
                     }
                     if(!_loc10_)
                     {
                        if(_loc11_ || this)
                        {
                           break;
                        }
                        §§push(param1);
                        §§push(_loc9_);
                        §§push(_loc4_);
                        if(_loc11_ || param3)
                        {
                           §§push(§=!J§.x * _loc6_);
                           if(!(_loc10_ && param3))
                           {
                              addr147:
                              §§push(§§pop() + §§pop());
                              §§push(_loc5_);
                              if(_loc11_ || param2)
                              {
                                 §§push(§§pop() + §=!J§.y * _loc7_);
                              }
                           }
                           §§pop().setTexCoords(§§pop(),§§pop(),§§pop());
                           addr102:
                           §§push(_loc9_ + 1);
                           if(_loc11_ || param3)
                           {
                              addr111:
                              _loc9_ = int(§§pop());
                              continue;
                           }
                           §§goto(addr111);
                           addr163:
                        }
                        §§goto(addr147);
                        addr172:
                     }
                     §§goto(addr163);
                  }
                  else
                  {
                     param1.getTexCoords(_loc9_,§=!J§);
                  }
                  §§goto(addr172);
               }
               §§goto(addr102);
            }
            §§goto(addr111);
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§+w§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§+w§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Rectangle = null;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         if(!_loc6_)
         {
            if(this.§,L§)
            {
               if(!_loc6_)
               {
                  return this.§,L§;
               }
            }
         }
         var _loc1_:BitmapData = this.bitmapData;
         if(_loc5_)
         {
            if(_loc1_)
            {
               addr43:
               _loc2_ = this.clipping;
               if(!_loc6_)
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
                        while(!_loc6_)
                        {
                           _loc2_.height *= this.bitmapData.height;
                           while(true)
                           {
                              §§push(int(Math.max(2,_loc2_.width)));
                              loop4:
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 addr142:
                                 while(!_loc6_)
                                 {
                                    continue loop4;
                                 }
                                 continue loop2;
                              }
                              if(!(_loc6_ && this))
                              {
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
               }
               while(false)
               {
                  §§goto(addr99);
               }
            }
            return this.§,L§;
         }
         §§goto(addr43);
      }
      
      public function get §1!<§() : Boolean
      {
         return this.§2-§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§ !T§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§+w§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§+w§.root;
      }
      
      override public function get width() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§+w§.width);
         if(_loc1_ || _loc1_)
         {
            return §§pop() * this.§;!J§.width;
         }
      }
      
      override public function get height() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§+w§.height);
         if(!(_loc1_ && _loc2_))
         {
            return §§pop() * this.§;!J§.height;
         }
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§+w§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§+w§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§+w§.requestBaseTextureUpdate(param1);
         }
      }
   }
}
