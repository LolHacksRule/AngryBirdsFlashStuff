package §=X§
{
   import §!>§.§!#§;
   import §!>§.§5!$§;
   import §7!U§.§2!7§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §9+§ extends Sprite
   {
      
      public static const § %§:int = 0;
      
      public static const §&%§:int = 1;
      
      public static const §return§:int = 2;
       
      
      private const §,!D§:uint = 40;
      
      private const §?Y§:Number = 0.3;
      
      private const §]+§:Number = 25;
      
      private const §0B§:Number = 10;
      
      private const §8t§:Number = 9;
      
      private var §>!G§:int;
      
      private var §6t§:int;
      
      private var §2&§:Array;
      
      private var §&!V§:Array;
      
      private var §@!G§:Point;
      
      private var §!!A§:int;
      
      public function §9+§(param1:int, param2:int, param3:Number, param4:Number, param5:int)
      {
         var _loc6_:§;L§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super();
         this.§>!G§ = param1 * §2!7§.§!!D§;
         this.§6t§ = param2 * §2!7§.§0m§;
         this.§!!A§ = param5;
         this.§@!G§ = new Point(param3,param4);
         this.§2&§ = [];
         this.§&!V§ = [];
         var _loc9_:int = 0;
         while(_loc9_ < this.§,!D§)
         {
            (_loc6_ = new §;L§(Math.random() * 40 + 10)).x = -2000;
            _loc6_.y = -2000;
            this.addChild(_loc6_);
            this.§2&§[_loc9_] = _loc6_;
            _loc9_++;
         }
      }
      
      public function clean() : void
      {
         var _loc1_:§;L§ = null;
         while(this.§2&§.length > 0)
         {
            _loc1_ = this.§2&§.shift();
            _loc1_.clean();
         }
         while(this.§&!V§.length > 0)
         {
            _loc1_ = this.§&!V§.shift();
            _loc1_.clean();
         }
         this.§2&§ = [];
         this.§&!V§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§;L§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§5!$§ = null;
         var _loc13_:Object = null;
         param1 /= 20;
         while(this.§2&§.length > 0)
         {
            _loc5_ = this.§2&§.shift();
            _loc6_ = Math.random() * (this.§]+§ - this.§0B§) + this.§0B§;
            if(this.§!!A§ == § %§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§!!A§ == §&%§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§!!A§ == §return§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            _loc5_.§`R§ = _loc8_ * _loc6_;
            _loc5_.§=Q§ = _loc9_ * _loc6_;
            _loc5_.x = this.§@!G§.x;
            _loc5_.y = this.§@!G§.y;
            this.§&!V§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            (_loc12_ = §!#§.§!5§.§&![§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5)).play();
         }
         var _loc2_:int = this.§&!V§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§&!V§[_loc4_];
            _loc5_.§=Q§ += this.§?Y§ * param1;
            if(_loc5_.§=Q§ > this.§8t§)
            {
               _loc5_.§=Q§ = this.§8t§;
            }
            _loc5_.x += _loc5_.§`R§ * param1;
            _loc5_.y += _loc5_.§=Q§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§>!G§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§6t§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§&!V§.length > 0 && _loc3_)
            {
               if((_loc13_ = this.§&!V§.splice(_loc4_,1)) is §;L§)
               {
                  _loc13_.clean();
               }
               _loc5_.x = -2000;
               _loc5_.y = -2000;
            }
            _loc4_--;
         }
      }
   }
}
