package §#""§
{
   import §+I§.§9!%§;
   import §0r§.§7!b§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §4!_§ extends Sprite
   {
      
      public static const §9w§:int = 0;
      
      public static const §9!B§:int = 1;
      
      public static const §;!-§:int = 2;
      
      public static const §7!8§:int = 3;
       
      
      private const §=!+§:uint = 40;
      
      private const §"!6§:Number = 0.3;
      
      private const §var §:Number = 25;
      
      private const §#8§:Number = 10;
      
      private const §^l§:Number = 9;
      
      private var §[s§:int;
      
      private var §>[§:int;
      
      private var § !"§:Array;
      
      private var §64§:Array;
      
      private var § !a§:Point;
      
      private var §&r§:int;
      
      public function §4!_§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40)
      {
         var _loc9_:§1"0§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         super();
         this.§[s§ = param1;
         this.§>[§ = param2;
         var _loc7_:Number = Math.min(§9!%§.§,9§,§9!%§.§=!f§);
         var _loc8_:Number = Math.max(§9!%§.§,9§,§9!%§.§=!f§);
         param3 /= §9!%§.§=!f§;
         param4 /= §9!%§.§,9§;
         this.§&r§ = param5;
         this.§ !a§ = new Point(param3,param4);
         this.§ !"§ = [];
         this.§64§ = [];
         var _loc12_:int = 0;
         while(_loc12_ < param6)
         {
            (_loc9_ = new §1"0§(Math.random() * 40 + 10)).x = -2000;
            _loc9_.y = -2000;
            this.addChild(_loc9_);
            this.§ !"§[_loc12_] = _loc9_;
            _loc12_++;
         }
         this.scaleX = _loc8_;
         this.scaleY = _loc8_;
      }
      
      public function clean() : void
      {
         var _loc1_:§1"0§ = null;
         while(this.§ !"§.length > 0)
         {
            _loc1_ = this.§ !"§.shift();
            _loc1_.clean();
         }
         while(this.§64§.length > 0)
         {
            _loc1_ = this.§64§.shift();
            _loc1_.clean();
         }
         this.§ !"§ = [];
         this.§64§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§1"0§ = null;
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
         while(this.§ !"§.length > 0)
         {
            _loc5_ = this.§ !"§.shift();
            _loc6_ = Math.random() * (this.§var § - this.§#8§) + this.§#8§;
            if(this.§&r§ == §9w§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§&r§ == §9!B§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§&r§ == §;!-§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§&r§ == §7!8§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§#8§ / 2;
               _loc13_ = this.§var § / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§"6§ = _loc8_ * _loc6_;
            _loc5_.§!",§ = _loc9_ * _loc6_;
            _loc5_.x = this.§ !a§.x;
            _loc5_.y = this.§ !a§.y;
            this.§64§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§9!z§ = §7!b§.§8c§.§4&§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§9!z§.play();
         }
         var _loc2_:int = this.§64§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§64§[_loc4_];
            _loc5_.§!",§ += this.§"!6§ * param1;
            if(_loc5_.§!",§ > this.§^l§)
            {
               _loc5_.§!",§ = this.§^l§;
            }
            _loc5_.x += _loc5_.§"6§ * param1;
            _loc5_.y += _loc5_.§!",§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§[s§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§>[§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§64§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§64§.splice(_loc4_,1)) is §1"0§)
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
