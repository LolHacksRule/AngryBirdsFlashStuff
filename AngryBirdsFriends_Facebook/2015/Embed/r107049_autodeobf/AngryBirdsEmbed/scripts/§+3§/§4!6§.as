package §+3§
{
   import §%q§.§'!A§;
   import §6h§.§[!4§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §4!6§ extends Sprite
   {
      
      public static const §3a§:int = 0;
      
      public static const §`!%§:int = 1;
      
      public static const §]`§:int = 2;
      
      public static const §+!$§:int = 3;
      
      public static const §2!G§:uint = 40;
       
      
      private const §@!&§:Number = 0.3;
      
      private const §0!"§:Number = 25;
      
      private const §7!A§:Number = 10;
      
      private const §[9§:Number = 9;
      
      private var §%[§:int;
      
      private var §`A§:int;
      
      private var §#w§:Array;
      
      private var §<C§:Array;
      
      private var §0[§:Point;
      
      private var §1c§:int;
      
      public function §4!6§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:Boolean = false)
      {
         var _loc10_:§=0§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         super();
         this.§%[§ = param1;
         this.§`A§ = param2;
         var _loc8_:Number = Math.min(§[!4§.§<^§,§[!4§.§4p§);
         var _loc9_:Number = Math.max(§[!4§.§<^§,§[!4§.§4p§);
         param3 /= §[!4§.§4p§;
         param4 /= §[!4§.§<^§;
         this.§1c§ = param5;
         this.§0[§ = new Point(param3,param4);
         this.§#w§ = [];
         this.§<C§ = [];
         var _loc13_:int = 0;
         while(_loc13_ < param6)
         {
            (_loc10_ = new §=0§(Math.random() * 40 + 10,param7)).x = -2000;
            _loc10_.y = -2000;
            this.addChild(_loc10_);
            this.§#w§[_loc13_] = _loc10_;
            _loc13_++;
         }
         this.scaleX = _loc9_;
         this.scaleY = _loc9_;
      }
      
      public function clean() : void
      {
         var _loc1_:§=0§ = null;
         while(this.§#w§.length > 0)
         {
            _loc1_ = this.§#w§.shift();
            _loc1_.clean();
         }
         while(this.§<C§.length > 0)
         {
            _loc1_ = this.§<C§.shift();
            _loc1_.clean();
         }
         this.§#w§ = [];
         this.§<C§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§=0§ = null;
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
         while(this.§#w§.length > 0)
         {
            _loc5_ = this.§#w§.shift();
            _loc6_ = Math.random() * (this.§0!"§ - this.§7!A§) + this.§7!A§;
            if(this.§1c§ == §3a§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§1c§ == §`!%§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§1c§ == §]`§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§1c§ == §+!$§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§7!A§ / 2;
               _loc13_ = this.§0!"§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§%C§ = _loc8_ * _loc6_;
            _loc5_.§69§ = _loc9_ * _loc6_;
            _loc5_.x = this.§0[§.x;
            _loc5_.y = this.§0[§.y;
            this.§<C§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§"_§ = §'!A§.§5+§.§;h§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§"_§.play();
         }
         var _loc2_:int = this.§<C§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§<C§[_loc4_];
            _loc5_.§69§ += this.§@!&§ * param1;
            if(_loc5_.§69§ > this.§[9§)
            {
               _loc5_.§69§ = this.§[9§;
            }
            _loc5_.x += _loc5_.§%C§ * param1;
            _loc5_.y += _loc5_.§69§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§%[§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§`A§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§<C§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§<C§.splice(_loc4_,1)) is §=0§)
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
