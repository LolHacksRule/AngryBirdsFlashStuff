package §0!-§
{
   import §6x§.§9!§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §5!<§ extends Texture
   {
      
      private static var §[!Y§:Point;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §[!Y§ = new Point();
         }
      }
      
      private var §5!'§:Texture;
      
      private var §7C§:Rectangle;
      
      private var §7!V§:Rectangle;
      
      private var §8i§:Boolean;
      
      private var §#j§:BitmapData;
      
      public function §5!<§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         super();
         if(!(_loc5_ && param1))
         {
            this.§5!'§ = param1;
         }
         this.§8i§ = param3;
         if(param2 == null)
         {
            this.§]!i§(new Rectangle(0,0,1,1));
            if(_loc5_ && this)
            {
            }
         }
         else
         {
            this.§]!i§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(this.§8i§)
         {
            this.§5!'§.dispose();
            if(!(_loc2_ && _loc2_))
            {
               addr49:
               if(this.§#j§)
               {
                  if(!(_loc2_ && this))
                  {
                     §§goto(addr59);
                  }
                  §§goto(addr64);
               }
               §§goto(addr69);
            }
            addr59:
            this.§#j§.dispose();
            if(_loc1_)
            {
               addr64:
               this.§#j§ = null;
               if(_loc1_)
               {
                  addr69:
                  super.dispose();
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      private function §]!i§(param1:Rectangle) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Rectangle = null;
         if(!(_loc4_ && _loc2_))
         {
            this.§7C§ = param1;
            if(_loc5_ || _loc2_)
            {
               addr37:
               this.§7!V§ = param1.clone();
            }
            var _loc2_:§5!<§ = this.§5!'§ as §5!<§;
            for(; _loc2_; _loc2_ = _loc2_.§5!'§ as §5!<§)
            {
               _loc3_ = _loc2_.§7C§;
               if(_loc5_)
               {
                  this.§7!V§.x = _loc3_.x + this.§7!V§.x * _loc3_.width;
                  if(!_loc4_)
                  {
                     this.§7!V§.y = _loc3_.y + this.§7!V§.y * _loc3_.height;
                     if(_loc4_ && param1)
                     {
                        continue;
                     }
                  }
                  this.§7!V§.width *= _loc3_.width;
                  if(!_loc4_)
                  {
                     this.§7!V§.height *= _loc3_.height;
                  }
               }
            }
            return;
         }
         §§goto(addr37);
      }
      
      override public function adjustVertexData(param1:§9!§, param2:int, param3:int) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc10_ || param3)
         {
            super.adjustVertexData(param1,param2,param3);
         }
         var _loc4_:Number = this.§7!V§.x;
         var _loc5_:Number = this.§7!V§.y;
         var _loc6_:Number = this.§7!V§.width;
         var _loc7_:Number = this.§7!V§.height;
         §§push(param2);
         if(_loc10_ || param3)
         {
            §§push(int(§§pop() + param3));
         }
         var _loc8_:* = §§pop();
         §§push(param2);
         if(!(_loc11_ && param3))
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§[!Y§);
            if(!_loc10_)
            {
               continue;
            }
            §§push(param1);
            §§push(_loc9_);
            §§push(_loc4_);
            if(_loc10_ || this)
            {
               §§push(§[!Y§.x * _loc6_);
               if(!(_loc11_ && this))
               {
                  addr120:
                  §§push(§§pop() + §§pop());
                  §§push(_loc5_);
                  if(_loc10_)
                  {
                     §§push(§§pop() + §[!Y§.y * _loc7_);
                  }
               }
               §§pop().setTexCoords(§§pop(),§§pop(),§§pop());
               if(_loc11_ && this)
               {
                  break;
               }
               _loc9_++;
               if(!_loc10_)
               {
                  break;
               }
               continue;
            }
            §§goto(addr120);
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§5!'§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§5!'§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(_loc6_)
         {
            if(this.§#j§)
            {
               if(!(_loc5_ && _loc2_))
               {
                  §§goto(addr36);
               }
            }
            var _loc1_:BitmapData = this.bitmapData;
            if(_loc6_)
            {
               if(_loc1_)
               {
                  addr47:
                  _loc2_ = this.clipping;
                  if(!(_loc5_ && _loc1_))
                  {
                     _loc2_.x *= this.bitmapData.width;
                     if(!(_loc5_ && _loc2_))
                     {
                        _loc2_.y *= this.bitmapData.height;
                        if(_loc6_ || _loc1_)
                        {
                           _loc2_.width *= this.bitmapData.width;
                           if(!_loc5_)
                           {
                              _loc2_.height *= this.bitmapData.height;
                              if(_loc6_ || _loc3_)
                              {
                                 addr123:
                                 §§push(int(Math.max(2,_loc2_.width)));
                                 if(_loc6_ || _loc2_)
                                 {
                                    _loc3_ = §§pop();
                                    addr137:
                                    §§push(int(Math.max(2,_loc2_.height)));
                                 }
                                 _loc4_ = §§pop();
                                 this.§#j§ = new BitmapData(_loc3_,_loc4_,true,0);
                                 if(_loc6_ || _loc1_)
                                 {
                                 }
                                 §§goto(addr181);
                              }
                              this.§#j§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
                              addr181:
                              return this.§#j§;
                           }
                        }
                        §§goto(addr137);
                     }
                     §§goto(addr123);
                  }
               }
               §§goto(addr123);
            }
            §§goto(addr47);
         }
         addr36:
         return this.§#j§;
      }
      
      public function get §;U§() : Boolean
      {
         return this.§8i§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§7!V§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§5!'§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§5!'§.root;
      }
      
      override public function get width() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§5!'§.width);
         if(!_loc1_)
         {
            §§push(§§pop() * this.§7C§.width);
         }
         return §§pop();
      }
      
      override public function get height() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§5!'§.height);
         if(_loc1_)
         {
            §§push(§§pop() * this.§7C§.height);
         }
         return §§pop();
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§5!'§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§5!'§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§5!'§.requestBaseTextureUpdate(param1);
         }
      }
   }
}
