package §_-z4§
{
   import §_-UD§.§_-9f§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-ud§ extends Texture
   {
      
      private static var §_-0-7§:Point;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §_-0-7§ = new Point();
         }
      }
      
      private var §_-00U§:Texture;
      
      private var §_-c8§:Rectangle;
      
      private var §_-Ea§:Rectangle;
      
      private var §_-aB§:Boolean;
      
      private var §_-dK§:BitmapData;
      
      public function §_-ud§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§_-00U§ = param1;
            loop1:
            while(true)
            {
               this.§_-aB§ = param3;
               do
               {
                  if(_loc5_)
                  {
                     if(param2 == null)
                     {
                        continue loop1;
                     }
                     this.§_-0E5§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
                     if(!_loc4_)
                     {
                        if(_loc5_)
                        {
                           §§goto(addr25);
                        }
                        continue loop1;
                     }
                     continue;
                  }
                  continue loop0;
               }
               while(_loc4_);
               
               addr25:
               return;
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§_-aB§)
            {
               while(true)
               {
                  this.§_-00U§.dispose();
                  addr91:
                  while(true)
                  {
                  }
                  addr43:
                  if(!(_loc1_ || _loc1_))
                  {
                     continue;
                  }
                  return;
                  addr50:
               }
            }
            while(true)
            {
               if(this.§_-dK§)
               {
                  loop2:
                  while(_loc1_ || _loc1_)
                  {
                     this.§_-dK§.dispose();
                     while(true)
                     {
                        this.§_-dK§ = null;
                        addr65:
                        while(!_loc2_)
                        {
                           if(!_loc2_)
                           {
                              continue;
                           }
                           continue loop2;
                        }
                     }
                  }
                  continue;
               }
               while(true)
               {
                  super.dispose();
                  if(!(_loc2_ && _loc1_))
                  {
                     §§goto(addr43);
                  }
                  else
                  {
                     §§goto(addr65);
                  }
               }
            }
            §§goto(addr50);
         }
         §§goto(addr91);
      }
      
      private function §_-0E5§(param1:Rectangle) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Rectangle = null;
         if(_loc4_)
         {
            this.§_-c8§ = param1;
            if(!_loc5_)
            {
               this.§_-Ea§ = param1.clone();
            }
         }
         var _loc2_:§_-ud§ = this.§_-00U§ as §_-ud§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§_-c8§;
            if(_loc4_)
            {
               this.§_-Ea§.x = _loc3_.x + this.§_-Ea§.x * _loc3_.width;
               loop1:
               while(true)
               {
                  this.§_-Ea§.y = _loc3_.y + this.§_-Ea§.y * _loc3_.height;
                  addr107:
                  while(true)
                  {
                     addr71:
                     while(true)
                     {
                        this.§_-Ea§.width *= _loc3_.width;
                        addr81:
                        while(_loc4_)
                        {
                        }
                        continue loop1;
                     }
                  }
               }
            }
            while(true)
            {
               this.§_-Ea§.height *= _loc3_.height;
               if(!_loc5_)
               {
                  if(_loc4_)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr107);
               }
               §§goto(addr81);
            }
            _loc2_ = _loc2_.§_-00U§ as §_-ud§;
         }
      }
      
      override public function adjustVertexData(param1:§_-9f§, param2:int, param3:int) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(!_loc10_)
         {
            super.adjustVertexData(param1,param2,param3);
         }
         var _loc4_:Number = this.§_-Ea§.x;
         var _loc5_:Number = this.§_-Ea§.y;
         var _loc6_:Number = this.§_-Ea§.width;
         var _loc7_:Number = this.§_-Ea§.height;
         §§push(param2);
         if(!(_loc10_ && this))
         {
            §§push(int(§§pop() + param3));
         }
         var _loc8_:* = §§pop();
         §§push(param2);
         if(!(_loc10_ && this))
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
                  if(!_loc10_)
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
            param1.getTexCoords(_loc9_,§_-0-7§);
            while(true)
            {
               §§push(param1);
               §§push(_loc9_);
               §§push(_loc4_);
               if(!(_loc10_ && param3))
               {
                  §§push(§_-0-7§.x * _loc6_);
                  if(_loc11_)
                  {
                     addr126:
                     §§push(§§pop() + §§pop());
                     §§push(_loc5_);
                     if(!_loc10_)
                     {
                        addr129:
                        §§push(§§pop() + §_-0-7§.y * _loc7_);
                     }
                     §§goto(addr134);
                  }
                  §§goto(addr129);
               }
               §§goto(addr126);
            }
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§_-00U§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§_-00U§.bitmapData;
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
            if(this.§_-dK§)
            {
               if(!(_loc5_ && _loc2_))
               {
                  return this.§_-dK§;
               }
            }
         }
         var _loc1_:BitmapData = this.bitmapData;
         if(_loc6_ || this)
         {
            if(_loc1_)
            {
               addr52:
               _loc2_ = this.clipping;
               if(!_loc5_)
               {
                  _loc2_.x *= this.bitmapData.width;
                  loop0:
                  while(true)
                  {
                     _loc2_.y *= this.bitmapData.height;
                     loop1:
                     while(true)
                     {
                        _loc2_.width *= this.bitmapData.width;
                        loop2:
                        while(true)
                        {
                           _loc2_.height *= this.bitmapData.height;
                           loop3:
                           while(_loc6_)
                           {
                              §§push(int(Math.max(2,_loc2_.width)));
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 loop5:
                                 while(true)
                                 {
                                    §§push(int(Math.max(2,_loc2_.height)));
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    _loc4_ = §§pop();
                                    loop6:
                                    while(!_loc5_)
                                    {
                                       while(true)
                                       {
                                          loop8:
                                          do
                                          {
                                             this.§_-dK§ = new BitmapData(_loc3_,_loc4_,true,0);
                                             while(_loc6_)
                                             {
                                                this.§_-dK§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
                                                if(_loc6_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            continue loop8;
                                                         }
                                                         continue loop2;
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop6;
                                                }
                                             }
                                             continue loop3;
                                          }
                                          while(false);
                                          
                                          §§goto(addr177);
                                       }
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
               }
               §§goto(addr116);
            }
            addr177:
            return this.§_-dK§;
         }
         §§goto(addr52);
      }
      
      public function get §_-zF§() : Boolean
      {
         return this.§_-aB§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§_-Ea§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§_-00U§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§_-00U§.root;
      }
      
      override public function get width() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§_-00U§.width);
         if(_loc2_ || _loc1_)
         {
            return §§pop() * this.§_-c8§.width;
         }
      }
      
      override public function get height() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§_-00U§.height);
         if(!(_loc2_ && _loc1_))
         {
            return §§pop() * this.§_-c8§.height;
         }
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§_-00U§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§_-00U§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-00U§.requestBaseTextureUpdate(param1);
         }
      }
   }
}
