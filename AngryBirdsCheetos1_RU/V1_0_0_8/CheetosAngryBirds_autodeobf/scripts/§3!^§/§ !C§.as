package §3!^§
{
   import §!7§.§!>§;
   import §!7§.§`R§;
   import §1!§.§@!Q§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class § !C§ extends Sprite
   {
      
      public static const §[X§:int = 0;
      
      public static const §;!N§:int = 1;
      
      public static const §1z§:int = 2;
       
      
      private const §+!+§:uint = 40;
      
      private const §>!K§:Number = 0.3;
      
      private const § !%§:Number = 25;
      
      private const §5x§:Number = 10;
      
      private const §8z§:Number = 9;
      
      private var §54§:int;
      
      private var §'![§:int;
      
      private var §3!0§:Array;
      
      private var §!F§:Array;
      
      private var §8o§:Point;
      
      private var §,!O§:int;
      
      public function § !C§(param1:int, param2:int, param3:Number, param4:Number, param5:int)
      {
         var _loc6_:§8!4§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super();
         this.§54§ = param1 * §@!Q§.§'!§;
         this.§'![§ = param2 * §@!Q§.§2!M§;
         this.§,!O§ = param5;
         this.§8o§ = new Point(param3,param4);
         this.§3!0§ = [];
         this.§!F§ = [];
         var _loc9_:int = 0;
         while(_loc9_ < this.§+!+§)
         {
            (_loc6_ = new §8!4§(Math.random() * 40 + 10)).x = -2000;
            _loc6_.y = -2000;
            this.addChild(_loc6_);
            this.§3!0§[_loc9_] = _loc6_;
            _loc9_++;
         }
      }
      
      public function clean() : void
      {
         var _loc1_:§8!4§ = null;
         while(this.§3!0§.length > 0)
         {
            _loc1_ = this.§3!0§.shift();
            _loc1_.clean();
         }
         while(this.§!F§.length > 0)
         {
            _loc1_ = this.§!F§.shift();
            _loc1_.clean();
         }
         this.§3!0§ = [];
         this.§!F§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§8!4§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§!>§ = null;
         var _loc13_:Object = null;
         param1 /= 20;
         while(this.§3!0§.length > 0)
         {
            _loc5_ = this.§3!0§.shift();
            _loc6_ = Math.random() * (this.§ !%§ - this.§5x§) + this.§5x§;
            if(this.§,!O§ == §[X§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§,!O§ == §;!N§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§,!O§ == §1z§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            _loc5_.§3r§ = _loc8_ * _loc6_;
            _loc5_.§2,§ = _loc9_ * _loc6_;
            _loc5_.x = this.§8o§.x;
            _loc5_.y = this.§8o§.y;
            this.§!F§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            (_loc12_ = §`R§.§!!8§.§ B§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5)).play();
         }
         var _loc2_:int = this.§!F§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§!F§[_loc4_];
            _loc5_.§2,§ += this.§>!K§ * param1;
            if(_loc5_.§2,§ > this.§8z§)
            {
               _loc5_.§2,§ = this.§8z§;
            }
            _loc5_.x += _loc5_.§3r§ * param1;
            _loc5_.y += _loc5_.§2,§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§54§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§'![§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§!F§.length > 0 && _loc3_)
            {
               if((_loc13_ = this.§!F§.splice(_loc4_,1)) is §8!4§)
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
