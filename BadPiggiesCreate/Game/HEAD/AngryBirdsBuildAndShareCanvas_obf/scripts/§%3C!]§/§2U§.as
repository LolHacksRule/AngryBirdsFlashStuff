package §<!]§
{
   import §'V§.§7I§;
   import §,P§.§'_§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §2U§ extends Sprite
   {
      
      public static const §%!b§:int = 0;
      
      public static const §%D§:int = 1;
      
      public static const §?E§:int = 2;
      
      public static const §^9§:int = 3;
       
      
      private const §9!V§:uint = 40;
      
      private const GRAVITY:Number = 0.3;
      
      private const §^&§:Number = 25;
      
      private const §0!5§:Number = 10;
      
      private const §"!U§:Number = 9;
      
      private var §=!!§:int;
      
      private var §-!B§:int;
      
      private var §4"&§:Array;
      
      private var §#C§:Array;
      
      private var §5z§:Point;
      
      private var §@!s§:int;
      
      public function §2U§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40)
      {
         var _loc9_:§5!q§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         super();
         this.§=!!§ = param1;
         this.§-!B§ = param2;
         var _loc7_:Number = Math.min(§'_§.§<e§,§'_§.§=!c§);
         var _loc8_:Number = Math.max(§'_§.§<e§,§'_§.§=!c§);
         param3 /= §'_§.§=!c§;
         param4 /= §'_§.§<e§;
         this.§@!s§ = param5;
         this.§5z§ = new Point(param3,param4);
         this.§4"&§ = [];
         this.§#C§ = [];
         var _loc12_:int = 0;
         while(_loc12_ < param6)
         {
            (_loc9_ = new §5!q§(Math.random() * 40 + 10)).x = -2000;
            _loc9_.y = -2000;
            this.addChild(_loc9_);
            this.§4"&§[_loc12_] = _loc9_;
            _loc12_++;
         }
         this.scaleX = _loc8_;
         this.scaleY = _loc8_;
      }
      
      public function clean() : void
      {
         var _loc1_:§5!q§ = null;
         while(this.§4"&§.length > 0)
         {
            _loc1_ = this.§4"&§.shift();
            _loc1_.clean();
         }
         while(this.§#C§.length > 0)
         {
            _loc1_ = this.§#C§.shift();
            _loc1_.clean();
         }
         this.§4"&§ = [];
         this.§#C§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§5!q§ = null;
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
         while(this.§4"&§.length > 0)
         {
            _loc5_ = this.§4"&§.shift();
            _loc6_ = Math.random() * (this.§^&§ - this.§0!5§) + this.§0!5§;
            if(this.§@!s§ == §%!b§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§@!s§ == §%D§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§@!s§ == §?E§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§@!s§ == §^9§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§0!5§ / 2;
               _loc13_ = this.§^&§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§?X§ = _loc8_ * _loc6_;
            _loc5_.§"b§ = _loc9_ * _loc6_;
            _loc5_.x = this.§5z§.x;
            _loc5_.y = this.§5z§.y;
            this.§#C§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§1I§ = §7I§.§[E§.§ ";§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§1I§.play();
         }
         var _loc2_:int = this.§#C§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§#C§[_loc4_];
            _loc5_.§"b§ += this.GRAVITY * param1;
            if(_loc5_.§"b§ > this.§"!U§)
            {
               _loc5_.§"b§ = this.§"!U§;
            }
            _loc5_.x += _loc5_.§?X§ * param1;
            _loc5_.y += _loc5_.§"b§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§=!!§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§-!B§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§#C§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§#C§.splice(_loc4_,1)) is §5!q§)
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
