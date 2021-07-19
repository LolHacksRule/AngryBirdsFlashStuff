package §3!,§
{
   import §<!0§.§%g§;
   import §<!0§.§7g§;
   import §`h§.§@!Z§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §#f§ extends Sprite
   {
      
      public static const § !P§:int = 0;
      
      public static const §0!3§:int = 1;
      
      public static const §0!H§:int = 2;
       
      
      private const §3!$§:uint = 40;
      
      private const §?`§:Number = 0.3;
      
      private const §0!"§:Number = 25;
      
      private const §`!0§:Number = 10;
      
      private const §7H§:Number = 9;
      
      private var §%!U§:int;
      
      private var §&w§:int;
      
      private var §2!]§:Array;
      
      private var §6!U§:Array;
      
      private var §0![§:Point;
      
      private var §'T§:int;
      
      public function §#f§(param1:int, param2:int, param3:Number, param4:Number, param5:int)
      {
         var _loc6_:§7U§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super();
         this.§%!U§ = param1 * §@!Z§.§<X§;
         this.§&w§ = param2 * §@!Z§.§5I§;
         this.§'T§ = param5;
         this.§0![§ = new Point(param3,param4);
         this.§2!]§ = [];
         this.§6!U§ = [];
         var _loc9_:int = 0;
         while(_loc9_ < this.§3!$§)
         {
            (_loc6_ = new §7U§(Math.random() * 40 + 10)).x = -2000;
            _loc6_.y = -2000;
            this.addChild(_loc6_);
            this.§2!]§[_loc9_] = _loc6_;
            _loc9_++;
         }
      }
      
      public function clean() : void
      {
         var _loc1_:§7U§ = null;
         while(this.§2!]§.length > 0)
         {
            _loc1_ = this.§2!]§.shift();
            _loc1_.clean();
         }
         while(this.§6!U§.length > 0)
         {
            _loc1_ = this.§6!U§.shift();
            _loc1_.clean();
         }
         this.§2!]§ = [];
         this.§6!U§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§7U§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§7g§ = null;
         var _loc13_:Object = null;
         param1 /= 20;
         while(this.§2!]§.length > 0)
         {
            _loc5_ = this.§2!]§.shift();
            _loc6_ = Math.random() * (this.§0!"§ - this.§`!0§) + this.§`!0§;
            if(this.§'T§ == § !P§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§'T§ == §0!3§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§'T§ == §0!H§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            _loc5_.§2!G§ = _loc8_ * _loc6_;
            _loc5_.§!5§ = _loc9_ * _loc6_;
            _loc5_.x = this.§0![§.x;
            _loc5_.y = this.§0![§.y;
            this.§6!U§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            (_loc12_ = §%g§.§'I§.§5!0§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5)).play();
         }
         var _loc2_:int = this.§6!U§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§6!U§[_loc4_];
            _loc5_.§!5§ += this.§?`§ * param1;
            if(_loc5_.§!5§ > this.§7H§)
            {
               _loc5_.§!5§ = this.§7H§;
            }
            _loc5_.x += _loc5_.§2!G§ * param1;
            _loc5_.y += _loc5_.§!5§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§%!U§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§&w§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§6!U§.length > 0 && _loc3_)
            {
               if((_loc13_ = this.§6!U§.splice(_loc4_,1)) is §7U§)
               {
                  _loc13_.clean();
               }
               _loc5_.x = -2000;
               _loc5_.y = -2000;
            }
            _loc4_--;
         }
      }
   }
}
