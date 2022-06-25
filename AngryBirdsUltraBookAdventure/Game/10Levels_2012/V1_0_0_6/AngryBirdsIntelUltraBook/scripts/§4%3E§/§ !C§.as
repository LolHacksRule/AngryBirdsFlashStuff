package §4>§
{
   import §9!k§.§=A§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class § !C§ extends Texture
   {
      
      private static var §'v§:Point;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && § !C§))
         {
            §'v§ = new Point();
         }
      }
      
      private var §8!Q§:Texture;
      
      private var §,!s§:Rectangle;
      
      private var §9K§:Rectangle;
      
      private var §`"§:Boolean;
      
      private var §1!Q§:BitmapData;
      
      public function § !C§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            super();
            while(true)
            {
               this.§8!Q§ = param1;
               addr81:
               if(_loc4_)
               {
                  this.§1! §(new Rectangle(0,0,1,1));
                  addr101:
                  if(_loc5_ && param1)
                  {
                     loop1:
                     while(true)
                     {
                        this.§`"§ = param3;
                        do
                        {
                           if(param2 == null)
                           {
                              continue;
                           }
                           this.§1! §(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
                           if(!(_loc5_ && this))
                           {
                              if(!_loc5_)
                              {
                                 §§goto(addr24);
                              }
                              continue;
                           }
                           continue loop1;
                        }
                        while(_loc5_);
                        
                        §§goto(addr81);
                     }
                     addr118:
                  }
                  addr24:
                  return;
               }
            }
         }
         §§goto(addr118);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§`"§)
            {
               while(true)
               {
                  this.§8!Q§.dispose();
                  while(true)
                  {
                  }
               }
               addr88:
            }
            do
            {
               if(this.§1!Q§)
               {
                  while(true)
                  {
                     this.§1!Q§.dispose();
                     while(true)
                     {
                        this.§1!Q§ = null;
                        addr69:
                        while(!(_loc2_ && _loc1_))
                        {
                        }
                     }
                  }
                  addr81:
               }
               while(true)
               {
                  super.dispose();
                  if(_loc1_)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        break;
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr69);
               }
               if(!(_loc1_ || _loc2_))
               {
                  continue;
               }
            }
            while(_loc2_);
            
            return;
         }
         §§goto(addr88);
      }
      
      private function §1! §(param1:Rectangle) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Rectangle = null;
         if(!(_loc5_ && _loc2_))
         {
            this.§,!s§ = param1;
            if(_loc4_ || param1)
            {
               this.§9K§ = param1.clone();
            }
         }
         var _loc2_:§ !C§ = this.§8!Q§ as § !C§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§,!s§;
            if(_loc4_ || _loc3_)
            {
               this.§9K§.x = _loc3_.x + this.§9K§.x * _loc3_.width;
               while(true)
               {
                  this.§9K§.y = _loc3_.y + this.§9K§.y * _loc3_.height;
                  loop2:
                  while(true)
                  {
                     addr89:
                     while(true)
                     {
                        this.§9K§.width *= _loc3_.width;
                        continue loop2;
                     }
                  }
               }
            }
            while(false)
            {
               §§goto(addr89);
            }
            _loc2_ = _loc2_.§8!Q§ as § !C§;
         }
      }
      
      override public function adjustVertexData(param1:§=A§, param2:int, param3:int) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc11_ || this)
         {
            super.adjustVertexData(param1,param2,param3);
         }
         var _loc4_:Number = this.§9K§.x;
         var _loc5_:Number = this.§9K§.y;
         var _loc6_:Number = this.§9K§.width;
         var _loc7_:Number = this.§9K§.height;
         §§push(param2);
         if(!_loc10_)
         {
            §§push(int(§§pop() + param3));
         }
         var _loc8_:* = §§pop();
         §§push(param2);
         if(_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         loop0:
         while(true)
         {
            if(_loc9_ >= _loc8_)
            {
               if(!(_loc10_ && param2))
               {
                  if(_loc11_)
                  {
                     break;
                  }
                  §§push(param1);
                  §§push(_loc9_);
                  §§push(_loc4_);
                  if(!(_loc10_ && this))
                  {
                     §§push(§'v§.x * _loc6_);
                     if(!_loc10_)
                     {
                        addr121:
                        §§push(§§pop() + §§pop());
                        §§push(_loc5_);
                        if(_loc11_ || param2)
                        {
                           §§push(§§pop() + §'v§.y * _loc7_);
                        }
                     }
                     §§pop().setTexCoords(§§pop(),§§pop(),§§pop());
                     loop2:
                     while(true)
                     {
                        _loc9_++;
                        addr90:
                        while(!_loc11_)
                        {
                           continue loop2;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr121);
                  addr142:
               }
               §§goto(addr90);
            }
            else
            {
               param1.getTexCoords(_loc9_,§'v§);
            }
            §§goto(addr142);
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§8!Q§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§8!Q§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Rectangle = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(_loc5_ || _loc1_)
         {
            if(this.§1!Q§)
            {
               if(!(_loc6_ && _loc2_))
               {
                  return this.§1!Q§;
               }
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
                     loop1:
                     for(; !_loc6_; loop3:
                     for(; !(_loc6_ && _loc1_); if(_loc6_ && _loc1_)
                     {
                        continue;
                     })
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
                                 addr102:
                                 while(true)
                                 {
                                    this.§1!Q§ = new BitmapData(_loc3_,_loc4_,true,0);
                                    while(!_loc6_)
                                    {
                                       if(!(_loc5_ || _loc2_))
                                       {
                                          continue loop5;
                                       }
                                       if(!_loc6_)
                                       {
                                          this.§1!Q§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
                                          if(!(_loc6_ && _loc1_))
                                          {
                                             continue loop3;
                                          }
                                          continue;
                                       }
                                       §§goto(addr179);
                                    }
                                    continue loop6;
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     })
                     {
                        _loc2_.width *= this.bitmapData.width;
                        while(true)
                        {
                           _loc2_.height *= this.bitmapData.height;
                           continue loop1;
                        }
                     }
                  }
               }
               while(false)
               {
                  §§goto(addr102);
               }
            }
            return this.§1!Q§;
         }
         §§goto(addr51);
      }
      
      public function get §]!_§() : Boolean
      {
         return this.§`"§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§9K§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§8!Q§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§8!Q§.root;
      }
      
      override public function get width() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§8!Q§.width);
         if(!_loc1_)
         {
            return §§pop() * this.§,!s§.width;
         }
      }
      
      override public function get height() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§8!Q§.height);
         if(_loc1_)
         {
            return §§pop() * this.§,!s§.height;
         }
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§8!Q§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§8!Q§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§8!Q§.requestBaseTextureUpdate(param1);
         }
      }
   }
}
