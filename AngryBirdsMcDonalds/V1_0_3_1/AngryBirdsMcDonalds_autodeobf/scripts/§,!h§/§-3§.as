package §,!h§
{
   import § !Y§.§2#§;
   import §`!"§.§;i§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §-3§ extends Sprite
   {
      
      public static const §&!n§:int = 0;
      
      public static const §`!G§:int = 1;
      
      public static const §9C§:int = 2;
      
      public static const §!!]§:int = 3;
       
      
      private const §7!X§:uint = 40;
      
      private const § !=§:Number = 0.3;
      
      private const §>!!§:Number = 25;
      
      private const §=!h§:Number = 10;
      
      private const §-x§:Number = 9;
      
      private var §&!I§:int;
      
      private var §`!`§:int;
      
      private var §`s§:Array;
      
      private var § !Z§:Array;
      
      private var §;!f§:Point;
      
      private var §8!>§:int;
      
      private var §",§:Number;
      
      public function §-3§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:Number = 0)
      {
         var _loc8_:§72§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         super();
         this.scrollRect = new Rectangle(0,0,param1,param2);
         this.§&!I§ = param1 * §2#§.§`4§;
         this.§`!`§ = param2 * §2#§.§2"§;
         this.§8!>§ = param5;
         this.§;!f§ = new Point(param3,param4);
         this.§`s§ = [];
         this.§ !Z§ = [];
         var _loc11_:int = 0;
         while(_loc11_ < param6)
         {
            (_loc8_ = new §72§(Math.random() * 40 + 10)).x = -2000;
            _loc8_.y = -2000;
            this.addChild(_loc8_);
            this.§`s§[_loc11_] = _loc8_;
            _loc11_++;
         }
         this.§",§ = param7;
      }
      
      public function clean() : void
      {
         var _loc1_:§72§ = null;
         while(this.§`s§.length > 0)
         {
            _loc1_ = this.§`s§.shift();
            _loc1_.clean();
         }
         while(this.§ !Z§.length > 0)
         {
            _loc1_ = this.§ !Z§.shift();
            _loc1_.clean();
         }
         this.§`s§ = [];
         this.§ !Z§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§72§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Object = null;
         this.§",§ -= param1;
         if(this.§",§ > 0)
         {
            return;
         }
         param1 /= 20;
         while(this.§`s§.length > 0)
         {
            _loc5_ = this.§`s§.shift();
            _loc6_ = Math.random() * (this.§>!!§ - this.§=!h§) + this.§=!h§;
            if(this.§8!>§ == §&!n§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§8!>§ == §`!G§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§8!>§ == §9C§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§8!>§ == §!!]§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§=!h§ / 2;
               _loc13_ = this.§>!!§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§]!>§ = _loc8_ * _loc6_;
            _loc5_.§-!<§ = _loc9_ * _loc6_;
            _loc5_.x = this.§;!f§.x;
            _loc5_.y = this.§;!f§.y;
            this.§ !Z§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§&!O§ = §;i§.§@!7§.§@!6§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§&!O§.play();
         }
         var _loc2_:int = this.§ !Z§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§ !Z§[_loc4_];
            _loc5_.§-!<§ += this.§ !=§ * param1;
            if(_loc5_.§-!<§ > this.§-x§)
            {
               _loc5_.§-!<§ = this.§-x§;
            }
            _loc5_.x += _loc5_.§]!>§ * param1;
            _loc5_.y += _loc5_.§-!<§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§&!I§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§`!`§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§ !Z§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§ !Z§.splice(_loc4_,1)) is §72§)
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
