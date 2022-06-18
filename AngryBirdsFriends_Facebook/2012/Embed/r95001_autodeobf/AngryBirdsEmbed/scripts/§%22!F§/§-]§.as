package §"!F§
{
   import §10§.§#!4§;
   import §]5§.§,G§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §-]§ extends Sprite
   {
      
      public static const §4!%§:int = 0;
      
      public static const §%l§:int = 1;
      
      public static const §%!8§:int = 2;
      
      public static const §<C§:int = 3;
       
      
      private const §8J§:uint = 40;
      
      private const §`!§:Number = 0.3;
      
      private const §?!1§:Number = 25;
      
      private const §0F§:Number = 10;
      
      private const §9!8§:Number = 9;
      
      private var §import§:int;
      
      private var §2!D§:int;
      
      private var §3!<§:Array;
      
      private var §#!<§:Array;
      
      private var §`O§:Point;
      
      private var §9!=§:int;
      
      public function §-]§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40)
      {
         var _loc9_:§<r§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         super();
         this.§import§ = param1;
         this.§2!D§ = param2;
         var _loc7_:Number = Math.min(§#!4§.§51§,§#!4§.§+!8§);
         var _loc8_:Number = Math.max(§#!4§.§51§,§#!4§.§+!8§);
         param3 /= §#!4§.§+!8§;
         param4 /= §#!4§.§51§;
         this.§9!=§ = param5;
         this.§`O§ = new Point(param3,param4);
         this.§3!<§ = [];
         this.§#!<§ = [];
         var _loc12_:int = 0;
         while(_loc12_ < param6)
         {
            (_loc9_ = new §<r§(Math.random() * 40 + 10)).x = -2000;
            _loc9_.y = -2000;
            this.addChild(_loc9_);
            this.§3!<§[_loc12_] = _loc9_;
            _loc12_++;
         }
         this.scaleX = _loc8_;
         this.scaleY = _loc8_;
      }
      
      public function clean() : void
      {
         var _loc1_:§<r§ = null;
         while(this.§3!<§.length > 0)
         {
            _loc1_ = this.§3!<§.shift();
            _loc1_.clean();
         }
         while(this.§#!<§.length > 0)
         {
            _loc1_ = this.§#!<§.shift();
            _loc1_.clean();
         }
         this.§3!<§ = [];
         this.§#!<§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§<r§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Object = null;
         param1 /= 20;
         while(this.§3!<§.length > 0)
         {
            _loc5_ = this.§3!<§.shift();
            _loc6_ = Math.random() * (this.§?!1§ - this.§0F§) + this.§0F§;
            if(this.§9!=§ == §4!%§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§9!=§ == §%l§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§9!=§ == §%!8§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§9!=§ == §<C§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§0F§ / 2;
               _loc13_ = this.§?!1§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§^!-§ = _loc8_ * _loc6_;
            _loc5_.§?!F§ = _loc9_ * _loc6_;
            _loc5_.x = this.§`O§.x;
            _loc5_.y = this.§`O§.y;
            this.§#!<§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§>!2§ = §,G§.§+S§.§1u§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§>!2§.play();
         }
         var _loc2_:int = this.§#!<§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§#!<§[_loc4_];
            _loc5_.§?!F§ += this.§`!§ * param1;
            if(_loc5_.§?!F§ > this.§9!8§)
            {
               _loc5_.§?!F§ = this.§9!8§;
            }
            _loc5_.x += _loc5_.§^!-§ * param1;
            _loc5_.y += _loc5_.§?!F§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§import§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§2!D§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§#!<§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§#!<§.splice(_loc4_,1)) is §<r§)
               {
                  _loc14_.clean();
               }
               _loc5_.x = -2000;
               _loc5_.y = -2000;
            }
            _loc4_--;
         }
      }
   }
}
