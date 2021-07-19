package §%q§
{
   import §+o§.§3C§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §<w§ extends Texture
   {
      
      private static var §3j§:Point;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §3j§ = new Point();
         }
      }
      
      private var §4-§:Texture;
      
      private var §1G§:Rectangle;
      
      private var §`l§:Rectangle;
      
      private var §;!i§:Boolean;
      
      private var §6!T§:BitmapData;
      
      public function §<w§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
         }
         loop0:
         do
         {
            this.§4-§ = param1;
            loop1:
            while(true)
            {
               this.§;!i§ = param3;
               do
               {
                  if(_loc5_)
                  {
                     if(param2 == null)
                     {
                        if(_loc5_)
                        {
                           this.§ -§(new Rectangle(0,0,1,1));
                        }
                     }
                     else
                     {
                        this.§ -§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
                        if(_loc5_)
                        {
                           §§goto(addr20);
                        }
                     }
                     continue;
                  }
                  continue loop1;
               }
               while(!(_loc5_ || param3));
               
               continue loop0;
            }
         }
         while(_loc4_);
         
         addr20:
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§;!i§)
            {
               while(true)
               {
                  this.§4-§.dispose();
                  addr87:
                  while(true)
                  {
                  }
               }
               addr84:
            }
            loop1:
            while(true)
            {
               if(this.§6!T§)
               {
                  loop2:
                  while(true)
                  {
                     this.§6!T§.dispose();
                     while(!(_loc1_ && this))
                     {
                        this.§6!T§ = null;
                        while(_loc2_)
                        {
                           if(_loc1_)
                           {
                              continue loop2;
                           }
                           if(!_loc2_)
                           {
                              §§goto(addr84);
                           }
                        }
                     }
                     continue loop1;
                  }
               }
               while(true)
               {
                  super.dispose();
                  if(!_loc1_)
                  {
                     break;
                  }
                  §§goto(addr49);
               }
               return;
            }
         }
         §§goto(addr87);
      }
      
      private function § -§(param1:Rectangle) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Rectangle = null;
         if(!_loc5_)
         {
            this.§1G§ = param1;
            if(!(_loc5_ && param1))
            {
               addr31:
               this.§`l§ = param1.clone();
            }
            var _loc2_:§<w§ = this.§4-§ as §<w§;
            while(_loc2_)
            {
               _loc3_ = _loc2_.§1G§;
               if(!_loc5_)
               {
                  this.§`l§.x = _loc3_.x + this.§`l§.x * _loc3_.width;
                  loop1:
                  while(true)
                  {
                     this.§`l§.y = _loc3_.y + this.§`l§.y * _loc3_.height;
                     loop2:
                     while(true)
                     {
                        addr76:
                        while(true)
                        {
                           this.§`l§.width *= _loc3_.width;
                           continue loop2;
                        }
                        continue loop1;
                     }
                  }
               }
               while(false)
               {
                  §§goto(addr76);
               }
               _loc2_ = _loc2_.§4-§ as §<w§;
            }
            return;
         }
         §§goto(addr31);
      }
      
      override public function adjustVertexData(param1:§3C§, param2:int, param3:int) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(!_loc11_)
         {
            super.adjustVertexData(param1,param2,param3);
         }
         var _loc4_:Number = this.§`l§.x;
         var _loc5_:Number = this.§`l§.y;
         var _loc6_:Number = this.§`l§.width;
         var _loc7_:Number = this.§`l§.height;
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
         loop0:
         while(true)
         {
            if(_loc9_ >= _loc8_)
            {
               if(!_loc11_)
               {
                  if(_loc10_ || param2)
                  {
                     break;
                  }
                  §§push(param1);
                  §§push(_loc9_);
                  §§push(_loc4_);
                  if(!_loc11_)
                  {
                     §§push(§3j§.x * _loc6_);
                     if(!_loc11_)
                     {
                        addr110:
                        §§push(§§pop() + §§pop());
                        §§push(_loc5_);
                        if(!(_loc11_ && param1))
                        {
                           §§push(§§pop() + §3j§.y * _loc7_);
                        }
                     }
                     §§pop().setTexCoords(§§pop(),§§pop(),§§pop());
                     loop2:
                     while(true)
                     {
                        _loc9_++;
                        addr94:
                        while(_loc11_)
                        {
                           continue loop2;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr110);
                  addr141:
               }
               §§goto(addr94);
            }
            else
            {
               param1.getTexCoords(_loc9_,§3j§);
            }
            §§goto(addr141);
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§4-§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§4-§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(!(_loc5_ && _loc1_))
         {
            if(this.§6!T§)
            {
               if(!(_loc5_ && _loc2_))
               {
                  return this.§6!T§;
               }
            }
         }
         var _loc1_:BitmapData = this.bitmapData;
         if(_loc6_ || _loc2_)
         {
            if(_loc1_)
            {
               addr57:
               _loc2_ = this.clipping;
               if(_loc6_ || _loc2_)
               {
                  _loc2_.x *= this.bitmapData.width;
               }
               loop0:
               while(true)
               {
                  _loc2_.y *= this.bitmapData.height;
                  while(true)
                  {
                     _loc2_.width *= this.bitmapData.width;
                     loop2:
                     while(true)
                     {
                        _loc2_.height *= this.bitmapData.height;
                        addr172:
                        while(true)
                        {
                           §§push(int(Math.max(2,_loc2_.width)));
                           while(true)
                           {
                              _loc3_ = §§pop();
                              addr162:
                              while(true)
                              {
                                 §§push(int(Math.max(2,_loc2_.height)));
                                 if(_loc5_ && _loc3_)
                                 {
                                    break;
                                 }
                                 _loc4_ = §§pop();
                                 continue loop2;
                              }
                           }
                        }
                     }
                     if(_loc5_ && _loc1_)
                     {
                        continue;
                     }
                     this.§6!T§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
                     if(_loc6_)
                     {
                        if(_loc6_ || _loc2_)
                        {
                           if(!_loc5_)
                           {
                              continue loop0;
                           }
                           §§goto(addr172);
                        }
                        §§goto(addr162);
                     }
                     §§goto(addr121);
                  }
               }
            }
            return this.§6!T§;
         }
         §§goto(addr57);
      }
      
      public function get §#"!§() : Boolean
      {
         return this.§;!i§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§`l§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§4-§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§4-§.root;
      }
      
      override public function get width() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§4-§.width);
         if(_loc1_)
         {
            return §§pop() * this.§1G§.width;
         }
      }
      
      override public function get height() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§4-§.height);
         if(!(_loc1_ && this))
         {
            return §§pop() * this.§1G§.height;
         }
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§4-§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§4-§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§4-§.requestBaseTextureUpdate(param1);
         }
      }
   }
}
