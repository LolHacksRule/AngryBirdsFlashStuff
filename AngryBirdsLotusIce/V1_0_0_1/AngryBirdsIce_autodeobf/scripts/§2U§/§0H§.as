package §2U§
{
   import §+N§.§!j§;
   import §;j§.§8[§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §0H§ extends Sprite
   {
      
      public static const §+-§:int = 0;
      
      public static const §@4§:int = 1;
      
      public static const §7!$§:int = 2;
      
      public static const §>U§:int = 3;
       
      
      private const §<L§:uint = 40;
      
      private const §,!5§:Number = 0.3;
      
      private const §"!-§:Number = 25;
      
      private const §@K§:Number = 10;
      
      private const §[!0§:Number = 9;
      
      private var §3D§:int;
      
      private var §#O§:int;
      
      private var §!z§:Array;
      
      private var §7Z§:Array;
      
      private var §^a§:Point;
      
      private var §%8§:int;
      
      public function §0H§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40)
      {
         var _loc9_:§9!$§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         super();
         this.§3D§ = param1;
         this.§#O§ = param2;
         var _loc7_:Number = Math.min(§8[§.§[!'§,§8[§.§=h§);
         var _loc8_:Number = Math.max(§8[§.§[!'§,§8[§.§=h§);
         param3 /= §8[§.§=h§;
         param4 /= §8[§.§[!'§;
         this.§%8§ = param5;
         this.§^a§ = new Point(param3,param4);
         this.§!z§ = [];
         this.§7Z§ = [];
         var _loc12_:int = 0;
         while(_loc12_ < param6)
         {
            (_loc9_ = new §9!$§(Math.random() * 40 + 10)).x = -2000;
            _loc9_.y = -2000;
            this.addChild(_loc9_);
            this.§!z§[_loc12_] = _loc9_;
            _loc12_++;
         }
         this.scaleX = _loc8_;
         this.scaleY = _loc8_;
      }
      
      public function clean() : void
      {
         var _loc1_:§9!$§ = null;
         while(this.§!z§.length > 0)
         {
            _loc1_ = this.§!z§.shift();
            _loc1_.clean();
         }
         while(this.§7Z§.length > 0)
         {
            _loc1_ = this.§7Z§.shift();
            _loc1_.clean();
         }
         this.§!z§ = [];
         this.§7Z§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§9!$§ = null;
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
         while(this.§!z§.length > 0)
         {
            _loc5_ = this.§!z§.shift();
            _loc6_ = Math.random() * (this.§"!-§ - this.§@K§) + this.§@K§;
            if(this.§%8§ == §+-§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§%8§ == §@4§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§%8§ == §7!$§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§%8§ == §>U§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§@K§ / 2;
               _loc13_ = this.§"!-§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§;!9§ = _loc8_ * _loc6_;
            _loc5_.§case§ = _loc9_ * _loc6_;
            _loc5_.x = this.§^a§.x;
            _loc5_.y = this.§^a§.y;
            this.§7Z§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§1g§ = §!j§.§5!B§.§+I§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§1g§.play();
         }
         var _loc2_:int = this.§7Z§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§7Z§[_loc4_];
            _loc5_.§case§ += this.§,!5§ * param1;
            if(_loc5_.§case§ > this.§[!0§)
            {
               _loc5_.§case§ = this.§[!0§;
            }
            _loc5_.x += _loc5_.§;!9§ * param1;
            _loc5_.y += _loc5_.§case§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§3D§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§#O§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§7Z§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§7Z§.splice(_loc4_,1)) is §9!$§)
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
