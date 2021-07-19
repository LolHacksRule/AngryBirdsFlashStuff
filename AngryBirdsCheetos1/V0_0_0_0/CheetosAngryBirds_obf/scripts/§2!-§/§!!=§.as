package §2!-§
{
   import §<!M§.§;Z§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §!!=§ extends Texture
   {
      
      private static var §-$§:Point;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §-$§ = new Point();
         }
      }
      
      private var §,q§:Texture;
      
      private var §1=§:Rectangle;
      
      private var §8!<§:Rectangle;
      
      private var §?4§:Boolean;
      
      private var §1M§:BitmapData;
      
      public function §!!=§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            super();
            while(true)
            {
               this.§,q§ = param1;
               addr87:
               if(!(_loc4_ && param1))
               {
                  this.§`y§(new Rectangle(0,0,1,1));
                  addr102:
                  if(_loc4_)
                  {
                     loop2:
                     while(true)
                     {
                        if(param2 != null)
                        {
                           this.§`y§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
                           if(!(_loc5_ || this))
                           {
                              continue;
                           }
                           if(!(_loc4_ && param2))
                           {
                              §§goto(addr25);
                           }
                        }
                        if(!_loc4_)
                        {
                           §§goto(addr87);
                        }
                        else
                        {
                           while(true)
                           {
                              this.§?4§ = param3;
                              continue loop2;
                           }
                           addr124:
                        }
                     }
                  }
                  addr25:
                  return;
               }
            }
         }
         §§goto(addr124);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(this.§?4§)
            {
               while(true)
               {
                  this.§,q§.dispose();
                  addr87:
                  while(true)
                  {
                  }
               }
               addr84:
            }
            loop2:
            while(true)
            {
               if(this.§1M§)
               {
                  if(!_loc1_)
                  {
                     while(true)
                     {
                        this.§1M§.dispose();
                     }
                     addr67:
                  }
                  loop3:
                  while(true)
                  {
                     this.§1M§ = null;
                     loop4:
                     while(true)
                     {
                        if(_loc1_ && _loc2_)
                        {
                           continue loop3;
                        }
                        if(_loc1_)
                        {
                           break;
                        }
                        if(_loc2_)
                        {
                           while(true)
                           {
                              super.dispose();
                              if(_loc2_)
                              {
                                 break;
                              }
                              continue loop4;
                           }
                           return;
                           addr29:
                        }
                        §§goto(addr84);
                     }
                     continue loop2;
                  }
               }
               §§goto(addr29);
            }
         }
         §§goto(addr67);
      }
      
      private function §`y§(param1:Rectangle) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Rectangle = null;
         if(_loc4_)
         {
            this.§1=§ = param1;
            if(!(_loc5_ && param1))
            {
               addr31:
               this.§8!<§ = param1.clone();
            }
            var _loc2_:§!!=§ = this.§,q§ as §!!=§;
            loop0:
            for(; _loc2_; _loc2_ = _loc2_.§,q§ as §!!=§)
            {
               _loc3_ = _loc2_.§1=§;
               if(!_loc5_)
               {
                  this.§8!<§.x = _loc3_.x + this.§8!<§.x * _loc3_.width;
               }
               loop1:
               while(true)
               {
                  this.§8!<§.y = _loc3_.y + this.§8!<§.y * _loc3_.height;
                  while(true)
                  {
                     while(true)
                     {
                        this.§8!<§.width *= _loc3_.width;
                        do
                        {
                           this.§8!<§.height *= _loc3_.height;
                        }
                        while(!(_loc4_ || _loc3_));
                        
                        if(!(_loc4_ || this))
                        {
                           break;
                        }
                        if(!_loc5_)
                        {
                           if(false)
                           {
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr31);
      }
      
      override public function adjustVertexData(param1:§;Z§, param2:int, param3:int) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc11_ || param1)
         {
            super.adjustVertexData(param1,param2,param3);
         }
         var _loc4_:Number = this.§8!<§.x;
         var _loc5_:Number = this.§8!<§.y;
         var _loc6_:Number = this.§8!<§.width;
         var _loc7_:Number = this.§8!<§.height;
         §§push(param2);
         if(_loc11_)
         {
            §§push(int(§§pop() + param3));
         }
         var _loc8_:* = §§pop();
         §§push(param2);
         if(!(_loc10_ && param3))
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         while(true)
         {
            if(_loc9_ >= _loc8_)
            {
               if(_loc11_ || param3)
               {
                  if(!_loc10_)
                  {
                     break;
                  }
                  while(_loc10_)
                  {
                     §§pop().setTexCoords(§§pop(),§§pop(),§§pop());
                  }
                  _loc9_++;
               }
               continue;
            }
            param1.getTexCoords(_loc9_,§-$§);
            while(true)
            {
               §§push(param1);
               §§push(_loc9_);
               §§push(_loc4_);
               if(_loc11_ || param2)
               {
                  §§push(§-$§.x * _loc6_);
                  if(_loc11_ || param3)
                  {
                     addr119:
                     §§push(§§pop() + §§pop());
                     §§push(_loc5_);
                     if(_loc11_ || param3)
                     {
                        §§push(§§pop() + §-$§.y * _loc7_);
                     }
                  }
                  §§goto(addr132);
               }
               §§goto(addr119);
            }
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§,q§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§,q§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Rectangle = null;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         if(!(_loc6_ && this))
         {
            if(this.§1M§)
            {
               if(!_loc6_)
               {
                  §§goto(addr35);
               }
            }
            var _loc1_:BitmapData = this.bitmapData;
            if(_loc5_ || this)
            {
               if(_loc1_)
               {
                  addr51:
                  _loc2_ = this.clipping;
                  if(!(_loc6_ && _loc1_))
                  {
                     _loc2_.x *= this.bitmapData.width;
                     while(true)
                     {
                        _loc2_.y *= this.bitmapData.height;
                        loop1:
                        while(!(_loc6_ && _loc3_))
                        {
                           _loc2_.width *= this.bitmapData.width;
                           while(true)
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
                                    continue loop1;
                                 }
                              }
                              if(_loc5_ || this)
                              {
                                 while(false)
                                 {
                                    §§goto(addr102);
                                 }
                                 addr201:
                                 return this.§1M§;
                                 addr100:
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr100);
               }
               §§goto(addr201);
            }
            §§goto(addr51);
         }
         addr35:
         return this.§1M§;
      }
      
      public function get §6]§() : Boolean
      {
         return this.§?4§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§8!<§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§,q§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§,q§.root;
      }
      
      override public function get width() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§,q§.width);
         if(!_loc1_)
         {
            return §§pop() * this.§1=§.width;
         }
      }
      
      override public function get height() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§,q§.height);
         if(!_loc1_)
         {
            return §§pop() * this.§1=§.height;
         }
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§,q§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§,q§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§,q§.requestBaseTextureUpdate(param1);
         }
      }
   }
}
