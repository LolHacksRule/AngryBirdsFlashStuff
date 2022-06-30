package §'!C§
{
   import §8!-§.§2!B§;
   import §>!F§.§9!Z§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §<C§ extends Sprite
   {
      
      public static const §9a§:int = 0;
      
      public static const §=!+§:int = 1;
      
      public static const §?=§:int = 2;
      
      public static const §=^§:int = 3;
       
      
      private const §8!#§:uint = 40;
      
      private const §[=§:Number = 0.3;
      
      private const §"C§:Number = 25;
      
      private const §[V§:Number = 10;
      
      private const §;! §:Number = 9;
      
      private var §<p§:int;
      
      private var §?! §:int;
      
      private var §[!H§:Array;
      
      private var §=!H§:Array;
      
      private var §86§:Point;
      
      private var §6_§:int;
      
      private var §=u§:Number;
      
      public function §<C§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:Number = 0)
      {
         var _loc8_:§3F§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         super();
         this.scrollRect = new Rectangle(0,0,param1,param2);
         this.§<p§ = param1 * §9!Z§.§0!6§;
         this.§?! § = param2 * §9!Z§.§+C§;
         this.§6_§ = param5;
         this.§86§ = new Point(param3,param4);
         this.§[!H§ = [];
         this.§=!H§ = [];
         var _loc11_:int = 0;
         while(_loc11_ < param6)
         {
            (_loc8_ = new §3F§(Math.random() * 40 + 10)).x = -2000;
            _loc8_.y = -2000;
            this.addChild(_loc8_);
            this.§[!H§[_loc11_] = _loc8_;
            _loc11_++;
         }
         this.§=u§ = param7;
      }
      
      public function clean() : void
      {
         var _loc1_:§3F§ = null;
         while(this.§[!H§.length > 0)
         {
            _loc1_ = this.§[!H§.shift();
            _loc1_.clean();
         }
         while(this.§=!H§.length > 0)
         {
            _loc1_ = this.§=!H§.shift();
            _loc1_.clean();
         }
         this.§[!H§ = [];
         this.§=!H§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§3F§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Object = null;
         this.§=u§ -= param1;
         if(this.§=u§ > 0)
         {
            return;
         }
         param1 /= 20;
         while(this.§[!H§.length > 0)
         {
            _loc5_ = this.§[!H§.shift();
            _loc6_ = Math.random() * (this.§"C§ - this.§[V§) + this.§[V§;
            if(this.§6_§ == §9a§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§6_§ == §=!+§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§6_§ == §?=§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§6_§ == §=^§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§[V§ / 2;
               _loc13_ = this.§"C§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§9<§ = _loc8_ * _loc6_;
            _loc5_.§0%§ = _loc9_ * _loc6_;
            _loc5_.x = this.§86§.x;
            _loc5_.y = this.§86§.y;
            this.§=!H§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§;M§ = §2!B§.§,!U§.§%!K§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§;M§.play();
         }
         var _loc2_:int = this.§=!H§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§=!H§[_loc4_];
            _loc5_.§0%§ += this.§[=§ * param1;
            if(_loc5_.§0%§ > this.§;! §)
            {
               _loc5_.§0%§ = this.§;! §;
            }
            _loc5_.x += _loc5_.§9<§ * param1;
            _loc5_.y += _loc5_.§0%§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§<p§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§?! § + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§=!H§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§=!H§.splice(_loc4_,1)) is §3F§)
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
