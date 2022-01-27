package §#@§
{
   import §=z§.§0!E§;
   import §@!M§.§5!&§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §9Y§ extends Sprite
   {
      
      public static const §6[§:int = 0;
      
      public static const §>?§:int = 1;
      
      public static const §@!=§:int = 2;
      
      public static const §^C§:int = 3;
       
      
      private const §%!K§:uint = 40;
      
      private const §2!N§:Number = 0.3;
      
      private const §&!K§:Number = 25;
      
      private const §-t§:Number = 10;
      
      private const §#!0§:Number = 9;
      
      private var §'!G§:int;
      
      private var §while§:int;
      
      private var §@F§:Array;
      
      private var §^!I§:Array;
      
      private var §%!L§:Point;
      
      private var §2^§:int;
      
      public function §9Y§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40)
      {
         var _loc9_:§'z§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         super();
         this.§'!G§ = param1;
         this.§while§ = param2;
         var _loc7_:Number = Math.min(§0!E§.§2!A§,§0!E§.§@!,§);
         var _loc8_:Number = Math.max(§0!E§.§2!A§,§0!E§.§@!,§);
         param3 /= §0!E§.§@!,§;
         param4 /= §0!E§.§2!A§;
         this.§2^§ = param5;
         this.§%!L§ = new Point(param3,param4);
         this.§@F§ = [];
         this.§^!I§ = [];
         var _loc12_:int = 0;
         while(_loc12_ < param6)
         {
            (_loc9_ = new §'z§(Math.random() * 40 + 10)).x = -2000;
            _loc9_.y = -2000;
            this.addChild(_loc9_);
            this.§@F§[_loc12_] = _loc9_;
            _loc12_++;
         }
         this.scaleX = _loc8_;
         this.scaleY = _loc8_;
      }
      
      public function clean() : void
      {
         var _loc1_:§'z§ = null;
         while(this.§@F§.length > 0)
         {
            _loc1_ = this.§@F§.shift();
            _loc1_.clean();
         }
         while(this.§^!I§.length > 0)
         {
            _loc1_ = this.§^!I§.shift();
            _loc1_.clean();
         }
         this.§@F§ = [];
         this.§^!I§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§'z§ = null;
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
         while(this.§@F§.length > 0)
         {
            _loc5_ = this.§@F§.shift();
            _loc6_ = Math.random() * (this.§&!K§ - this.§-t§) + this.§-t§;
            if(this.§2^§ == §6[§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§2^§ == §>?§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§2^§ == §@!=§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§2^§ == §^C§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§-t§ / 2;
               _loc13_ = this.§&!K§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§4R§ = _loc8_ * _loc6_;
            _loc5_.§%!-§ = _loc9_ * _loc6_;
            _loc5_.x = this.§%!L§.x;
            _loc5_.y = this.§%!L§.y;
            this.§^!I§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§]G§ = §5!&§.§@!&§.§9!4§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§]G§.play();
         }
         var _loc2_:int = this.§^!I§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§^!I§[_loc4_];
            _loc5_.§%!-§ += this.§2!N§ * param1;
            if(_loc5_.§%!-§ > this.§#!0§)
            {
               _loc5_.§%!-§ = this.§#!0§;
            }
            _loc5_.x += _loc5_.§4R§ * param1;
            _loc5_.y += _loc5_.§%!-§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§'!G§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§while§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§^!I§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§^!I§.splice(_loc4_,1)) is §'z§)
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
