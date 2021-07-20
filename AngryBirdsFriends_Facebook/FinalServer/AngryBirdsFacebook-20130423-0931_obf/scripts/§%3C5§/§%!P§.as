package §<5§
{
   import §!=§.§`b§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §%!P§ extends Texture
   {
      
      private static var §29§:Point;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §29§ = new Point();
         }
      }
      
      private var §8!2§:Texture;
      
      private var §,v§:Rectangle;
      
      private var §#<§:Rectangle;
      
      private var §-'§:Boolean;
      
      private var §89§:BitmapData;
      
      public function §%!P§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super();
            loop0:
            while(true)
            {
               this.§8!2§ = param1;
               addr123:
               while(true)
               {
                  this.§-'§ = param3;
                  continue loop0;
               }
            }
         }
         while(true)
         {
            if(param2 == null)
            {
               if(!(_loc5_ && param1))
               {
                  if(_loc4_)
                  {
                     this.§#t§(new Rectangle(0,0,1,1));
                     §§goto(addr99);
                  }
                  §§goto(addr123);
               }
            }
            else
            {
               this.§#t§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
               if(!(_loc5_ && param2))
               {
                  §§goto(addr19);
               }
            }
            §§goto(addr99);
         }
         §§goto(addr106);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§-'§)
            {
               while(true)
               {
                  this.§8!2§.dispose();
                  addr86:
                  addr62:
                  while(true)
                  {
                  }
                  if(!(_loc1_ || _loc2_))
                  {
                     continue;
                  }
                  while(true)
                  {
                     super.dispose();
                     if(!_loc2_)
                     {
                        if(_loc2_)
                        {
                           §§goto(addr86);
                        }
                        return;
                        addr40:
                     }
                     loop4:
                     while(true)
                     {
                        if(!(_loc2_ && _loc1_))
                        {
                           §§goto(addr62);
                        }
                        else
                        {
                           while(true)
                           {
                              this.§89§ = null;
                              continue loop4;
                           }
                           addr79:
                        }
                     }
                     §§goto(addr86);
                  }
                  addr23:
               }
            }
            while(true)
            {
               if(this.§89§)
               {
                  if(_loc1_)
                  {
                     while(true)
                     {
                        this.§89§.dispose();
                     }
                     addr76:
                  }
                  §§goto(addr79);
               }
               §§goto(addr23);
               §§goto(addr86);
            }
            §§goto(addr40);
         }
         §§goto(addr76);
      }
      
      private function §#t§(param1:Rectangle) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Rectangle = null;
         if(!_loc5_)
         {
            this.§,v§ = param1;
            if(_loc4_ || param1)
            {
               addr31:
               this.§#<§ = param1.clone();
            }
            var _loc2_:§%!P§ = this.§8!2§ as §%!P§;
            loop0:
            for(; _loc2_; _loc2_ = _loc2_.§8!2§ as §%!P§)
            {
               _loc3_ = _loc2_.§,v§;
               if(!(_loc5_ && param1))
               {
                  this.§#<§.x = _loc3_.x + this.§#<§.x * _loc3_.width;
               }
               while(true)
               {
                  this.§#<§.y = _loc3_.y + this.§#<§.y * _loc3_.height;
                  loop2:
                  while(true)
                  {
                     addr79:
                     while(true)
                     {
                        this.§#<§.width *= _loc3_.width;
                        continue loop2;
                     }
                     continue loop0;
                  }
                  if(!(_loc4_ || _loc2_))
                  {
                     continue;
                  }
                  this.§#<§.height *= _loc3_.height;
                  if(_loc4_)
                  {
                     if(true)
                     {
                        continue loop0;
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr89);
               }
            }
            return;
         }
         §§goto(addr31);
      }
      
      override public function adjustVertexData(param1:§`b§, param2:int, param3:int) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc10_)
         {
            super.adjustVertexData(param1,param2,param3);
         }
         var _loc4_:Number = this.§#<§.x;
         var _loc5_:Number = this.§#<§.y;
         var _loc6_:Number = this.§#<§.width;
         var _loc7_:Number = this.§#<§.height;
         §§push(param2);
         if(!(_loc11_ && param2))
         {
            §§push(int(§§pop() + param3));
         }
         var _loc8_:* = §§pop();
         §§push(param2);
         if(_loc10_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         while(true)
         {
            if(_loc9_ >= _loc8_)
            {
               if(!(_loc10_ || this))
               {
                  continue;
               }
               if(_loc10_ || this)
               {
                  if(_loc10_)
                  {
                     break;
                  }
                  §§push(param1);
                  §§push(_loc9_);
                  §§push(_loc4_);
                  if(!_loc11_)
                  {
                     §§push(§29§.x * _loc6_);
                     if(_loc10_ || param3)
                     {
                        addr130:
                        §§push(§§pop() + §§pop());
                        §§push(_loc5_);
                        if(_loc10_ || this)
                        {
                           §§push(§§pop() + §29§.y * _loc7_);
                        }
                     }
                     §§pop().setTexCoords(§§pop(),§§pop(),§§pop());
                     _loc9_++;
                     continue;
                     addr144:
                  }
                  §§goto(addr130);
                  addr151:
               }
               §§goto(addr144);
            }
            else
            {
               param1.getTexCoords(_loc9_,§29§);
            }
            §§goto(addr151);
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§8!2§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§8!2§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(!(_loc5_ && _loc2_))
         {
            if(this.§89§)
            {
               if(_loc6_ || _loc3_)
               {
                  §§goto(addr41);
               }
            }
            var _loc1_:BitmapData = this.bitmapData;
            if(!(_loc5_ && _loc3_))
            {
               if(_loc1_)
               {
                  addr57:
                  _loc2_ = this.clipping;
                  if(_loc6_ || _loc1_)
                  {
                     _loc2_.x *= this.bitmapData.width;
                     while(true)
                     {
                        _loc2_.y *= this.bitmapData.height;
                        while(true)
                        {
                           _loc2_.width *= this.bitmapData.width;
                           loop2:
                           while(_loc6_ || _loc1_)
                           {
                              _loc2_.height *= this.bitmapData.height;
                              loop3:
                              while(true)
                              {
                                 §§push(int(Math.max(2,_loc2_.width)));
                                 loop4:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    addr140:
                                    loop5:
                                    while(true)
                                    {
                                       §§push(int(Math.max(2,_loc2_.height)));
                                       if(!_loc5_)
                                       {
                                          _loc4_ = §§pop();
                                          loop6:
                                          while(_loc6_)
                                          {
                                             do
                                             {
                                                this.§89§ = new BitmapData(_loc3_,_loc4_,true,0);
                                                while(true)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop6;
                                                }
                                                continue loop3;
                                             }
                                             while(false);
                                             
                                             return this.§89§;
                                          }
                                          continue loop2;
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr140);
               }
               §§goto(addr197);
            }
            §§goto(addr57);
         }
         addr41:
         return this.§89§;
      }
      
      public function get §-h§() : Boolean
      {
         return this.§-'§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§#<§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§8!2§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§8!2§.root;
      }
      
      override public function get width() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§8!2§.width);
         if(!_loc2_)
         {
            return §§pop() * this.§,v§.width;
         }
      }
      
      override public function get height() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§8!2§.height);
         if(!_loc2_)
         {
            return §§pop() * this.§,v§.height;
         }
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§8!2§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§8!2§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§8!2§.requestBaseTextureUpdate(param1);
         }
      }
   }
}
