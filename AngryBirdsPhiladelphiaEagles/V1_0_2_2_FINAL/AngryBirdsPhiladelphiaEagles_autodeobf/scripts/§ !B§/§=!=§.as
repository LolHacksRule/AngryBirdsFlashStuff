package § !B§
{
   import §'K§.§3C§;
   import §8!B§.§#! §;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §=!=§ extends Sprite
   {
      
      public static const §^!$§:int = 0;
      
      public static const §;A§:int = 1;
      
      public static const §,F§:int = 2;
      
      public static const §5!P§:int = 3;
       
      
      private const §3<§:uint = 40;
      
      private const §"!E§:Number = 0.3;
      
      private const §'w§:Number = 25;
      
      private const §<i§:Number = 10;
      
      private const §2Z§:Number = 9;
      
      private var §3$§:int;
      
      private var §&"§:int;
      
      private var §"!4§:Array;
      
      private var §&!A§:Array;
      
      private var §69§:Point;
      
      private var §3t§:int;
      
      public function §=!=§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40)
      {
         var _loc9_:§5!L§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         super();
         this.§3$§ = param1;
         this.§&"§ = param2;
         var _loc7_:Number = Math.min(§#! §.§+!E§,§#! §.§3M§);
         var _loc8_:Number = Math.max(§#! §.§+!E§,§#! §.§3M§);
         param3 /= §#! §.§3M§;
         param4 /= §#! §.§+!E§;
         this.§3t§ = param5;
         this.§69§ = new Point(param3,param4);
         this.§"!4§ = [];
         this.§&!A§ = [];
         var _loc12_:int = 0;
         while(_loc12_ < param6)
         {
            (_loc9_ = new §5!L§(Math.random() * 40 + 10)).x = -2000;
            _loc9_.y = -2000;
            this.addChild(_loc9_);
            this.§"!4§[_loc12_] = _loc9_;
            _loc12_++;
         }
         this.scaleX = _loc8_;
         this.scaleY = _loc8_;
      }
      
      public function clean() : void
      {
         var _loc1_:§5!L§ = null;
         while(this.§"!4§.length > 0)
         {
            _loc1_ = this.§"!4§.shift();
            _loc1_.clean();
         }
         while(this.§&!A§.length > 0)
         {
            _loc1_ = this.§&!A§.shift();
            _loc1_.clean();
         }
         this.§"!4§ = [];
         this.§&!A§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§5!L§ = null;
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
         while(this.§"!4§.length > 0)
         {
            _loc5_ = this.§"!4§.shift();
            _loc6_ = Math.random() * (this.§'w§ - this.§<i§) + this.§<i§;
            if(this.§3t§ == §^!$§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§3t§ == §;A§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§3t§ == §,F§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§3t§ == §5!P§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§<i§ / 2;
               _loc13_ = this.§'w§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§-z§ = _loc8_ * _loc6_;
            _loc5_.§5!F§ = _loc9_ * _loc6_;
            _loc5_.x = this.§69§.x;
            _loc5_.y = this.§69§.y;
            this.§&!A§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§#!?§ = §3C§.§>o§.§<t§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§#!?§.play();
         }
         var _loc2_:int = this.§&!A§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§&!A§[_loc4_];
            _loc5_.§5!F§ += this.§"!E§ * param1;
            if(_loc5_.§5!F§ > this.§2Z§)
            {
               _loc5_.§5!F§ = this.§2Z§;
            }
            _loc5_.x += _loc5_.§-z§ * param1;
            _loc5_.y += _loc5_.§5!F§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§3$§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§&"§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§&!A§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§&!A§.splice(_loc4_,1)) is §5!L§)
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
