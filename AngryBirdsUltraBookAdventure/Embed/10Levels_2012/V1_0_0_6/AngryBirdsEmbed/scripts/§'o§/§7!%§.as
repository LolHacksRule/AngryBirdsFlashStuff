package §'o§
{
   import §+!?§.§"h§;
   import §?!+§.§,!G§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §7!%§ extends Sprite
   {
      
      public static const §`!A§:int = 0;
      
      public static const § !7§:int = 1;
      
      public static const §"B§:int = 2;
      
      public static const §^n§:int = 3;
       
      
      private const §^0§:uint = 40;
      
      private const §6!!§:Number = 0.3;
      
      private const §<!<§:Number = 25;
      
      private const §+b§:Number = 10;
      
      private const §5T§:Number = 9;
      
      private var §@X§:int;
      
      private var §3Z§:int;
      
      private var § 0§:Array;
      
      private var §%&§:Array;
      
      private var §93§:Point;
      
      private var §!^§:int;
      
      public function §7!%§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40)
      {
         var _loc9_:§<N§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         super();
         this.§@X§ = param1;
         this.§3Z§ = param2;
         var _loc7_:Number = Math.min(§"h§.§for§,§"h§.§'!I§);
         var _loc8_:Number = Math.max(§"h§.§for§,§"h§.§'!I§);
         param3 /= §"h§.§'!I§;
         param4 /= §"h§.§for§;
         this.§!^§ = param5;
         this.§93§ = new Point(param3,param4);
         this.§ 0§ = [];
         this.§%&§ = [];
         var _loc12_:int = 0;
         while(_loc12_ < param6)
         {
            (_loc9_ = new §<N§(Math.random() * 40 + 10)).x = -2000;
            _loc9_.y = -2000;
            this.addChild(_loc9_);
            this.§ 0§[_loc12_] = _loc9_;
            _loc12_++;
         }
         this.scaleX = _loc8_;
         this.scaleY = _loc8_;
      }
      
      public function clean() : void
      {
         var _loc1_:§<N§ = null;
         while(this.§ 0§.length > 0)
         {
            _loc1_ = this.§ 0§.shift();
            _loc1_.clean();
         }
         while(this.§%&§.length > 0)
         {
            _loc1_ = this.§%&§.shift();
            _loc1_.clean();
         }
         this.§ 0§ = [];
         this.§%&§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§<N§ = null;
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
         while(this.§ 0§.length > 0)
         {
            _loc5_ = this.§ 0§.shift();
            _loc6_ = Math.random() * (this.§<!<§ - this.§+b§) + this.§+b§;
            if(this.§!^§ == §`!A§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§!^§ == § !7§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§!^§ == §"B§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§!^§ == §^n§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§+b§ / 2;
               _loc13_ = this.§<!<§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§+!7§ = _loc8_ * _loc6_;
            _loc5_.§'!3§ = _loc9_ * _loc6_;
            _loc5_.x = this.§93§.x;
            _loc5_.y = this.§93§.y;
            this.§%&§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§<p§ = §,!G§.§@j§.§47§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§<p§.play();
         }
         var _loc2_:int = this.§%&§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§%&§[_loc4_];
            _loc5_.§'!3§ += this.§6!!§ * param1;
            if(_loc5_.§'!3§ > this.§5T§)
            {
               _loc5_.§'!3§ = this.§5T§;
            }
            _loc5_.x += _loc5_.§+!7§ * param1;
            _loc5_.y += _loc5_.§'!3§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§@X§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§3Z§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§%&§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§%&§.splice(_loc4_,1)) is §<N§)
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
