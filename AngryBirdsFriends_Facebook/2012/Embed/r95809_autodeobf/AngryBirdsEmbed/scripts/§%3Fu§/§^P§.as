package §?u§
{
   import §-l§.§?'§;
   import §?!%§.§?!7§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §^P§ extends Sprite
   {
      
      public static const §6?§:int = 0;
      
      public static const §9V§:int = 1;
      
      public static const §`X§:int = 2;
      
      public static const §[H§:int = 3;
       
      
      private const §3?§:uint = 40;
      
      private const §'g§:Number = 0.3;
      
      private const §&G§:Number = 25;
      
      private const §-!4§:Number = 10;
      
      private const §&-§:Number = 9;
      
      private var §+,§:int;
      
      private var §2J§:int;
      
      private var §;!G§:Array;
      
      private var §"!$§:Array;
      
      private var §?s§:Point;
      
      private var § &§:int;
      
      public function §^P§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40)
      {
         var _loc9_:§=_§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         super();
         this.§+,§ = param1;
         this.§2J§ = param2;
         var _loc7_:Number = Math.min(§?'§.§&!0§,§?'§.§]!§);
         var _loc8_:Number = Math.max(§?'§.§&!0§,§?'§.§]!§);
         param3 /= §?'§.§]!§;
         param4 /= §?'§.§&!0§;
         this.§ &§ = param5;
         this.§?s§ = new Point(param3,param4);
         this.§;!G§ = [];
         this.§"!$§ = [];
         var _loc12_:int = 0;
         while(_loc12_ < param6)
         {
            (_loc9_ = new §=_§(Math.random() * 40 + 10)).x = -2000;
            _loc9_.y = -2000;
            this.addChild(_loc9_);
            this.§;!G§[_loc12_] = _loc9_;
            _loc12_++;
         }
         this.scaleX = _loc8_;
         this.scaleY = _loc8_;
      }
      
      public function clean() : void
      {
         var _loc1_:§=_§ = null;
         while(this.§;!G§.length > 0)
         {
            _loc1_ = this.§;!G§.shift();
            _loc1_.clean();
         }
         while(this.§"!$§.length > 0)
         {
            _loc1_ = this.§"!$§.shift();
            _loc1_.clean();
         }
         this.§;!G§ = [];
         this.§"!$§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§=_§ = null;
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
         while(this.§;!G§.length > 0)
         {
            _loc5_ = this.§;!G§.shift();
            _loc6_ = Math.random() * (this.§&G§ - this.§-!4§) + this.§-!4§;
            if(this.§ &§ == §6?§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§ &§ == §9V§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§ &§ == §`X§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§ &§ == §[H§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§-!4§ / 2;
               _loc13_ = this.§&G§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§?!<§ = _loc8_ * _loc6_;
            _loc5_.§,a§ = _loc9_ * _loc6_;
            _loc5_.x = this.§?s§.x;
            _loc5_.y = this.§?s§.y;
            this.§"!$§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§12§ = §?!7§.§^7§.§^!0§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§12§.play();
         }
         var _loc2_:int = this.§"!$§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§"!$§[_loc4_];
            _loc5_.§,a§ += this.§'g§ * param1;
            if(_loc5_.§,a§ > this.§&-§)
            {
               _loc5_.§,a§ = this.§&-§;
            }
            _loc5_.x += _loc5_.§?!<§ * param1;
            _loc5_.y += _loc5_.§,a§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§+,§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§2J§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§"!$§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§"!$§.splice(_loc4_,1)) is §=_§)
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
