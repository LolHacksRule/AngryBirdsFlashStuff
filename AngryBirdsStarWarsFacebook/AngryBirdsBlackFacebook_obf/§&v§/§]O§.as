package §&v§
{
   import §=]§.§%"G§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §]O§ extends Texture
   {
      
      private static var §7"F§:Point;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §7"F§ = new Point();
         }
      }
      
      private var §^#Q§:Texture;
      
      private var §7y§:Rectangle;
      
      private var §'!§:Rectangle;
      
      private var §5!K§:Boolean;
      
      private var §@i§:BitmapData;
      
      public function §]O§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            super();
            while(true)
            {
               this.§^#Q§ = param1;
            }
            addr122:
         }
         do
         {
            this.§5!K§ = param3;
            while(true)
            {
               if(param2 == null)
               {
                  if(!_loc4_)
                  {
                     this.§#!%§(new Rectangle(0,0,1,1));
                     break;
                  }
                  break;
               }
               this.§#!%§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
               if(_loc4_)
               {
                  break;
               }
               if(_loc4_ && param2)
               {
                  continue;
               }
               if(!_loc4_)
               {
                  §§goto(addr25);
               }
               §§goto(addr122);
            }
         }
         while(!(_loc5_ || this));
         
         addr25:
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(this.§5!K§)
            {
               loop0:
               while(true)
               {
                  this.§^#Q§.dispose();
                  addr102:
                  addr75:
                  while(true)
                  {
                  }
                  loop2:
                  while(true)
                  {
                     if(_loc1_ && _loc1_)
                     {
                        continue loop0;
                     }
                     this.§@i§.dispose();
                     while(true)
                     {
                        this.§@i§ = null;
                        while(true)
                        {
                           if(_loc2_)
                           {
                              if(_loc1_ && _loc2_)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop2;
                        }
                        §§goto(addr102);
                        if(!(_loc2_ || _loc2_))
                        {
                           continue;
                        }
                        §§goto(addr56);
                     }
                  }
               }
            }
            while(true)
            {
               if(this.§@i§)
               {
                  §§goto(addr75);
               }
               §§goto(addr29);
               §§goto(addr102);
            }
         }
         §§goto(addr102);
      }
      
      private function §#!%§(param1:Rectangle) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Rectangle = null;
         if(_loc4_)
         {
            this.§7y§ = param1;
            if(_loc4_ || _loc3_)
            {
               this.§'!§ = param1.clone();
            }
         }
         var _loc2_:§]O§ = this.§^#Q§ as §]O§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§7y§;
            if(!(_loc5_ && this))
            {
               this.§'!§.x = _loc3_.x + this.§'!§.x * _loc3_.width;
               loop1:
               while(true)
               {
                  this.§'!§.y = _loc3_.y + this.§'!§.y * _loc3_.height;
                  addr112:
                  while(true)
                  {
                     addr81:
                     while(true)
                     {
                        this.§'!§.width *= _loc3_.width;
                        continue loop1;
                     }
                  }
               }
            }
            §§goto(addr79);
            _loc2_ = _loc2_.§^#Q§ as §]O§;
         }
      }
      
      override public function adjustVertexData(param1:§%"G§, param2:int, param3:int) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(!_loc11_)
         {
            super.adjustVertexData(param1,param2,param3);
         }
         var _loc4_:Number = this.§'!§.x;
         var _loc5_:Number = this.§'!§.y;
         var _loc6_:Number = this.§'!§.width;
         var _loc7_:Number = this.§'!§.height;
         §§push(param2);
         if(!_loc11_)
         {
            §§push(int(§§pop() + param3));
         }
         var _loc8_:* = §§pop();
         §§push(param2);
         if(_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         while(true)
         {
            if(_loc9_ >= _loc8_)
            {
               if(_loc10_)
               {
                  if(!(_loc11_ && this))
                  {
                     break;
                  }
                  while(true)
                  {
                     _loc9_++;
                     addr128:
                     §§pop().setTexCoords(§§pop(),§§pop(),§§pop());
                  }
               }
               while(!_loc10_)
               {
               }
               continue;
            }
            param1.getTexCoords(_loc9_,§7"F§);
            while(true)
            {
               §§push(param1);
               §§push(_loc9_);
               §§push(_loc4_);
               if(!(_loc11_ && param2))
               {
                  §§push(§7"F§.x * _loc6_);
                  if(!_loc11_)
                  {
                     addr105:
                     §§push(§§pop() + §§pop());
                     §§push(_loc5_);
                     if(!(_loc11_ && param3))
                     {
                        addr113:
                        §§push(§§pop() + §7"F§.y * _loc7_);
                     }
                     §§goto(addr128);
                  }
                  §§goto(addr113);
               }
               §§goto(addr105);
            }
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§^#Q§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§^#Q§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Rectangle = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(!_loc6_)
         {
            if(this.§@i§)
            {
               if(!_loc6_)
               {
                  return this.§@i§;
               }
            }
         }
         var _loc1_:BitmapData = this.bitmapData;
         if(!_loc6_)
         {
            if(_loc1_)
            {
               addr41:
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
                        while(true)
                        {
                           _loc2_.height *= this.bitmapData.height;
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
                                       addr105:
                                       while(true)
                                       {
                                          this.§@i§ = new BitmapData(_loc3_,_loc4_,true,0);
                                          while(_loc5_ || _loc3_)
                                          {
                                             this.§@i§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
                                             if(_loc5_)
                                             {
                                                continue loop6;
                                             }
                                          }
                                          continue loop5;
                                       }
                                    }
                                 }
                              }
                              if(!(_loc6_ && _loc3_))
                              {
                                 continue loop2;
                              }
                           }
                        }
                        if(_loc5_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(false)
               {
                  §§goto(addr105);
               }
            }
            return this.§@i§;
         }
         §§goto(addr41);
      }
      
      public function get §5r§() : Boolean
      {
         return this.§5!K§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§'!§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§^#Q§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§^#Q§.root;
      }
      
      override public function get width() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§^#Q§.width);
         if(!_loc2_)
         {
            return §§pop() * this.§7y§.width;
         }
      }
      
      override public function get height() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§^#Q§.height);
         if(!(_loc1_ && this))
         {
            return §§pop() * this.§7y§.height;
         }
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§^#Q§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§^#Q§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§^#Q§.requestBaseTextureUpdate(param1);
         }
      }
   }
}
