package §@!4§
{
   import §2E§.§&p§;
   import §5!G§.§&2§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §with§ extends Sprite
   {
      
      public static const §<!W§:int = 0;
      
      public static const §;K§:int = 1;
      
      public static const §7",§:int = 2;
      
      public static const §,l§:int = 3;
      
      public static const §]0§:uint = 40;
       
      
      private const §6!y§:Number = 0.3;
      
      private const §5J§:Number = 25;
      
      private const §%,§:Number = 10;
      
      private const §8"C§:Number = 9;
      
      private var §&K§:int;
      
      private var §#r§:int;
      
      private var §]S§:Array;
      
      private var §7"0§:Array;
      
      private var §>D§:Point;
      
      private var §,!t§:int;
      
      public function §with§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:Boolean = false)
      {
         var _loc10_:§0]§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         super();
         this.§&K§ = param1;
         this.§#r§ = param2;
         var _loc8_:Number = Math.min(§&2§.§0"@§,§&2§.§3"J§);
         var _loc9_:Number = Math.max(§&2§.§0"@§,§&2§.§3"J§);
         param3 /= §&2§.§3"J§;
         param4 /= §&2§.§0"@§;
         this.§,!t§ = param5;
         this.§>D§ = new Point(param3,param4);
         this.§]S§ = [];
         this.§7"0§ = [];
         var _loc13_:int = 0;
         while(_loc13_ < param6)
         {
            (_loc10_ = new §0]§(Math.random() * 40 + 10,param7)).x = -2000;
            _loc10_.y = -2000;
            this.addChild(_loc10_);
            this.§]S§[_loc13_] = _loc10_;
            _loc13_++;
         }
         this.scaleX = _loc9_;
         this.scaleY = _loc9_;
      }
      
      public function clean() : void
      {
         var _loc1_:§0]§ = null;
         while(this.§]S§.length > 0)
         {
            _loc1_ = this.§]S§.shift();
            _loc1_.clean();
         }
         while(this.§7"0§.length > 0)
         {
            _loc1_ = this.§7"0§.shift();
            _loc1_.clean();
         }
         this.§]S§ = [];
         this.§7"0§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§0]§ = null;
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
         while(this.§]S§.length > 0)
         {
            _loc5_ = this.§]S§.shift();
            _loc6_ = Math.random() * (this.§5J§ - this.§%,§) + this.§%,§;
            if(this.§,!t§ == §<!W§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§,!t§ == §;K§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§,!t§ == §7",§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§,!t§ == §,l§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§%,§ / 2;
               _loc13_ = this.§5J§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§&5§ = _loc8_ * _loc6_;
            _loc5_.§5!]§ = _loc9_ * _loc6_;
            _loc5_.x = this.§>D§.x;
            _loc5_.y = this.§>D§.y;
            this.§7"0§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§]!y§ = §&p§.§1[§.§7!3§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§]!y§.play();
         }
         var _loc2_:int = this.§7"0§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§7"0§[_loc4_];
            _loc5_.§5!]§ += this.§6!y§ * param1;
            if(_loc5_.§5!]§ > this.§8"C§)
            {
               _loc5_.§5!]§ = this.§8"C§;
            }
            _loc5_.x += _loc5_.§&5§ * param1;
            _loc5_.y += _loc5_.§5!]§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§&K§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§#r§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§7"0§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§7"0§.splice(_loc4_,1)) is §0]§)
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
