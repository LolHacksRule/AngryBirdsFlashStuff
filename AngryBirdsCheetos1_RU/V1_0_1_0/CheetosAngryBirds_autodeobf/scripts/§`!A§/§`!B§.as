package §`!A§
{
   import §"!S§.§"_§;
   import §4x§.§"!X§;
   import §4x§.§?R§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §`!B§ extends Sprite
   {
      
      public static const §]!#§:int = 0;
      
      public static const §[!R§:int = 1;
      
      public static const §='§:int = 2;
       
      
      private const §@4§:uint = 40;
      
      private const §2!"§:Number = 0.3;
      
      private const §+b§:Number = 25;
      
      private const §-!4§:Number = 10;
      
      private const §'!H§:Number = 9;
      
      private var § Y§:int;
      
      private var §@!4§:int;
      
      private var §@y§:Array;
      
      private var §6o§:Array;
      
      private var §!!%§:Point;
      
      private var §4,§:int;
      
      public function §`!B§(param1:int, param2:int, param3:Number, param4:Number, param5:int)
      {
         var _loc6_:§'D§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super();
         this.§ Y§ = param1 * §"_§.§5[§;
         this.§@!4§ = param2 * §"_§.§5o§;
         this.§4,§ = param5;
         this.§!!%§ = new Point(param3,param4);
         this.§@y§ = [];
         this.§6o§ = [];
         var _loc9_:int = 0;
         while(_loc9_ < this.§@4§)
         {
            (_loc6_ = new §'D§(Math.random() * 40 + 10)).x = -2000;
            _loc6_.y = -2000;
            this.addChild(_loc6_);
            this.§@y§[_loc9_] = _loc6_;
            _loc9_++;
         }
      }
      
      public function clean() : void
      {
         var _loc1_:§'D§ = null;
         while(this.§@y§.length > 0)
         {
            _loc1_ = this.§@y§.shift();
            _loc1_.clean();
         }
         while(this.§6o§.length > 0)
         {
            _loc1_ = this.§6o§.shift();
            _loc1_.clean();
         }
         this.§@y§ = [];
         this.§6o§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§'D§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§?R§ = null;
         var _loc13_:Object = null;
         param1 /= 20;
         while(this.§@y§.length > 0)
         {
            _loc5_ = this.§@y§.shift();
            _loc6_ = Math.random() * (this.§+b§ - this.§-!4§) + this.§-!4§;
            if(this.§4,§ == §]!#§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§4,§ == §[!R§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§4,§ == §='§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            _loc5_.§+C§ = _loc8_ * _loc6_;
            _loc5_.§'@§ = _loc9_ * _loc6_;
            _loc5_.x = this.§!!%§.x;
            _loc5_.y = this.§!!%§.y;
            this.§6o§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            (_loc12_ = §"!X§.§0E§.§5`§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5)).play();
         }
         var _loc2_:int = this.§6o§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§6o§[_loc4_];
            _loc5_.§'@§ += this.§2!"§ * param1;
            if(_loc5_.§'@§ > this.§'!H§)
            {
               _loc5_.§'@§ = this.§'!H§;
            }
            _loc5_.x += _loc5_.§+C§ * param1;
            _loc5_.y += _loc5_.§'@§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§ Y§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§@!4§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§6o§.length > 0 && _loc3_)
            {
               if((_loc13_ = this.§6o§.splice(_loc4_,1)) is §'D§)
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
