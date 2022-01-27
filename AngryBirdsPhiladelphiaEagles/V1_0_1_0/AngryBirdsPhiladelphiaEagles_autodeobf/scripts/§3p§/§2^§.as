package §3p§
{
   import §1!#§.§<t§;
   import §@w§.§2G§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §2^§ extends Sprite
   {
      
      public static const §"K§:int = 0;
      
      public static const §`8§:int = 1;
      
      public static const §4!§:int = 2;
      
      public static const §6J§:int = 3;
       
      
      private const §<!G§:uint = 40;
      
      private const §06§:Number = 0.3;
      
      private const §?[§:Number = 25;
      
      private const §7,§:Number = 10;
      
      private const §6!8§:Number = 9;
      
      private var §#`§:int;
      
      private var §%`§:int;
      
      private var §3O§:Array;
      
      private var §;!E§:Array;
      
      private var §4!'§:Point;
      
      private var §,%§:int;
      
      public function §2^§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40)
      {
         var _loc9_:§72§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         super();
         this.§#`§ = param1;
         this.§%`§ = param2;
         var _loc7_:Number = Math.min(§2G§.§;!P§,§2G§.§8$§);
         var _loc8_:Number = Math.max(§2G§.§;!P§,§2G§.§8$§);
         param3 /= §2G§.§8$§;
         param4 /= §2G§.§;!P§;
         this.§,%§ = param5;
         this.§4!'§ = new Point(param3,param4);
         this.§3O§ = [];
         this.§;!E§ = [];
         var _loc12_:int = 0;
         while(_loc12_ < param6)
         {
            (_loc9_ = new §72§(Math.random() * 40 + 10)).x = -2000;
            _loc9_.y = -2000;
            this.addChild(_loc9_);
            this.§3O§[_loc12_] = _loc9_;
            _loc12_++;
         }
         this.scaleX = _loc8_;
         this.scaleY = _loc8_;
      }
      
      public function clean() : void
      {
         var _loc1_:§72§ = null;
         while(this.§3O§.length > 0)
         {
            _loc1_ = this.§3O§.shift();
            _loc1_.clean();
         }
         while(this.§;!E§.length > 0)
         {
            _loc1_ = this.§;!E§.shift();
            _loc1_.clean();
         }
         this.§3O§ = [];
         this.§;!E§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§72§ = null;
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
         while(this.§3O§.length > 0)
         {
            _loc5_ = this.§3O§.shift();
            _loc6_ = Math.random() * (this.§?[§ - this.§7,§) + this.§7,§;
            if(this.§,%§ == §"K§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§,%§ == §`8§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§,%§ == §4!§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§,%§ == §6J§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§7,§ / 2;
               _loc13_ = this.§?[§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§5M§ = _loc8_ * _loc6_;
            _loc5_.§`Q§ = _loc9_ * _loc6_;
            _loc5_.x = this.§4!'§.x;
            _loc5_.y = this.§4!'§.y;
            this.§;!E§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§+9§ = §<t§.§4J§.§#q§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§+9§.play();
         }
         var _loc2_:int = this.§;!E§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§;!E§[_loc4_];
            _loc5_.§`Q§ += this.§06§ * param1;
            if(_loc5_.§`Q§ > this.§6!8§)
            {
               _loc5_.§`Q§ = this.§6!8§;
            }
            _loc5_.x += _loc5_.§5M§ * param1;
            _loc5_.y += _loc5_.§`Q§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§#`§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§%`§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§;!E§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§;!E§.splice(_loc4_,1)) is §72§)
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
