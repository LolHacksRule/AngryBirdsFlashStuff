package §"?§
{
   import §#]§.§'5§;
   import §@q§.§6;§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §8!3§ extends Sprite
   {
      
      public static const §56§:int = 0;
      
      public static const §#j§:int = 1;
      
      public static const §'z§:int = 2;
      
      public static const §;K§:int = 3;
      
      public static const §=S§:uint = 40;
       
      
      private const §;]§:Number = 0.3;
      
      private const §,>§:Number = 25;
      
      private const §3P§:Number = 10;
      
      private const §%<§:Number = 9;
      
      private var §0!7§:int;
      
      private var §#!A§:int;
      
      private var §,L§:Array;
      
      private var §^7§:Array;
      
      private var § !J§:Point;
      
      private var §=!1§:int;
      
      public function §8!3§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:Boolean = false)
      {
         var _loc10_:§1B§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         super();
         this.§0!7§ = param1;
         this.§#!A§ = param2;
         var _loc8_:Number = Math.min(§'5§.§1G§,§'5§.§@!=§);
         var _loc9_:Number = Math.max(§'5§.§1G§,§'5§.§@!=§);
         param3 /= §'5§.§@!=§;
         param4 /= §'5§.§1G§;
         this.§=!1§ = param5;
         this.§ !J§ = new Point(param3,param4);
         this.§,L§ = [];
         this.§^7§ = [];
         var _loc13_:int = 0;
         while(_loc13_ < param6)
         {
            (_loc10_ = new §1B§(Math.random() * 40 + 10,param7)).x = -2000;
            _loc10_.y = -2000;
            this.addChild(_loc10_);
            this.§,L§[_loc13_] = _loc10_;
            _loc13_++;
         }
         this.scaleX = _loc9_;
         this.scaleY = _loc9_;
      }
      
      public function clean() : void
      {
         var _loc1_:§1B§ = null;
         while(this.§,L§.length > 0)
         {
            _loc1_ = this.§,L§.shift();
            _loc1_.clean();
         }
         while(this.§^7§.length > 0)
         {
            _loc1_ = this.§^7§.shift();
            _loc1_.clean();
         }
         this.§,L§ = [];
         this.§^7§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§1B§ = null;
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
         while(this.§,L§.length > 0)
         {
            _loc5_ = this.§,L§.shift();
            _loc6_ = Math.random() * (this.§,>§ - this.§3P§) + this.§3P§;
            if(this.§=!1§ == §56§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§=!1§ == §#j§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§=!1§ == §'z§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§=!1§ == §;K§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§3P§ / 2;
               _loc13_ = this.§,>§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§]!I§ = _loc8_ * _loc6_;
            _loc5_.§3d§ = _loc9_ * _loc6_;
            _loc5_.x = this.§ !J§.x;
            _loc5_.y = this.§ !J§.y;
            this.§^7§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§=F§ = §6;§.§&e§.§42§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§=F§.play();
         }
         var _loc2_:int = this.§^7§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§^7§[_loc4_];
            _loc5_.§3d§ += this.§;]§ * param1;
            if(_loc5_.§3d§ > this.§%<§)
            {
               _loc5_.§3d§ = this.§%<§;
            }
            _loc5_.x += _loc5_.§]!I§ * param1;
            _loc5_.y += _loc5_.§3d§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§0!7§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§#!A§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§^7§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§^7§.splice(_loc4_,1)) is §1B§)
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
