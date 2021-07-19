package §]!a§
{
   import §4v§.§40§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §^!!§ extends Texture
   {
      
      private static var §=T§:Point;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §=T§ = new Point();
         }
      }
      
      private var §&!c§:Texture;
      
      private var §&'§:Rectangle;
      
      private var §-L§:Rectangle;
      
      private var §`!$§:Boolean;
      
      private var §8!1§:BitmapData;
      
      public function §^!!§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            loop0:
            do
            {
               this.§&!c§ = param1;
               loop1:
               while(true)
               {
                  this.§`!$§ = param3;
                  do
                  {
                     if(!(_loc5_ && param1))
                     {
                        if(param2 != null)
                        {
                           this.§!w§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
                           if(!(_loc5_ && param2))
                           {
                              if(!_loc4_)
                              {
                                 continue;
                              }
                           }
                           else
                           {
                              addr86:
                           }
                        }
                        continue;
                        return;
                     }
                     continue loop1;
                  }
                  while(!_loc4_);
                  
                  continue loop0;
               }
            }
            while(!_loc4_);
            
         }
         this.§!w§(new Rectangle(0,0,1,1));
         §§goto(addr86);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(this.§`!$§)
            {
               if(_loc1_ || _loc2_)
               {
                  this.§&!c§.dispose();
               }
               while(true)
               {
                  addr57:
                  if(!(_loc2_ && _loc1_))
                  {
                     while(true)
                     {
                        super.dispose();
                        if(!_loc2_)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              return;
                           }
                           loop3:
                           while(true)
                           {
                              this.§8!1§ = null;
                              addr69:
                              while(true)
                              {
                                 this.§8!1§.dispose();
                                 continue loop3;
                              }
                           }
                        }
                        while(!_loc1_)
                        {
                           §§goto(addr69);
                        }
                        §§goto(addr57);
                     }
                     addr28:
                  }
               }
               addr96:
            }
            while(true)
            {
               if(this.§8!1§)
               {
                  §§goto(addr69);
               }
               §§goto(addr28);
               §§goto(addr96);
            }
         }
         §§goto(addr69);
      }
      
      private function §!w§(param1:Rectangle) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Rectangle = null;
         if(_loc5_)
         {
            this.§&'§ = param1;
            if(!(_loc4_ && param1))
            {
               this.§-L§ = param1.clone();
            }
         }
         var _loc2_:§^!!§ = this.§&!c§ as §^!!§;
         loop0:
         for(; _loc2_; _loc2_ = _loc2_.§&!c§ as §^!!§)
         {
            _loc3_ = _loc2_.§&'§;
            if(_loc5_ || _loc2_)
            {
               this.§-L§.x = _loc3_.x + this.§-L§.x * _loc3_.width;
               loop1:
               while(true)
               {
                  this.§-L§.y = _loc3_.y + this.§-L§.y * _loc3_.height;
                  while(true)
                  {
                     addr92:
                     addr83:
                     while(true)
                     {
                        this.§-L§.width *= _loc3_.width;
                        addr102:
                        while(!_loc4_)
                        {
                        }
                        continue loop1;
                     }
                     if(_loc4_ && _loc2_)
                     {
                        continue;
                     }
                     if(true)
                     {
                        continue loop0;
                     }
                     §§goto(addr92);
                  }
               }
            }
            while(true)
            {
               this.§-L§.height *= _loc3_.height;
               if(!(_loc4_ && this))
               {
                  §§goto(addr83);
               }
               §§goto(addr102);
            }
         }
      }
      
      override public function adjustVertexData(param1:§40§, param2:int, param3:int) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc10_ || param1)
         {
            super.adjustVertexData(param1,param2,param3);
         }
         var _loc4_:Number = this.§-L§.x;
         var _loc5_:Number = this.§-L§.y;
         var _loc6_:Number = this.§-L§.width;
         var _loc7_:Number = this.§-L§.height;
         §§push(param2);
         if(_loc10_)
         {
            §§push(int(§§pop() + param3));
         }
         var _loc8_:* = §§pop();
         §§push(param2);
         if(!_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         while(true)
         {
            if(_loc9_ >= _loc8_)
            {
               if(_loc10_ || param3)
               {
                  break;
               }
               do
               {
                  if(!_loc10_)
                  {
                     continue;
                  }
               }
               while(_loc11_ && this);
               
               continue;
               addr87:
            }
            else
            {
               param1.getTexCoords(_loc9_,§=T§);
            }
            while(true)
            {
               §§push(param1);
               §§push(_loc9_);
               §§push(_loc4_);
               if(_loc10_ || param1)
               {
                  §§push(§=T§.x * _loc6_);
                  if(_loc10_ || param2)
                  {
                     addr120:
                     §§push(§§pop() + §§pop());
                     §§push(_loc5_);
                     if(!(_loc11_ && param1))
                     {
                        §§push(§§pop() + §=T§.y * _loc7_);
                     }
                  }
                  §§pop().setTexCoords(§§pop(),§§pop(),§§pop());
                  while(true)
                  {
                     _loc9_++;
                     §§goto(addr87);
                  }
               }
               §§goto(addr120);
            }
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§&!c§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§&!c§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(!_loc5_)
         {
            if(this.§8!1§)
            {
               if(_loc6_)
               {
                  §§goto(addr31);
               }
            }
            var _loc1_:BitmapData = this.bitmapData;
            if(!_loc5_)
            {
               if(_loc1_)
               {
                  addr42:
                  _loc2_ = this.clipping;
                  if(_loc6_)
                  {
                     _loc2_.x *= this.bitmapData.width;
                     while(true)
                     {
                        _loc2_.y *= this.bitmapData.height;
                        loop1:
                        while(_loc6_)
                        {
                           _loc2_.width *= this.bitmapData.width;
                           loop2:
                           while(true)
                           {
                              _loc2_.height *= this.bitmapData.height;
                              loop3:
                              while(true)
                              {
                                 §§push(int(Math.max(2,_loc2_.width)));
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    loop5:
                                    while(true)
                                    {
                                       §§push(int(Math.max(2,_loc2_.height)));
                                       if(!_loc6_)
                                       {
                                          break;
                                       }
                                       _loc4_ = §§pop();
                                       loop6:
                                       for(; !_loc5_; while(_loc6_ || this)
                                       {
                                          if(_loc6_)
                                          {
                                             if(!_loc5_)
                                             {
                                                this.§8!1§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
                                                if(_loc5_ && _loc2_)
                                                {
                                                   continue;
                                                }
                                                if(_loc5_)
                                                {
                                                   continue loop1;
                                                }
                                                §§goto(addr71);
                                                continue;
                                             }
                                             continue loop3;
                                          }
                                          continue loop5;
                                       })
                                       {
                                          while(true)
                                          {
                                             do
                                             {
                                                this.§8!1§ = new BitmapData(_loc3_,_loc4_,true,0);
                                                continue loop6;
                                             }
                                             while(false);
                                             
                                             §§goto(addr177);
                                          }
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr116);
               }
               addr177:
               return this.§8!1§;
            }
            §§goto(addr42);
         }
         addr31:
         return this.§8!1§;
      }
      
      public function get §=!C§() : Boolean
      {
         return this.§`!$§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§-L§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§&!c§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§&!c§.root;
      }
      
      override public function get width() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§&!c§.width);
         if(_loc1_)
         {
            return §§pop() * this.§&'§.width;
         }
      }
      
      override public function get height() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§&!c§.height);
         if(_loc2_)
         {
            return §§pop() * this.§&'§.height;
         }
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§&!c§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§&!c§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§&!c§.requestBaseTextureUpdate(param1);
         }
      }
   }
}
