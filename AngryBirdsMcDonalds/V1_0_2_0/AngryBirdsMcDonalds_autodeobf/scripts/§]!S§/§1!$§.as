package §]!S§
{
   import §9!W§.§=!@§;
   import §=!F§.§"!2§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §1!$§ extends Sprite
   {
      
      public static const §%c§:int = 0;
      
      public static const §%V§:int = 1;
      
      public static const §8;§:int = 2;
      
      public static const §[I§:int = 3;
       
      
      private const §`!$§:uint = 40;
      
      private const §^!Z§:Number = 0.3;
      
      private const §87§:Number = 25;
      
      private const §^!X§:Number = 10;
      
      private const §4+§:Number = 9;
      
      private var §each §:int;
      
      private var §?!i§:int;
      
      private var §1t§:Array;
      
      private var §,`§:Array;
      
      private var §var §:Point;
      
      private var §,H§:int;
      
      private var §!!W§:Number;
      
      public function §1!$§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:Number = 0)
      {
         var _loc8_:§-=§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         super();
         this.scrollRect = new Rectangle(0,0,param1,param2);
         this.§each § = param1 * §=!@§.§',§;
         this.§?!i§ = param2 * §=!@§.§6d§;
         this.§,H§ = param5;
         this.§var § = new Point(param3,param4);
         this.§1t§ = [];
         this.§,`§ = [];
         var _loc11_:int = 0;
         while(_loc11_ < param6)
         {
            (_loc8_ = new §-=§(Math.random() * 40 + 10)).x = -2000;
            _loc8_.y = -2000;
            this.addChild(_loc8_);
            this.§1t§[_loc11_] = _loc8_;
            _loc11_++;
         }
         this.§!!W§ = param7;
      }
      
      public function clean() : void
      {
         var _loc1_:§-=§ = null;
         while(this.§1t§.length > 0)
         {
            _loc1_ = this.§1t§.shift();
            _loc1_.clean();
         }
         while(this.§,`§.length > 0)
         {
            _loc1_ = this.§,`§.shift();
            _loc1_.clean();
         }
         this.§1t§ = [];
         this.§,`§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§-=§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Object = null;
         this.§!!W§ -= param1;
         if(this.§!!W§ > 0)
         {
            return;
         }
         param1 /= 20;
         while(this.§1t§.length > 0)
         {
            _loc5_ = this.§1t§.shift();
            _loc6_ = Math.random() * (this.§87§ - this.§^!X§) + this.§^!X§;
            if(this.§,H§ == §%c§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§,H§ == §%V§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§,H§ == §8;§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§,H§ == §[I§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§^!X§ / 2;
               _loc13_ = this.§87§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§]!T§ = _loc8_ * _loc6_;
            _loc5_.§5?§ = _loc9_ * _loc6_;
            _loc5_.x = this.§var §.x;
            _loc5_.y = this.§var §.y;
            this.§,`§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§9!f§ = §"!2§.§'!S§.§-!S§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§9!f§.play();
         }
         var _loc2_:int = this.§,`§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§,`§[_loc4_];
            _loc5_.§5?§ += this.§^!Z§ * param1;
            if(_loc5_.§5?§ > this.§4+§)
            {
               _loc5_.§5?§ = this.§4+§;
            }
            _loc5_.x += _loc5_.§]!T§ * param1;
            _loc5_.y += _loc5_.§5?§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§each § + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§?!i§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§,`§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§,`§.splice(_loc4_,1)) is §-=§)
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
