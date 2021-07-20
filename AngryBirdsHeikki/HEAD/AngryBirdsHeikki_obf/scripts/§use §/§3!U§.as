package §use §
{
   import §1!d§.§9m§;
   import §8O§.§&#§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §3!U§ extends Sprite
   {
      
      public static const §5!#§:int = 0;
      
      public static const §?!'§:int = 1;
      
      public static const §5D§:int = 2;
      
      public static const §=?§:int = 3;
       
      
      private const §;!M§:uint = 40;
      
      private const §8B§:Number = 0.3;
      
      private const §#"§:Number = 25;
      
      private const §3!S§:Number = 10;
      
      private const §@e§:Number = 9;
      
      private var §<2§:int;
      
      private var §#!]§:int;
      
      private var §@5§:Array;
      
      private var §"!T§:Array;
      
      private var §5f§:Point;
      
      private var §9A§:int;
      
      private var § F§:Number;
      
      public function §3!U§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:Number = 0)
      {
         var _loc8_:§0!'§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         super();
         this.scrollRect = new Rectangle(0,0,param1,param2);
         this.§<2§ = param1 * §&#§.§>!L§;
         this.§#!]§ = param2 * §&#§.§>!§;
         this.§9A§ = param5;
         this.§5f§ = new Point(param3,param4);
         this.§@5§ = [];
         this.§"!T§ = [];
         var _loc11_:int = 0;
         while(_loc11_ < param6)
         {
            (_loc8_ = new §0!'§(Math.random() * 40 + 10)).x = -2000;
            _loc8_.y = -2000;
            this.addChild(_loc8_);
            this.§@5§[_loc11_] = _loc8_;
            _loc11_++;
         }
         this.§ F§ = param7;
      }
      
      public function clean() : void
      {
         var _loc1_:§0!'§ = null;
         while(this.§@5§.length > 0)
         {
            _loc1_ = this.§@5§.shift();
            _loc1_.clean();
         }
         while(this.§"!T§.length > 0)
         {
            _loc1_ = this.§"!T§.shift();
            _loc1_.clean();
         }
         this.§@5§ = [];
         this.§"!T§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§0!'§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Object = null;
         this.§ F§ -= param1;
         if(this.§ F§ > 0)
         {
            return;
         }
         param1 /= 20;
         while(this.§@5§.length > 0)
         {
            _loc5_ = this.§@5§.shift();
            _loc6_ = Math.random() * (this.§#"§ - this.§3!S§) + this.§3!S§;
            if(this.§9A§ == §5!#§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§9A§ == §?!'§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§9A§ == §5D§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§9A§ == §=?§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§3!S§ / 2;
               _loc13_ = this.§#"§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§&%§ = _loc8_ * _loc6_;
            _loc5_.§@!H§ = _loc9_ * _loc6_;
            _loc5_.x = this.§5f§.x;
            _loc5_.y = this.§5f§.y;
            this.§"!T§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§;%§ = §9m§.§?! §.§]C§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§;%§.play();
         }
         var _loc2_:int = this.§"!T§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§"!T§[_loc4_];
            _loc5_.§@!H§ += this.§8B§ * param1;
            if(_loc5_.§@!H§ > this.§@e§)
            {
               _loc5_.§@!H§ = this.§@e§;
            }
            _loc5_.x += _loc5_.§&%§ * param1;
            _loc5_.y += _loc5_.§@!H§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§<2§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§#!]§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§"!T§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§"!T§.splice(_loc4_,1)) is §0!'§)
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
