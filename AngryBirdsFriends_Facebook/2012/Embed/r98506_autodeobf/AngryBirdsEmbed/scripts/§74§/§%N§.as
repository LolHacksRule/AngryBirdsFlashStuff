package §74§
{
   import §;=§.§>!2§;
   import §`t§.§^?§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §%N§ extends Sprite
   {
      
      public static const §%J§:int = 0;
      
      public static const §7!"§:int = 1;
      
      public static const §=V§:int = 2;
      
      public static const §9Y§:int = 3;
       
      
      private const §1§:uint = 40;
      
      private const §=!>§:Number = 0.3;
      
      private const §&!$§:Number = 25;
      
      private const §1,§:Number = 10;
      
      private const §<!<§:Number = 9;
      
      private var §99§:int;
      
      private var §0!&§:int;
      
      private var §25§:Array;
      
      private var §[G§:Array;
      
      private var §do §:Point;
      
      private var §'!0§:int;
      
      public function §%N§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40)
      {
         var _loc9_:§2?§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         super();
         this.§99§ = param1;
         this.§0!&§ = param2;
         var _loc7_:Number = Math.min(§^?§.§7!$§,§^?§.§3!,§);
         var _loc8_:Number = Math.max(§^?§.§7!$§,§^?§.§3!,§);
         param3 /= §^?§.§3!,§;
         param4 /= §^?§.§7!$§;
         this.§'!0§ = param5;
         this.§do § = new Point(param3,param4);
         this.§25§ = [];
         this.§[G§ = [];
         var _loc12_:int = 0;
         while(_loc12_ < param6)
         {
            (_loc9_ = new §2?§(Math.random() * 40 + 10)).x = -2000;
            _loc9_.y = -2000;
            this.addChild(_loc9_);
            this.§25§[_loc12_] = _loc9_;
            _loc12_++;
         }
         this.scaleX = _loc8_;
         this.scaleY = _loc8_;
      }
      
      public function clean() : void
      {
         var _loc1_:§2?§ = null;
         while(this.§25§.length > 0)
         {
            _loc1_ = this.§25§.shift();
            _loc1_.clean();
         }
         while(this.§[G§.length > 0)
         {
            _loc1_ = this.§[G§.shift();
            _loc1_.clean();
         }
         this.§25§ = [];
         this.§[G§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§2?§ = null;
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
         while(this.§25§.length > 0)
         {
            _loc5_ = this.§25§.shift();
            _loc6_ = Math.random() * (this.§&!$§ - this.§1,§) + this.§1,§;
            if(this.§'!0§ == §%J§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§'!0§ == §7!"§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§'!0§ == §=V§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§'!0§ == §9Y§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§1,§ / 2;
               _loc13_ = this.§&!$§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§`!&§ = _loc8_ * _loc6_;
            _loc5_.§@W§ = _loc9_ * _loc6_;
            _loc5_.x = this.§do §.x;
            _loc5_.y = this.§do §.y;
            this.§[G§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§ !3§ = §>!2§.§72§.§-z§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§ !3§.play();
         }
         var _loc2_:int = this.§[G§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§[G§[_loc4_];
            _loc5_.§@W§ += this.§=!>§ * param1;
            if(_loc5_.§@W§ > this.§<!<§)
            {
               _loc5_.§@W§ = this.§<!<§;
            }
            _loc5_.x += _loc5_.§`!&§ * param1;
            _loc5_.y += _loc5_.§@W§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§99§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§0!&§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§[G§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§[G§.splice(_loc4_,1)) is §2?§)
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
