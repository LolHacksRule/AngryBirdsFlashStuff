package §9!L§
{
   import §7!C§.§8!w§;
   import §9!U§.§@F§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §&" § extends Sprite
   {
      
      public static const §@A§:int = 0;
      
      public static const §1+§:int = 1;
      
      public static const §%!+§:int = 2;
      
      public static const §%Y§:int = 3;
      
      private static const §+Z§:String = "all";
       
      
      private const §1!_§:uint = 40;
      
      private const §9!+§:Number = 0.3;
      
      private const §,!v§:Number = 25;
      
      private const §<!g§:Number = 10;
      
      private const §7!s§:Number = 9;
      
      private var §9"5§:int;
      
      private var §>!g§:int;
      
      private var §'"C§:Vector.<§+!#§>;
      
      private var §]D§:Vector.<§+!#§>;
      
      private var §1!5§:Point;
      
      private var §2!v§:int;
      
      public function §&" §(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:String = "all")
      {
         var _loc10_:§+!#§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         super();
         this.§9"5§ = param1;
         this.§>!g§ = param2;
         var _loc8_:Number = Math.min(§8!w§.§<"B§,§8!w§.§70§);
         var _loc9_:Number = Math.max(§8!w§.§<"B§,§8!w§.§70§);
         param3 /= §8!w§.§70§;
         param4 /= §8!w§.§<"B§;
         this.§2!v§ = param5;
         this.§1!5§ = new Point(param3,param4);
         this.§'"C§ = new Vector.<§+!#§>(0);
         this.§]D§ = new Vector.<§+!#§>(0);
         var _loc13_:int = 0;
         while(_loc13_ < param6)
         {
            (_loc10_ = new §+!#§(Math.random() * 40 + 10,param7)).x = -2000;
            _loc10_.y = -2000;
            this.addChild(_loc10_);
            this.§'"C§[_loc13_] = _loc10_;
            _loc13_++;
         }
         this.scaleX = _loc9_;
         this.scaleY = _loc9_;
      }
      
      public function §&!§() : void
      {
         var _loc1_:§+!#§ = null;
         while(this.§'"C§.length > 0)
         {
            _loc1_ = this.§'"C§.shift();
            _loc1_.§&!§();
         }
         while(this.§]D§.length > 0)
         {
            _loc1_ = this.§]D§.shift();
            _loc1_.§&!§();
         }
         this.§'"C§ = new Vector.<§+!#§>(0);
         this.§]D§ = new Vector.<§+!#§>(0);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§+!#§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:§+!#§ = null;
         param1 /= 20;
         while(this.§'"C§.length > 0)
         {
            _loc5_ = this.§'"C§.shift();
            _loc6_ = Math.random() * (this.§,!v§ - this.§<!g§) + this.§<!g§;
            if(this.§2!v§ == §@A§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§2!v§ == §1+§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§2!v§ == §%!+§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§2!v§ == §%Y§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§<!g§ / 2;
               _loc13_ = this.§,!v§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§>!x§ = _loc8_ * _loc6_;
            _loc5_.§2k§ = _loc9_ * _loc6_;
            _loc5_.x = this.§1!5§.x;
            _loc5_.y = this.§1!5§.y;
            this.§]D§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§%y§ = §@F§.§8!J§.§&6§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§%y§.play();
         }
         var _loc2_:int = this.§]D§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§]D§[_loc4_];
            _loc5_.§2k§ += this.§9!+§ * param1;
            if(_loc5_.§2k§ > this.§7!s§)
            {
               _loc5_.§2k§ = this.§7!s§;
            }
            _loc5_.x += _loc5_.§>!x§ * param1;
            _loc5_.y += _loc5_.§2k§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§9"5§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§>!g§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§]D§.length > 0 && _loc3_)
            {
               (_loc14_ = this.§]D§.splice(_loc4_,1)[0]).§&!§();
               _loc5_.x = -2000;
               _loc5_.y = -2000;
            }
            _loc4_--;
         }
      }
   }
}
