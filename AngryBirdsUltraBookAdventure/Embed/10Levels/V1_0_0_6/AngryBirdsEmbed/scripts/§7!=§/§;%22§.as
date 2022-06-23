package §7!=§
{
   import §,G§.§ u§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §;"§ extends Texture
   {
      
      private static var §%v§:Point;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §;"§)
         {
            §%v§ = new Point();
         }
      }
      
      private var §<u§:Texture;
      
      private var §70§:Rectangle;
      
      private var §5V§:Rectangle;
      
      private var §[!!§:Boolean;
      
      private var §57§:BitmapData;
      
      public function §;"§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         super();
         if(_loc5_)
         {
            this.§<u§ = param1;
            if(_loc5_)
            {
               this.§[!!§ = param3;
               if(param2 == null)
               {
                  if(!(_loc4_ && param2))
                  {
                     this.§`!§(new Rectangle(0,0,1,1));
                     addr49:
                  }
               }
               else
               {
                  this.§`!§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
               }
               return;
            }
         }
         §§goto(addr49);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(this.§[!!§)
            {
               if(!_loc1_)
               {
                  this.§<u§.dispose();
                  addr52:
                  if(this.§57§)
                  {
                     this.§57§.dispose();
                     if(_loc2_)
                     {
                        this.§57§ = null;
                        if(_loc2_ || this)
                        {
                        }
                     }
                     §§goto(addr72);
                  }
                  super.dispose();
               }
               addr72:
               return;
            }
         }
         §§goto(addr52);
      }
      
      private function §`!§(param1:Rectangle) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Rectangle = null;
         if(!(_loc5_ && _loc2_))
         {
            this.§70§ = param1;
            if(!_loc5_)
            {
               this.§5V§ = param1.clone();
            }
         }
         var _loc2_:§;"§ = this.§<u§ as §;"§;
         for(; _loc2_; _loc2_ = _loc2_.§<u§ as §;"§)
         {
            _loc3_ = _loc2_.§70§;
            if(_loc4_ || _loc2_)
            {
               this.§5V§.x = _loc3_.x + this.§5V§.x * _loc3_.width;
               if(!(_loc4_ || _loc2_))
               {
                  continue;
               }
               this.§5V§.y = _loc3_.y + this.§5V§.y * _loc3_.height;
               if(!_loc4_)
               {
                  continue;
               }
               this.§5V§.width *= _loc3_.width;
               if(_loc5_)
               {
                  continue;
               }
            }
            this.§5V§.height *= _loc3_.height;
         }
      }
      
      override public function adjustVertexData(param1:§ u§, param2:int, param3:int) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc10_ || param1)
         {
            super.adjustVertexData(param1,param2,param3);
         }
         var _loc4_:Number = this.§5V§.x;
         var _loc5_:Number = this.§5V§.y;
         var _loc6_:Number = this.§5V§.width;
         var _loc7_:Number = this.§5V§.height;
         §§push(param2);
         if(_loc10_ || param3)
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
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§%v§);
            if(!(_loc10_ || param1))
            {
               continue;
            }
            §§push(param1);
            §§push(_loc9_);
            §§push(_loc4_);
            if(!(_loc11_ && this))
            {
               §§push(§%v§.x * _loc6_);
               if(_loc10_ || param3)
               {
                  addr120:
                  §§push(§§pop() + §§pop());
                  §§push(_loc5_);
                  if(_loc10_)
                  {
                     addr123:
                     §§push(§§pop() + §%v§.y * _loc7_);
                  }
                  §§pop().setTexCoords(§§pop(),§§pop(),§§pop());
                  if(_loc10_ || param3)
                  {
                     _loc9_++;
                     if(_loc11_)
                     {
                        break;
                     }
                  }
                  continue;
               }
               §§goto(addr123);
            }
            §§goto(addr120);
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§<u§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§<u§.bitmapData;
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
            if(this.§57§)
            {
               if(!_loc6_)
               {
                  return this.§57§;
               }
            }
         }
         var _loc1_:BitmapData = this.bitmapData;
         if(!(_loc6_ && _loc3_))
         {
            if(_loc1_)
            {
               addr46:
               _loc2_ = this.clipping;
               _loc2_.x *= this.bitmapData.width;
               if(_loc5_)
               {
                  _loc2_.y *= this.bitmapData.height;
                  _loc2_.width *= this.bitmapData.width;
                  _loc2_.height *= this.bitmapData.height;
                  if(!(_loc6_ && _loc2_))
                  {
                     §§push(int(Math.max(2,_loc2_.width)));
                     if(_loc5_ || _loc1_)
                     {
                        _loc3_ = §§pop();
                        §§goto(addr134);
                     }
                     _loc4_ = §§pop();
                  }
               }
               addr134:
               if(_loc5_)
               {
                  §§push(int(Math.max(2,_loc2_.height)));
               }
               this.§57§ = new BitmapData(_loc3_,_loc4_,true,0);
               if(!_loc6_)
               {
                  this.§57§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
               }
               §§goto(addr156);
            }
            addr156:
            return this.§57§;
         }
         §§goto(addr46);
      }
      
      public function get §"!3§() : Boolean
      {
         return this.§[!!§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§5V§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§<u§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§<u§.root;
      }
      
      override public function get width() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§<u§.width);
         if(_loc2_ || _loc1_)
         {
            §§push(§§pop() * this.§70§.width);
         }
         return §§pop();
      }
      
      override public function get height() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§<u§.height);
         if(!_loc2_)
         {
            §§push(§§pop() * this.§70§.height);
         }
         return §§pop();
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§<u§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§<u§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§<u§.requestBaseTextureUpdate(param1);
         }
      }
   }
}
