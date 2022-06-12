package §@""§
{
   import §1U§.§"!V§;
   import §>"2§.§<y§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §&S§ extends Sprite
   {
      
      public static const dynamic:int = 0;
      
      public static const §=w§:int = 1;
      
      public static const §'!b§:int = 2;
      
      public static const §>A§:int = 3;
       
      
      private const §"i§:uint = 40;
      
      private const GRAVITY:Number = 0.3;
      
      private const §""7§:Number = 25;
      
      private const §]!P§:Number = 10;
      
      private const §14§:Number = 9;
      
      private var §[!w§:int;
      
      private var §6o§:int;
      
      private var §1n§:Array;
      
      private var §2!v§:Array;
      
      private var §for§:Point;
      
      private var §`Y§:int;
      
      private var §="3§:Number;
      
      public function §&S§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:Number = 0, param8:String = "ParticleStar")
      {
         var _loc9_:§'!R§ = null;
         super();
         this.§[!w§ = param1 * §"!V§.§4-§;
         this.§6o§ = param2 * §"!V§.§8!e§;
         this.scrollRect = new Rectangle(0,0,this.§[!w§,this.§6o§);
         this.§`Y§ = param5;
         this.§for§ = new Point(param3,param4);
         this.§1n§ = [];
         this.§2!v§ = [];
         var _loc10_:int = 0;
         while(_loc10_ < param6)
         {
            if(param8 == §'!R§.§&!E§)
            {
               _loc9_ = new §0X§();
            }
            else if(param8 == §'!R§.§?-§)
            {
               _loc9_ = new §-;§();
            }
            _loc9_.x = -2000;
            _loc9_.y = -2000;
            this.addChild(_loc9_);
            this.§1n§[_loc10_] = _loc9_;
            _loc10_++;
         }
         this.§="3§ = param7;
      }
      
      public function clean() : void
      {
         var _loc1_:§'!R§ = null;
         while(this.§1n§.length > 0)
         {
            _loc1_ = this.§1n§.shift();
            _loc1_.clean();
         }
         while(this.§2!v§.length > 0)
         {
            _loc1_ = this.§2!v§.shift();
            _loc1_.clean();
         }
         this.§1n§ = [];
         this.§2!v§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§'!R§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Object = null;
         this.§="3§ -= param1;
         if(this.§="3§ > 0)
         {
            return;
         }
         param1 /= 20;
         while(this.§1n§.length > 0)
         {
            _loc5_ = this.§1n§.shift();
            _loc6_ = Math.random() * (this.§""7§ - this.§]!P§) + this.§]!P§;
            if(this.§`Y§ == dynamic)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§`Y§ == §=w§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§`Y§ == §'!b§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§`Y§ == §>A§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§]!P§ / 2;
               _loc13_ = this.§""7§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§20§ = _loc8_ * _loc6_;
            _loc5_.§>!P§ = _loc9_ * _loc6_;
            _loc5_.x = this.§for§.x;
            _loc5_.y = this.§for§.y;
            this.§2!v§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§[7§ = §<y§.§,l§.§]!C§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§[7§.play();
         }
         var _loc2_:int = this.§2!v§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§2!v§[_loc4_];
            _loc5_.§>!P§ += this.GRAVITY * param1;
            if(_loc5_.§>!P§ > this.§14§)
            {
               _loc5_.§>!P§ = this.§14§;
            }
            _loc5_.x += _loc5_.§20§ * param1;
            _loc5_.y += _loc5_.§>!P§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§[!w§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§6o§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§2!v§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§2!v§.splice(_loc4_,1)) is §0X§)
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
