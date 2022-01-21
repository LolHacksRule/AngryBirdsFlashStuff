package §6x§
{
   import §%!5§.§7;§;
   import §^m§.§=!a§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §8!H§ extends Sprite
   {
      
      public static const §'2§:int = 0;
      
      public static const §6R§:int = 1;
      
      public static const §]!Q§:int = 2;
      
      public static const §-?§:int = 3;
       
      
      private const §!! §:uint = 40;
      
      private const §,!J§:Number = 0.3;
      
      private const §,_§:Number = 25;
      
      private const § #§:Number = 10;
      
      private const §7]§:Number = 9;
      
      private var §6!_§:int;
      
      private var §"!@§:int;
      
      private var § b§:Array;
      
      private var §,!1§:Array;
      
      private var §[G§:Point;
      
      private var §?7§:int;
      
      private var §+L§:Number;
      
      public function §8!H§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:Number = 0)
      {
         var _loc8_:§2!-§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         super();
         this.scrollRect = new Rectangle(0,0,param1,param2);
         this.§6!_§ = param1 * §7;§.§#!T§;
         this.§"!@§ = param2 * §7;§.§,§;
         this.§?7§ = param5;
         this.§[G§ = new Point(param3,param4);
         this.§ b§ = [];
         this.§,!1§ = [];
         var _loc11_:int = 0;
         while(_loc11_ < param6)
         {
            (_loc8_ = new §2!-§(Math.random() * 40 + 10)).x = -2000;
            _loc8_.y = -2000;
            this.addChild(_loc8_);
            this.§ b§[_loc11_] = _loc8_;
            _loc11_++;
         }
         this.§+L§ = param7;
      }
      
      public function clean() : void
      {
         var _loc1_:§2!-§ = null;
         while(this.§ b§.length > 0)
         {
            _loc1_ = this.§ b§.shift();
            _loc1_.clean();
         }
         while(this.§,!1§.length > 0)
         {
            _loc1_ = this.§,!1§.shift();
            _loc1_.clean();
         }
         this.§ b§ = [];
         this.§,!1§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§2!-§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Object = null;
         this.§+L§ -= param1;
         if(this.§+L§ > 0)
         {
            return;
         }
         param1 /= 20;
         while(this.§ b§.length > 0)
         {
            _loc5_ = this.§ b§.shift();
            _loc6_ = Math.random() * (this.§,_§ - this.§ #§) + this.§ #§;
            if(this.§?7§ == §'2§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§?7§ == §6R§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§?7§ == §]!Q§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§?7§ == §-?§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§ #§ / 2;
               _loc13_ = this.§,_§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§!!d§ = _loc8_ * _loc6_;
            _loc5_.§ e§ = _loc9_ * _loc6_;
            _loc5_.x = this.§[G§.x;
            _loc5_.y = this.§[G§.y;
            this.§,!1§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§!r§ = §=!a§.§9$§.§9!H§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§!r§.play();
         }
         var _loc2_:int = this.§,!1§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§,!1§[_loc4_];
            _loc5_.§ e§ += this.§,!J§ * param1;
            if(_loc5_.§ e§ > this.§7]§)
            {
               _loc5_.§ e§ = this.§7]§;
            }
            _loc5_.x += _loc5_.§!!d§ * param1;
            _loc5_.y += _loc5_.§ e§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§6!_§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§"!@§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§,!1§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§,!1§.splice(_loc4_,1)) is §2!-§)
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
