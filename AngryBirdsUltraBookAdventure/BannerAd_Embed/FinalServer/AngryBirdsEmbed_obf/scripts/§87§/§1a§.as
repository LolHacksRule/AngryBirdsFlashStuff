package §87§
{
   import §5H§.§[k§;
   import §`F§.§,B§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §1a§ extends Sprite
   {
      
      public static const §&§:int = 0;
      
      public static const §8U§:int = 1;
      
      public static const § ?§:int = 2;
      
      public static const §%_§:int = 3;
       
      
      private const §9P§:uint = 40;
      
      private const §@!C§:Number = 0.3;
      
      private const §1!=§:Number = 25;
      
      private const §>e§:Number = 10;
      
      private const §9k§:Number = 9;
      
      private var §1!>§:int;
      
      private var §+^§:int;
      
      private var §6!A§:Array;
      
      private var §3y§:Array;
      
      private var §!5§:Point;
      
      private var §1U§:int;
      
      public function §1a§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40)
      {
         var _loc9_:§24§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         super();
         this.§1!>§ = param1;
         this.§+^§ = param2;
         var _loc7_:Number = Math.min(§[k§.§@$§,§[k§.§3!5§);
         var _loc8_:Number = Math.max(§[k§.§@$§,§[k§.§3!5§);
         param3 /= §[k§.§3!5§;
         param4 /= §[k§.§@$§;
         this.§1U§ = param5;
         this.§!5§ = new Point(param3,param4);
         this.§6!A§ = [];
         this.§3y§ = [];
         var _loc12_:int = 0;
         while(_loc12_ < param6)
         {
            (_loc9_ = new §24§(Math.random() * 40 + 10)).x = -2000;
            _loc9_.y = -2000;
            this.addChild(_loc9_);
            this.§6!A§[_loc12_] = _loc9_;
            _loc12_++;
         }
         this.scaleX = _loc8_;
         this.scaleY = _loc8_;
      }
      
      public function clean() : void
      {
         var _loc1_:§24§ = null;
         while(this.§6!A§.length > 0)
         {
            _loc1_ = this.§6!A§.shift();
            _loc1_.clean();
         }
         while(this.§3y§.length > 0)
         {
            _loc1_ = this.§3y§.shift();
            _loc1_.clean();
         }
         this.§6!A§ = [];
         this.§3y§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§24§ = null;
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
         while(this.§6!A§.length > 0)
         {
            _loc5_ = this.§6!A§.shift();
            _loc6_ = Math.random() * (this.§1!=§ - this.§>e§) + this.§>e§;
            if(this.§1U§ == §&§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§1U§ == §8U§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§1U§ == § ?§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§1U§ == §%_§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§>e§ / 2;
               _loc13_ = this.§1!=§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§#!0§ = _loc8_ * _loc6_;
            _loc5_.§ ^§ = _loc9_ * _loc6_;
            _loc5_.x = this.§!5§.x;
            _loc5_.y = this.§!5§.y;
            this.§3y§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§@U§ = §,B§.§^n§.§2E§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§@U§.play();
         }
         var _loc2_:int = this.§3y§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§3y§[_loc4_];
            _loc5_.§ ^§ += this.§@!C§ * param1;
            if(_loc5_.§ ^§ > this.§9k§)
            {
               _loc5_.§ ^§ = this.§9k§;
            }
            _loc5_.x += _loc5_.§#!0§ * param1;
            _loc5_.y += _loc5_.§ ^§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§1!>§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§+^§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§3y§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§3y§.splice(_loc4_,1)) is §24§)
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
