package §06§
{
   import § !x§.§5+§;
   import §5i§.§4!]§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §#_§ extends Sprite
   {
      
      public static const §switch§:int = 0;
      
      public static const §6!?§:int = 1;
      
      public static const §2`§:int = 2;
      
      public static const §'!+§:int = 3;
       
      
      private const § j§:uint = 40;
      
      private const §6?§:Number = 0.3;
      
      private const §3;§:Number = 25;
      
      private const §+!-§:Number = 10;
      
      private const §[!o§:Number = 9;
      
      private var §+2§:int;
      
      private var §'c§:int;
      
      private var §^f§:Array;
      
      private var §]6§:Array;
      
      private var §4@§:Point;
      
      private var §+!%§:int;
      
      public function §#_§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40)
      {
         var _loc9_:§8!S§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         super();
         this.§+2§ = param1;
         this.§'c§ = param2;
         var _loc7_:Number = Math.min(§4!]§.§%!'§,§4!]§.§4?§);
         var _loc8_:Number = Math.max(§4!]§.§%!'§,§4!]§.§4?§);
         param3 /= §4!]§.§4?§;
         param4 /= §4!]§.§%!'§;
         this.§+!%§ = param5;
         this.§4@§ = new Point(param3,param4);
         this.§^f§ = [];
         this.§]6§ = [];
         var _loc12_:int = 0;
         while(_loc12_ < param6)
         {
            (_loc9_ = new §8!S§(Math.random() * 40 + 10)).x = -2000;
            _loc9_.y = -2000;
            this.addChild(_loc9_);
            this.§^f§[_loc12_] = _loc9_;
            _loc12_++;
         }
         this.scaleX = _loc8_;
         this.scaleY = _loc8_;
      }
      
      public function clean() : void
      {
         var _loc1_:§8!S§ = null;
         while(this.§^f§.length > 0)
         {
            _loc1_ = this.§^f§.shift();
            _loc1_.clean();
         }
         while(this.§]6§.length > 0)
         {
            _loc1_ = this.§]6§.shift();
            _loc1_.clean();
         }
         this.§^f§ = [];
         this.§]6§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§8!S§ = null;
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
         while(this.§^f§.length > 0)
         {
            _loc5_ = this.§^f§.shift();
            _loc6_ = Math.random() * (this.§3;§ - this.§+!-§) + this.§+!-§;
            if(this.§+!%§ == §switch§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§+!%§ == §6!?§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§+!%§ == §2`§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§+!%§ == §'!+§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§+!-§ / 2;
               _loc13_ = this.§3;§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§ c§ = _loc8_ * _loc6_;
            _loc5_.§`a§ = _loc9_ * _loc6_;
            _loc5_.x = this.§4@§.x;
            _loc5_.y = this.§4@§.y;
            this.§]6§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§var§ = §5+§.§^Z§.§=!a§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§var§.play();
         }
         var _loc2_:int = this.§]6§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§]6§[_loc4_];
            _loc5_.§`a§ += this.§6?§ * param1;
            if(_loc5_.§`a§ > this.§[!o§)
            {
               _loc5_.§`a§ = this.§[!o§;
            }
            _loc5_.x += _loc5_.§ c§ * param1;
            _loc5_.y += _loc5_.§`a§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§+2§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§'c§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§]6§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§]6§.splice(_loc4_,1)) is §8!S§)
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
