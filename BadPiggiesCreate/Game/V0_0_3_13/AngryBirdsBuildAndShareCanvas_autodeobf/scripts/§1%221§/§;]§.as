package §1"1§
{
   import §=!<§.§5!U§;
   import §catch§.§"L§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §;]§ extends Sprite
   {
      
      public static const §6!#§:int = 0;
      
      public static const §^!v§:int = 1;
      
      public static const §>X§:int = 2;
      
      public static const §3!1§:int = 3;
       
      
      private const §1"7§:uint = 40;
      
      private const GRAVITY:Number = 0.3;
      
      private const §1"0§:Number = 25;
      
      private const §3!T§:Number = 10;
      
      private const §3D§:Number = 9;
      
      private var §]9§:int;
      
      private var §70§:int;
      
      private var §6!S§:Array;
      
      private var §-!w§:Array;
      
      private var §9k§:Point;
      
      private var §<!_§:int;
      
      private var §7%§:Number;
      
      public function §;]§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:Number = 0, param8:String = "ParticleStar")
      {
         var _loc9_:§`&§ = null;
         super();
         this.§]9§ = param1 * §5!U§.§=k§;
         this.§70§ = param2 * §5!U§.§#"1§;
         this.scrollRect = new Rectangle(0,0,this.§]9§,this.§70§);
         this.§<!_§ = param5;
         this.§9k§ = new Point(param3,param4);
         this.§6!S§ = [];
         this.§-!w§ = [];
         var _loc10_:int = 0;
         while(_loc10_ < param6)
         {
            if(param8 == §`&§.§&d§)
            {
               _loc9_ = new §6"!§();
            }
            else if(param8 == §`&§.§0"7§)
            {
               _loc9_ = new § m§();
            }
            _loc9_.x = -2000;
            _loc9_.y = -2000;
            this.addChild(_loc9_);
            this.§6!S§[_loc10_] = _loc9_;
            _loc10_++;
         }
         this.§7%§ = param7;
      }
      
      public function clean() : void
      {
         var _loc1_:§`&§ = null;
         while(this.§6!S§.length > 0)
         {
            _loc1_ = this.§6!S§.shift();
            _loc1_.clean();
         }
         while(this.§-!w§.length > 0)
         {
            _loc1_ = this.§-!w§.shift();
            _loc1_.clean();
         }
         this.§6!S§ = [];
         this.§-!w§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§`&§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Object = null;
         this.§7%§ -= param1;
         if(this.§7%§ > 0)
         {
            return;
         }
         param1 /= 20;
         while(this.§6!S§.length > 0)
         {
            _loc5_ = this.§6!S§.shift();
            _loc6_ = Math.random() * (this.§1"0§ - this.§3!T§) + this.§3!T§;
            if(this.§<!_§ == §6!#§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§<!_§ == §^!v§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§<!_§ == §>X§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§<!_§ == §3!1§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§3!T§ / 2;
               _loc13_ = this.§1"0§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§8o§ = _loc8_ * _loc6_;
            _loc5_.§+§ = _loc9_ * _loc6_;
            _loc5_.x = this.§9k§.x;
            _loc5_.y = this.§9k§.y;
            this.§-!w§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§1<§ = §"L§.§7!?§.§4!P§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§1<§.play();
         }
         var _loc2_:int = this.§-!w§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§-!w§[_loc4_];
            _loc5_.§+§ += this.GRAVITY * param1;
            if(_loc5_.§+§ > this.§3D§)
            {
               _loc5_.§+§ = this.§3D§;
            }
            _loc5_.x += _loc5_.§8o§ * param1;
            _loc5_.y += _loc5_.§+§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§]9§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§70§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§-!w§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§-!w§.splice(_loc4_,1)) is §6"!§)
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
