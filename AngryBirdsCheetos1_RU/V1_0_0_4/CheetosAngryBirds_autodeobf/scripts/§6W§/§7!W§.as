package §6W§
{
   import §6!P§.§88§;
   import §6!P§.§^!>§;
   import §;!X§.§7`§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §7!W§ extends Sprite
   {
      
      public static const §?!L§:int = 0;
      
      public static const §73§:int = 1;
      
      public static const §3m§:int = 2;
       
      
      private const §6o§:uint = 40;
      
      private const §!!H§:Number = 0.3;
      
      private const § >§:Number = 25;
      
      private const §<8§:Number = 10;
      
      private const §%!R§:Number = 9;
      
      private var §^M§:int;
      
      private var §4V§:int;
      
      private var §<2§:Array;
      
      private var § !W§:Array;
      
      private var §4!9§:Point;
      
      private var §,=§:int;
      
      public function §7!W§(param1:int, param2:int, param3:Number, param4:Number, param5:int)
      {
         var _loc6_:§^p§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super();
         this.§^M§ = param1 * §7`§.§%u§;
         this.§4V§ = param2 * §7`§.§4h§;
         this.§,=§ = param5;
         this.§4!9§ = new Point(param3,param4);
         this.§<2§ = [];
         this.§ !W§ = [];
         var _loc9_:int = 0;
         while(_loc9_ < this.§6o§)
         {
            (_loc6_ = new §^p§(Math.random() * 40 + 10)).x = -2000;
            _loc6_.y = -2000;
            this.addChild(_loc6_);
            this.§<2§[_loc9_] = _loc6_;
            _loc9_++;
         }
      }
      
      public function clean() : void
      {
         var _loc1_:§^p§ = null;
         while(this.§<2§.length > 0)
         {
            _loc1_ = this.§<2§.shift();
            _loc1_.clean();
         }
         while(this.§ !W§.length > 0)
         {
            _loc1_ = this.§ !W§.shift();
            _loc1_.clean();
         }
         this.§<2§ = [];
         this.§ !W§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§^p§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§88§ = null;
         var _loc13_:Object = null;
         param1 /= 20;
         while(this.§<2§.length > 0)
         {
            _loc5_ = this.§<2§.shift();
            _loc6_ = Math.random() * (this.§ >§ - this.§<8§) + this.§<8§;
            if(this.§,=§ == §?!L§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§,=§ == §73§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§,=§ == §3m§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            _loc5_.§9!X§ = _loc8_ * _loc6_;
            _loc5_.§ $§ = _loc9_ * _loc6_;
            _loc5_.x = this.§4!9§.x;
            _loc5_.y = this.§4!9§.y;
            this.§ !W§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            (_loc12_ = §^!>§.§[P§.§@m§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5)).play();
         }
         var _loc2_:int = this.§ !W§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§ !W§[_loc4_];
            _loc5_.§ $§ += this.§!!H§ * param1;
            if(_loc5_.§ $§ > this.§%!R§)
            {
               _loc5_.§ $§ = this.§%!R§;
            }
            _loc5_.x += _loc5_.§9!X§ * param1;
            _loc5_.y += _loc5_.§ $§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§^M§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§4V§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§ !W§.length > 0 && _loc3_)
            {
               if((_loc13_ = this.§ !W§.splice(_loc4_,1)) is §^p§)
               {
                  _loc13_.clean();
               }
               _loc5_.x = -2000;
               _loc5_.y = -2000;
            }
            _loc4_--;
         }
      }
   }
}
