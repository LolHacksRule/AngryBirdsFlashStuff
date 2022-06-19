package §;!Q§
{
   import §#!V§.§&!!§;
   import §#!V§.§';§;
   import §?m§.§7?§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §^!S§ extends Sprite
   {
      
      public static const §?C§:int = 0;
      
      public static const §[!§:int = 1;
      
      public static const §"-§:int = 2;
       
      
      private const §5!A§:uint = 40;
      
      private const §8>§:Number = 0.3;
      
      private const §"!G§:Number = 25;
      
      private const §5Y§:Number = 10;
      
      private const §]!V§:Number = 9;
      
      private var §#W§:int;
      
      private var §6!-§:int;
      
      private var §>z§:Array;
      
      private var §?!S§:Array;
      
      private var §2!"§:Point;
      
      private var §-Q§:int;
      
      public function §^!S§(param1:int, param2:int, param3:Number, param4:Number, param5:int)
      {
         var _loc6_:§0`§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super();
         this.§#W§ = param1 * §7?§.§&Z§;
         this.§6!-§ = param2 * §7?§.§1H§;
         this.§-Q§ = param5;
         this.§2!"§ = new Point(param3,param4);
         this.§>z§ = [];
         this.§?!S§ = [];
         var _loc9_:int = 0;
         while(_loc9_ < this.§5!A§)
         {
            (_loc6_ = new §0`§(Math.random() * 40 + 10)).x = -2000;
            _loc6_.y = -2000;
            this.addChild(_loc6_);
            this.§>z§[_loc9_] = _loc6_;
            _loc9_++;
         }
      }
      
      public function clean() : void
      {
         var _loc1_:§0`§ = null;
         while(this.§>z§.length > 0)
         {
            _loc1_ = this.§>z§.shift();
            _loc1_.clean();
         }
         while(this.§?!S§.length > 0)
         {
            _loc1_ = this.§?!S§.shift();
            _loc1_.clean();
         }
         this.§>z§ = [];
         this.§?!S§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§0`§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§&!!§ = null;
         var _loc13_:Object = null;
         param1 /= 20;
         while(this.§>z§.length > 0)
         {
            _loc5_ = this.§>z§.shift();
            _loc6_ = Math.random() * (this.§"!G§ - this.§5Y§) + this.§5Y§;
            if(this.§-Q§ == §?C§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§-Q§ == §[!§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§-Q§ == §"-§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            _loc5_.§0D§ = _loc8_ * _loc6_;
            _loc5_.§^@§ = _loc9_ * _loc6_;
            _loc5_.x = this.§2!"§.x;
            _loc5_.y = this.§2!"§.y;
            this.§?!S§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            (_loc12_ = §';§.§%!O§.§set §(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5)).play();
         }
         var _loc2_:int = this.§?!S§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§?!S§[_loc4_];
            _loc5_.§^@§ += this.§8>§ * param1;
            if(_loc5_.§^@§ > this.§]!V§)
            {
               _loc5_.§^@§ = this.§]!V§;
            }
            _loc5_.x += _loc5_.§0D§ * param1;
            _loc5_.y += _loc5_.§^@§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§#W§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§6!-§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§?!S§.length > 0 && _loc3_)
            {
               if((_loc13_ = this.§?!S§.splice(_loc4_,1)) is §0`§)
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
