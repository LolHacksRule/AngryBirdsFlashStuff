package §!&§
{
   import §-!;§.§4^§;
   import §-!;§.§^!,§;
   import §@!W§.§8!W§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §%+§ extends Sprite
   {
      
      public static const §?d§:int = 0;
      
      public static const §<9§:int = 1;
      
      public static const §+!Q§:int = 2;
       
      
      private const §^!H§:uint = 40;
      
      private const §"C§:Number = 0.3;
      
      private const §,!G§:Number = 25;
      
      private const §get §:Number = 10;
      
      private const §9N§:Number = 9;
      
      private var §"<§:int;
      
      private var §0!_§:int;
      
      private var static:Array;
      
      private var §8!`§:Array;
      
      private var §7x§:Point;
      
      private var §0D§:int;
      
      public function §%+§(param1:int, param2:int, param3:Number, param4:Number, param5:int)
      {
         var _loc6_:§do§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super();
         this.§"<§ = param1 * §8!W§.§[w§;
         this.§0!_§ = param2 * §8!W§.§@!+§;
         this.§0D§ = param5;
         this.§7x§ = new Point(param3,param4);
         this.static = [];
         this.§8!`§ = [];
         var _loc9_:int = 0;
         while(_loc9_ < this.§^!H§)
         {
            (_loc6_ = new §do§(Math.random() * 40 + 10)).x = -2000;
            _loc6_.y = -2000;
            this.addChild(_loc6_);
            this.static[_loc9_] = _loc6_;
            _loc9_++;
         }
      }
      
      public function clean() : void
      {
         var _loc1_:§do§ = null;
         while(this.static.length > 0)
         {
            _loc1_ = this.static.shift();
            _loc1_.clean();
         }
         while(this.§8!`§.length > 0)
         {
            _loc1_ = this.§8!`§.shift();
            _loc1_.clean();
         }
         this.static = [];
         this.§8!`§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§do§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§4^§ = null;
         var _loc13_:Object = null;
         param1 /= 20;
         while(this.static.length > 0)
         {
            _loc5_ = this.static.shift();
            _loc6_ = Math.random() * (this.§,!G§ - this.§get §) + this.§get §;
            if(this.§0D§ == §?d§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§0D§ == §<9§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§0D§ == §+!Q§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            _loc5_.§&R§ = _loc8_ * _loc6_;
            _loc5_.§>3§ = _loc9_ * _loc6_;
            _loc5_.x = this.§7x§.x;
            _loc5_.y = this.§7x§.y;
            this.§8!`§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            (_loc12_ = §^!,§.§0!S§.§3n§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5)).play();
         }
         var _loc2_:int = this.§8!`§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§8!`§[_loc4_];
            _loc5_.§>3§ += this.§"C§ * param1;
            if(_loc5_.§>3§ > this.§9N§)
            {
               _loc5_.§>3§ = this.§9N§;
            }
            _loc5_.x += _loc5_.§&R§ * param1;
            _loc5_.y += _loc5_.§>3§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§"<§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§0!_§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§8!`§.length > 0 && _loc3_)
            {
               if((_loc13_ = this.§8!`§.splice(_loc4_,1)) is §do§)
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
