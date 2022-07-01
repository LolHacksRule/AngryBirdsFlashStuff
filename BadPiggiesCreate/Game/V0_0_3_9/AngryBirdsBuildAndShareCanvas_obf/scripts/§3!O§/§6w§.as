package §3!O§
{
   import §3!S§.§%s§;
   import §>!J§.§"g§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §6w§ extends Sprite
   {
      
      public static const §+y§:int = 0;
      
      public static const §%!Y§:int = 1;
      
      public static const §8!2§:int = 2;
      
      public static const §=j§:int = 3;
       
      
      private const §<S§:uint = 40;
      
      private const §8x§:Number = 0.3;
      
      private const §1U§:Number = 25;
      
      private const §?!R§:Number = 10;
      
      private const §0z§:Number = 9;
      
      private var §3W§:int;
      
      private var §&! §:int;
      
      private var §3H§:Array;
      
      private var §=§:Array;
      
      private var §!$§:Point;
      
      private var §?R§:int;
      
      private var §4!$§:Number;
      
      public function §6w§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:Number = 0, param8:String = "ParticleStar")
      {
         var _loc9_:§3"4§ = null;
         super();
         this.§3W§ = param1 * §%s§.§,!=§;
         this.§&! § = param2 * §%s§.§-=§;
         this.scrollRect = new Rectangle(0,0,this.§3W§,this.§&! §);
         this.§?R§ = param5;
         this.§!$§ = new Point(param3,param4);
         this.§3H§ = [];
         this.§=§ = [];
         var _loc10_:int = 0;
         while(_loc10_ < param6)
         {
            if(param8 == §3"4§.§0!?§)
            {
               _loc9_ = new §,<§();
            }
            else if(param8 == §3"4§.§=!P§)
            {
               _loc9_ = new §2!J§();
            }
            _loc9_.x = -2000;
            _loc9_.y = -2000;
            this.addChild(_loc9_);
            this.§3H§[_loc10_] = _loc9_;
            _loc10_++;
         }
         this.§4!$§ = param7;
      }
      
      public function clean() : void
      {
         var _loc1_:§3"4§ = null;
         while(this.§3H§.length > 0)
         {
            _loc1_ = this.§3H§.shift();
            _loc1_.clean();
         }
         while(this.§=§.length > 0)
         {
            _loc1_ = this.§=§.shift();
            _loc1_.clean();
         }
         this.§3H§ = [];
         this.§=§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§3"4§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Object = null;
         this.§4!$§ -= param1;
         if(this.§4!$§ > 0)
         {
            return;
         }
         param1 /= 20;
         while(this.§3H§.length > 0)
         {
            _loc5_ = this.§3H§.shift();
            _loc6_ = Math.random() * (this.§1U§ - this.§?!R§) + this.§?!R§;
            if(this.§?R§ == §+y§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§?R§ == §%!Y§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§?R§ == §8!2§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§?R§ == §=j§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§?!R§ / 2;
               _loc13_ = this.§1U§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§=G§ = _loc8_ * _loc6_;
            _loc5_.§@f§ = _loc9_ * _loc6_;
            _loc5_.x = this.§!$§.x;
            _loc5_.y = this.§!$§.y;
            this.§=§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§9l§ = §"g§.§'!o§.§while§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§9l§.play();
         }
         var _loc2_:int = this.§=§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§=§[_loc4_];
            _loc5_.§@f§ += this.§8x§ * param1;
            if(_loc5_.§@f§ > this.§0z§)
            {
               _loc5_.§@f§ = this.§0z§;
            }
            _loc5_.x += _loc5_.§=G§ * param1;
            _loc5_.y += _loc5_.§@f§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§3W§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§&! § + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§=§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§=§.splice(_loc4_,1)) is §,<§)
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
