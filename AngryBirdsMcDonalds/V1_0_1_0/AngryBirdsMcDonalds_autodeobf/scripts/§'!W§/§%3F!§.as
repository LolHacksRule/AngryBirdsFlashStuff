package §'!W§
{
   import §2o§.§<H§;
   import §3l§.§9m§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §?!§ extends Sprite
   {
      
      public static const §-M§:int = 0;
      
      public static const §[4§:int = 1;
      
      public static const § $§:int = 2;
      
      public static const §<U§:int = 3;
       
      
      private const §?_§:uint = 40;
      
      private const §#!m§:Number = 0.3;
      
      private const §]%§:Number = 25;
      
      private const §!y§:Number = 10;
      
      private const §6!&§:Number = 9;
      
      private var §5!Y§:int;
      
      private var §9@§:int;
      
      private var §?,§:Array;
      
      private var §%]§:Array;
      
      private var §-h§:Point;
      
      private var §[!j§:int;
      
      private var §8!;§:Number;
      
      public function §?!§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:Number = 0)
      {
         var _loc8_:§]!c§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         super();
         this.scrollRect = new Rectangle(0,0,param1,param2);
         this.§5!Y§ = param1 * §<H§.§6C§;
         this.§9@§ = param2 * §<H§.§^d§;
         this.§[!j§ = param5;
         this.§-h§ = new Point(param3,param4);
         this.§?,§ = [];
         this.§%]§ = [];
         var _loc11_:int = 0;
         while(_loc11_ < param6)
         {
            (_loc8_ = new §]!c§(Math.random() * 40 + 10)).x = -2000;
            _loc8_.y = -2000;
            this.addChild(_loc8_);
            this.§?,§[_loc11_] = _loc8_;
            _loc11_++;
         }
         this.§8!;§ = param7;
      }
      
      public function clean() : void
      {
         var _loc1_:§]!c§ = null;
         while(this.§?,§.length > 0)
         {
            _loc1_ = this.§?,§.shift();
            _loc1_.clean();
         }
         while(this.§%]§.length > 0)
         {
            _loc1_ = this.§%]§.shift();
            _loc1_.clean();
         }
         this.§?,§ = [];
         this.§%]§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§]!c§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Object = null;
         this.§8!;§ -= param1;
         if(this.§8!;§ > 0)
         {
            return;
         }
         param1 /= 20;
         while(this.§?,§.length > 0)
         {
            _loc5_ = this.§?,§.shift();
            _loc6_ = Math.random() * (this.§]%§ - this.§!y§) + this.§!y§;
            if(this.§[!j§ == §-M§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§[!j§ == §[4§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§[!j§ == § $§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§[!j§ == §<U§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§!y§ / 2;
               _loc13_ = this.§]%§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§-E§ = _loc8_ * _loc6_;
            _loc5_.§"!b§ = _loc9_ * _loc6_;
            _loc5_.x = this.§-h§.x;
            _loc5_.y = this.§-h§.y;
            this.§%]§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§#§ = §9m§.§>E§.§"0§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§#§.play();
         }
         var _loc2_:int = this.§%]§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§%]§[_loc4_];
            _loc5_.§"!b§ += this.§#!m§ * param1;
            if(_loc5_.§"!b§ > this.§6!&§)
            {
               _loc5_.§"!b§ = this.§6!&§;
            }
            _loc5_.x += _loc5_.§-E§ * param1;
            _loc5_.y += _loc5_.§"!b§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§5!Y§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§9@§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§%]§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§%]§.splice(_loc4_,1)) is §]!c§)
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
