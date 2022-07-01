package §2I§
{
   import §0Z§.§-!M§;
   import §7"1§.§%W§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §0-§ extends Sprite
   {
      
      public static const §`!c§:int = 0;
      
      public static const §8!Q§:int = 1;
      
      public static const §0k§:int = 2;
      
      public static const §-W§:int = 3;
       
      
      private const §'o§:uint = 40;
      
      private const GRAVITY:Number = 0.3;
      
      private const §[!-§:Number = 25;
      
      private const § >§:Number = 10;
      
      private const §]!T§:Number = 9;
      
      private var §9p§:int;
      
      private var §75§:int;
      
      private var §="$§:Array;
      
      private var §"T§:Array;
      
      private var §<!E§:Point;
      
      private var § !b§:int;
      
      public function §0-§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40)
      {
         var _loc9_:§"B§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         super();
         this.§9p§ = param1;
         this.§75§ = param2;
         var _loc7_:Number = Math.min(§%W§.§`N§,§%W§.§@!N§);
         var _loc8_:Number = Math.max(§%W§.§`N§,§%W§.§@!N§);
         param3 /= §%W§.§@!N§;
         param4 /= §%W§.§`N§;
         this.§ !b§ = param5;
         this.§<!E§ = new Point(param3,param4);
         this.§="$§ = [];
         this.§"T§ = [];
         var _loc12_:int = 0;
         while(_loc12_ < param6)
         {
            (_loc9_ = new §"B§(Math.random() * 40 + 10)).x = -2000;
            _loc9_.y = -2000;
            this.addChild(_loc9_);
            this.§="$§[_loc12_] = _loc9_;
            _loc12_++;
         }
         this.scaleX = _loc8_;
         this.scaleY = _loc8_;
      }
      
      public function clean() : void
      {
         var _loc1_:§"B§ = null;
         while(this.§="$§.length > 0)
         {
            _loc1_ = this.§="$§.shift();
            _loc1_.clean();
         }
         while(this.§"T§.length > 0)
         {
            _loc1_ = this.§"T§.shift();
            _loc1_.clean();
         }
         this.§="$§ = [];
         this.§"T§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§"B§ = null;
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
         while(this.§="$§.length > 0)
         {
            _loc5_ = this.§="$§.shift();
            _loc6_ = Math.random() * (this.§[!-§ - this.§ >§) + this.§ >§;
            if(this.§ !b§ == §`!c§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§ !b§ == §8!Q§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§ !b§ == §0k§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§ !b§ == §-W§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§ >§ / 2;
               _loc13_ = this.§[!-§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§8y§ = _loc8_ * _loc6_;
            _loc5_.§ 1§ = _loc9_ * _loc6_;
            _loc5_.x = this.§<!E§.x;
            _loc5_.y = this.§<!E§.y;
            this.§"T§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§ !h§ = §-!M§.§ "!§.§+d§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§ !h§.play();
         }
         var _loc2_:int = this.§"T§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§"T§[_loc4_];
            _loc5_.§ 1§ += this.GRAVITY * param1;
            if(_loc5_.§ 1§ > this.§]!T§)
            {
               _loc5_.§ 1§ = this.§]!T§;
            }
            _loc5_.x += _loc5_.§8y§ * param1;
            _loc5_.y += _loc5_.§ 1§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§9p§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§75§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§"T§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§"T§.splice(_loc4_,1)) is §"B§)
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
