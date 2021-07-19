package §=!4§
{
   import §^!^§.§#!_§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class § !5§ extends Texture
   {
      
      private static var §0u§:Point;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §0u§ = new Point();
         }
      }
      
      private var §->§:Texture;
      
      private var § !$§:Rectangle;
      
      private var §8Q§:Rectangle;
      
      private var §#!!§:Boolean;
      
      private var §3!g§:BitmapData;
      
      public function § !5§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§->§ = param1;
            do
            {
               this.§#!!§ = param3;
               while(true)
               {
                  if(param2 == null)
                  {
                     if(!(_loc5_ || param3))
                     {
                        break;
                     }
                     continue;
                  }
                  this.§,B§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
                  if(!(_loc5_ || this))
                  {
                     break;
                  }
                  if(_loc5_)
                  {
                     §§goto(addr25);
                  }
                  continue loop0;
               }
            }
            while(!_loc5_);
            
            addr25:
            return;
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§#!!§)
            {
               if(_loc1_ || this)
               {
                  this.§->§.dispose();
                  addr91:
                  while(true)
                  {
                  }
                  addr91:
               }
               §§goto(addr91);
            }
            loop0:
            while(true)
            {
               if(this.§3!g§)
               {
                  loop1:
                  while(true)
                  {
                     this.§3!g§.dispose();
                     loop2:
                     while(true)
                     {
                        this.§3!g§ = null;
                        addr48:
                        do
                        {
                           if(!_loc1_)
                           {
                              continue loop2;
                           }
                           if(_loc2_ && _loc1_)
                           {
                              continue loop1;
                           }
                        }
                        while(_loc1_);
                        
                        continue loop0;
                     }
                  }
               }
               while(true)
               {
                  super.dispose();
                  if(_loc1_)
                  {
                     break;
                  }
                  §§goto(addr48);
               }
               return;
            }
         }
         §§goto(addr91);
      }
      
      private function §,B§(param1:Rectangle) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Rectangle = null;
         if(!(_loc4_ && this))
         {
            this.§ !$§ = param1;
            if(!(_loc4_ && param1))
            {
               addr37:
               this.§8Q§ = param1.clone();
            }
            var _loc2_:§ !5§ = this.§->§ as § !5§;
            loop0:
            for(; _loc2_; _loc2_ = _loc2_.§->§ as § !5§)
            {
               _loc3_ = _loc2_.§ !$§;
               if(!_loc4_)
               {
                  this.§8Q§.x = _loc3_.x + this.§8Q§.x * _loc3_.width;
                  while(true)
                  {
                     this.§8Q§.y = _loc3_.y + this.§8Q§.y * _loc3_.height;
                     addr102:
                     if(_loc4_ && param1)
                     {
                        continue;
                     }
                     this.§8Q§.height *= _loc3_.height;
                     if(_loc5_ || param1)
                     {
                        if(false)
                        {
                           while(true)
                           {
                              this.§8Q§.width *= _loc3_.width;
                           }
                           addr85:
                        }
                        continue loop0;
                     }
                     while(!(_loc4_ && param1))
                     {
                        §§goto(addr102);
                     }
                     while(true)
                     {
                        §§goto(addr85);
                        §§goto(addr95);
                     }
                     addr95:
                     addr123:
                  }
               }
               §§goto(addr123);
            }
            return;
         }
         §§goto(addr37);
      }
      
      override public function adjustVertexData(param1:§#!_§, param2:int, param3:int) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc11_)
         {
            super.adjustVertexData(param1,param2,param3);
         }
         var _loc4_:Number = this.§8Q§.x;
         var _loc5_:Number = this.§8Q§.y;
         var _loc6_:Number = this.§8Q§.width;
         var _loc7_:Number = this.§8Q§.height;
         §§push(param2);
         if(_loc11_ || param1)
         {
            §§push(int(§§pop() + param3));
         }
         var _loc8_:* = §§pop();
         §§push(param2);
         if(_loc11_ || param3)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         while(true)
         {
            if(_loc9_ >= _loc8_)
            {
               if(_loc11_ || param2)
               {
                  if(_loc11_)
                  {
                     break;
                  }
                  while(true)
                  {
                     _loc9_++;
                     addr134:
                     §§pop().setTexCoords(§§pop(),§§pop(),§§pop());
                  }
               }
               while(_loc10_)
               {
               }
               continue;
            }
            param1.getTexCoords(_loc9_,§0u§);
            while(true)
            {
               §§push(param1);
               §§push(_loc9_);
               §§push(_loc4_);
               if(_loc11_ || param1)
               {
                  §§push(§0u§.x * _loc6_);
                  if(_loc11_)
                  {
                     addr116:
                     §§push(§§pop() + §§pop());
                     §§push(_loc5_);
                     if(!_loc10_)
                     {
                        §§push(§§pop() + §0u§.y * _loc7_);
                     }
                  }
                  §§goto(addr134);
               }
               §§goto(addr116);
            }
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§->§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§->§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Rectangle = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(!(_loc6_ && _loc2_))
         {
            if(this.§3!g§)
            {
               if(!(_loc6_ && _loc1_))
               {
                  §§goto(addr40);
               }
            }
            var _loc1_:BitmapData = this.bitmapData;
            if(!_loc6_)
            {
               if(_loc1_)
               {
                  addr51:
                  _loc2_ = this.clipping;
                  if(!(_loc6_ && this))
                  {
                     _loc2_.x *= this.bitmapData.width;
                     while(true)
                     {
                        _loc2_.y *= this.bitmapData.height;
                        while(!_loc6_)
                        {
                           _loc2_.width *= this.bitmapData.width;
                           loop2:
                           while(!(_loc6_ && _loc2_))
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
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                       _loc4_ = §§pop();
                                       loop6:
                                       while(true)
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             this.§3!g§ = new BitmapData(_loc3_,_loc4_,true,0);
                                             loop8:
                                             while(_loc5_)
                                             {
                                                continue loop3;
                                                while(true)
                                                {
                                                   this.§3!g§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
                                                   if(_loc5_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            if(true)
                                                            {
                                                               break;
                                                            }
                                                            continue loop7;
                                                         }
                                                         continue loop2;
                                                      }
                                                      continue loop6;
                                                   }
                                                   continue loop8;
                                                }
                                                return this.§3!g§;
                                             }
                                             continue loop5;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr112);
               }
               §§goto(addr191);
            }
            §§goto(addr51);
         }
         addr40:
         return this.§3!g§;
      }
      
      public function get §16§() : Boolean
      {
         return this.§#!!§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§8Q§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§->§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§->§.root;
      }
      
      override public function get width() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§->§.width);
         if(_loc1_ || _loc1_)
         {
            return §§pop() * this.§ !$§.width;
         }
      }
      
      override public function get height() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§->§.height);
         if(_loc1_ || _loc2_)
         {
            return §§pop() * this.§ !$§.height;
         }
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§->§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§->§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§->§.requestBaseTextureUpdate(param1);
         }
      }
   }
}
