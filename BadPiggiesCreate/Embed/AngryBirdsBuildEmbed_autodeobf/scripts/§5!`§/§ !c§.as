package §5!`§
{
   import §9!n§.§@!T§;
   import §?!-§.§'!V§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class § !c§ extends Sprite
   {
      
      public static const §&$§:int = 0;
      
      public static const §#4§:int = 1;
      
      public static const §%p§:int = 2;
      
      public static const §2V§:int = 3;
       
      
      private const §'!8§:uint = 40;
      
      private const §@8§:Number = 0.3;
      
      private const §%!v§:Number = 25;
      
      private const §'!n§:Number = 10;
      
      private const §^P§:Number = 9;
      
      private var §@4§:int;
      
      private var § 5§:int;
      
      private var §=m§:Array;
      
      private var §&9§:Array;
      
      private var §0!b§:Point;
      
      private var §2[§:int;
      
      public function § !c§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40)
      {
         var _loc9_:§#!S§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         super();
         this.§@4§ = param1;
         this.§ 5§ = param2;
         var _loc7_:Number = Math.min(§'!V§.§'A§,§'!V§.§9r§);
         var _loc8_:Number = Math.max(§'!V§.§'A§,§'!V§.§9r§);
         param3 /= §'!V§.§9r§;
         param4 /= §'!V§.§'A§;
         this.§2[§ = param5;
         this.§0!b§ = new Point(param3,param4);
         this.§=m§ = [];
         this.§&9§ = [];
         var _loc12_:int = 0;
         while(_loc12_ < param6)
         {
            (_loc9_ = new §#!S§(Math.random() * 40 + 10)).x = -2000;
            _loc9_.y = -2000;
            this.addChild(_loc9_);
            this.§=m§[_loc12_] = _loc9_;
            _loc12_++;
         }
         this.scaleX = _loc8_;
         this.scaleY = _loc8_;
      }
      
      public function clean() : void
      {
         var _loc1_:§#!S§ = null;
         while(this.§=m§.length > 0)
         {
            _loc1_ = this.§=m§.shift();
            _loc1_.clean();
         }
         while(this.§&9§.length > 0)
         {
            _loc1_ = this.§&9§.shift();
            _loc1_.clean();
         }
         this.§=m§ = [];
         this.§&9§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§#!S§ = null;
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
         while(this.§=m§.length > 0)
         {
            _loc5_ = this.§=m§.shift();
            _loc6_ = Math.random() * (this.§%!v§ - this.§'!n§) + this.§'!n§;
            if(this.§2[§ == §&$§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§2[§ == §#4§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§2[§ == §%p§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§2[§ == §2V§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§'!n§ / 2;
               _loc13_ = this.§%!v§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§!!P§ = _loc8_ * _loc6_;
            _loc5_.§9<§ = _loc9_ * _loc6_;
            _loc5_.x = this.§0!b§.x;
            _loc5_.y = this.§0!b§.y;
            this.§&9§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§=y§ = §@!T§.§`!t§.§8!"§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§=y§.play();
         }
         var _loc2_:int = this.§&9§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§&9§[_loc4_];
            _loc5_.§9<§ += this.§@8§ * param1;
            if(_loc5_.§9<§ > this.§^P§)
            {
               _loc5_.§9<§ = this.§^P§;
            }
            _loc5_.x += _loc5_.§!!P§ * param1;
            _loc5_.y += _loc5_.§9<§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§@4§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§ 5§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§&9§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§&9§.splice(_loc4_,1)) is §#!S§)
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
