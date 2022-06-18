package §,!$§
{
   import §6[§.§;q§;
   import §>%§.§]3§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §=y§ extends Sprite
   {
      
      public static const §%!?§:int = 0;
      
      public static const §9B§:int = 1;
      
      public static const §3;§:int = 2;
      
      public static const §'T§:int = 3;
       
      
      private const §'6§:uint = 40;
      
      private const §,!4§:Number = 0.3;
      
      private const §23§:Number = 25;
      
      private const §7!E§:Number = 10;
      
      private const §[?§:Number = 9;
      
      private var §-!@§:int;
      
      private var §1!3§:int;
      
      private var §]§:Array;
      
      private var §"!3§:Array;
      
      private var §;$§:Point;
      
      private var §40§:int;
      
      public function §=y§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40)
      {
         var _loc9_:§";§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         super();
         this.§-!@§ = param1;
         this.§1!3§ = param2;
         var _loc7_:Number = Math.min(§]3§.§>F§,§]3§.§3=§);
         var _loc8_:Number = Math.max(§]3§.§>F§,§]3§.§3=§);
         param3 /= §]3§.§3=§;
         param4 /= §]3§.§>F§;
         this.§40§ = param5;
         this.§;$§ = new Point(param3,param4);
         this.§]§ = [];
         this.§"!3§ = [];
         var _loc12_:int = 0;
         while(_loc12_ < param6)
         {
            (_loc9_ = new §";§(Math.random() * 40 + 10)).x = -2000;
            _loc9_.y = -2000;
            this.addChild(_loc9_);
            this.§]§[_loc12_] = _loc9_;
            _loc12_++;
         }
         this.scaleX = _loc8_;
         this.scaleY = _loc8_;
      }
      
      public function clean() : void
      {
         var _loc1_:§";§ = null;
         while(this.§]§.length > 0)
         {
            _loc1_ = this.§]§.shift();
            _loc1_.clean();
         }
         while(this.§"!3§.length > 0)
         {
            _loc1_ = this.§"!3§.shift();
            _loc1_.clean();
         }
         this.§]§ = [];
         this.§"!3§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§";§ = null;
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
         while(this.§]§.length > 0)
         {
            _loc5_ = this.§]§.shift();
            _loc6_ = Math.random() * (this.§23§ - this.§7!E§) + this.§7!E§;
            if(this.§40§ == §%!?§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§40§ == §9B§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§40§ == §3;§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§40§ == §'T§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§7!E§ / 2;
               _loc13_ = this.§23§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§3!4§ = _loc8_ * _loc6_;
            _loc5_.§9!C§ = _loc9_ * _loc6_;
            _loc5_.x = this.§;$§.x;
            _loc5_.y = this.§;$§.y;
            this.§"!3§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§3>§ = §;q§.§9r§.§%!#§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§3>§.play();
         }
         var _loc2_:int = this.§"!3§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§"!3§[_loc4_];
            _loc5_.§9!C§ += this.§,!4§ * param1;
            if(_loc5_.§9!C§ > this.§[?§)
            {
               _loc5_.§9!C§ = this.§[?§;
            }
            _loc5_.x += _loc5_.§3!4§ * param1;
            _loc5_.y += _loc5_.§9!C§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§-!@§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§1!3§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§"!3§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§"!3§.splice(_loc4_,1)) is §";§)
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
