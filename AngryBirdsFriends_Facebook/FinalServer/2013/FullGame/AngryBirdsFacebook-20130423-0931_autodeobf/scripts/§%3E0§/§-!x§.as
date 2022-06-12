package §>0§
{
   import §2"'§.§0W§;
   import §@!"§.§?l§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §-!x§ extends Sprite
   {
      
      public static const §,Q§:int = 0;
      
      public static const §8!;§:int = 1;
      
      public static const §3#§:int = 2;
      
      public static const §=!g§:int = 3;
      
      public static const §!!U§:uint = 40;
       
      
      private const §3s§:Number = 0.3;
      
      private const §>T§:Number = 25;
      
      private const §0!d§:Number = 10;
      
      private const §^!d§:Number = 9;
      
      private var §'"%§:int;
      
      private var §>!K§:int;
      
      private var §`!V§:Array;
      
      private var §+&§:Array;
      
      private var §"§:Point;
      
      private var §@j§:int;
      
      public function §-!x§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:Boolean = false)
      {
         var _loc10_:§>!1§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         super();
         this.§'"%§ = param1;
         this.§>!K§ = param2;
         var _loc8_:Number = Math.min(§?l§.§0!S§,§?l§.§+!9§);
         var _loc9_:Number = Math.max(§?l§.§0!S§,§?l§.§+!9§);
         param3 /= §?l§.§+!9§;
         param4 /= §?l§.§0!S§;
         this.§@j§ = param5;
         this.§"§ = new Point(param3,param4);
         this.§`!V§ = [];
         this.§+&§ = [];
         var _loc13_:int = 0;
         while(_loc13_ < param6)
         {
            (_loc10_ = new §>!1§(Math.random() * 40 + 10,param7)).x = -2000;
            _loc10_.y = -2000;
            this.addChild(_loc10_);
            this.§`!V§[_loc13_] = _loc10_;
            _loc13_++;
         }
         this.scaleX = _loc9_;
         this.scaleY = _loc9_;
      }
      
      public function clean() : void
      {
         var _loc1_:§>!1§ = null;
         while(this.§`!V§.length > 0)
         {
            _loc1_ = this.§`!V§.shift();
            _loc1_.clean();
         }
         while(this.§+&§.length > 0)
         {
            _loc1_ = this.§+&§.shift();
            _loc1_.clean();
         }
         this.§`!V§ = [];
         this.§+&§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§>!1§ = null;
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
         while(this.§`!V§.length > 0)
         {
            _loc5_ = this.§`!V§.shift();
            _loc6_ = Math.random() * (this.§>T§ - this.§0!d§) + this.§0!d§;
            if(this.§@j§ == §,Q§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§@j§ == §8!;§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§@j§ == §3#§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§@j§ == §=!g§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§0!d§ / 2;
               _loc13_ = this.§>T§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§7j§ = _loc8_ * _loc6_;
            _loc5_.§^!R§ = _loc9_ * _loc6_;
            _loc5_.x = this.§"§.x;
            _loc5_.y = this.§"§.y;
            this.§+&§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§-">§ = §0W§.§&"5§.§]!r§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§-">§.play();
         }
         var _loc2_:int = this.§+&§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§+&§[_loc4_];
            _loc5_.§^!R§ += this.§3s§ * param1;
            if(_loc5_.§^!R§ > this.§^!d§)
            {
               _loc5_.§^!R§ = this.§^!d§;
            }
            _loc5_.x += _loc5_.§7j§ * param1;
            _loc5_.y += _loc5_.§^!R§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§'"%§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§>!K§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§+&§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§+&§.splice(_loc4_,1)) is §>!1§)
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
