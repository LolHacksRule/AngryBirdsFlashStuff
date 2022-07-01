package §+!5§
{
   import §6t§.§3`§;
   import com.angrybirds.§6!E§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §#!>§ extends Sprite
   {
      
      public static const §9_§:int = 0;
      
      public static const §'!y§:int = 1;
      
      public static const §%!6§:int = 2;
      
      public static const §>!P§:int = 3;
      
      private static const §1k§:String = "all";
      
      public static const §>!G§:uint = 40;
       
      
      private const §=;§:Number = 0.3;
      
      private const §9!,§:Number = 25;
      
      private const §<!^§:Number = 10;
      
      private const §18§:Number = 9;
      
      private var § !!§:int;
      
      private var §8!P§:int;
      
      private var §3!8§:Vector.<§+T§>;
      
      private var §>,§:Vector.<§+T§>;
      
      private var §+! §:Point;
      
      private var §"!O§:int;
      
      public function §#!>§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:String = "all")
      {
         var _loc10_:§+T§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         super();
         this.§ !!§ = param1;
         this.§8!P§ = param2;
         var _loc8_:Number = Math.min(§6!E§.§5!=§,§6!E§.§'!U§);
         var _loc9_:Number = Math.max(§6!E§.§5!=§,§6!E§.§'!U§);
         param3 /= §6!E§.§'!U§;
         param4 /= §6!E§.§5!=§;
         this.§"!O§ = param5;
         this.§+! § = new Point(param3,param4);
         this.§3!8§ = new Vector.<§+T§>(0);
         this.§>,§ = new Vector.<§+T§>(0);
         var _loc13_:int = 0;
         while(_loc13_ < param6)
         {
            (_loc10_ = new §+T§(Math.random() * 40 + 10,param7)).x = -2000;
            _loc10_.y = -2000;
            this.addChild(_loc10_);
            this.§3!8§[_loc13_] = _loc10_;
            _loc13_++;
         }
         this.scaleX = _loc9_;
         this.scaleY = _loc9_;
      }
      
      public function §[!R§() : void
      {
         var _loc1_:§+T§ = null;
         while(this.§3!8§.length > 0)
         {
            _loc1_ = this.§3!8§.shift();
            if(_loc1_.parent == this)
            {
               this.removeChild(_loc1_);
            }
            _loc1_.§[!R§();
         }
         while(this.§>,§.length > 0)
         {
            _loc1_ = this.§>,§.shift();
            if(_loc1_.parent == this)
            {
               this.removeChild(_loc1_);
            }
            _loc1_.§[!R§();
         }
         this.§3!8§ = new Vector.<§+T§>(0);
         this.§>,§ = new Vector.<§+T§>(0);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§+T§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:§+T§ = null;
         param1 /= 20;
         while(this.§3!8§.length > 0)
         {
            _loc5_ = this.§3!8§.shift();
            _loc6_ = Math.random() * (this.§9!,§ - this.§<!^§) + this.§<!^§;
            if(this.§"!O§ == §9_§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§"!O§ == §'!y§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§"!O§ == §%!6§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§"!O§ == §>!P§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§<!^§ / 2;
               _loc13_ = this.§9!,§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§9!'§ = _loc8_ * _loc6_;
            _loc5_.§'!8§ = _loc9_ * _loc6_;
            _loc5_.x = this.§+! §.x;
            _loc5_.y = this.§+! §.y;
            this.§>,§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§,!T§ = §3`§.§<"5§.§^g§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§,!T§.play();
         }
         var _loc2_:int = this.§>,§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§>,§[_loc4_];
            _loc5_.§'!8§ += this.§=;§ * param1;
            if(_loc5_.§'!8§ > this.§18§)
            {
               _loc5_.§'!8§ = this.§18§;
            }
            _loc5_.x += _loc5_.§9!'§ * param1;
            _loc5_.y += _loc5_.§'!8§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.y > this.§8!P§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§>,§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§>,§.splice(_loc4_,1)[0]).parent == this)
               {
                  this.removeChild(_loc14_);
               }
               _loc14_.§[!R§();
               _loc5_.x = -2000;
               _loc5_.y = -2000;
            }
            _loc4_--;
         }
      }
   }
}
