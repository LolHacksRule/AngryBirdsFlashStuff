package §9!@§
{
   import §5!1§.§"!X§;
   import §9b§.§"!S§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §"?§ extends Sprite
   {
      
      public static const §0#§:int = 0;
      
      public static const §9j§:int = 1;
      
      public static const §&n§:int = 2;
      
      public static const §@!J§:int = 3;
       
      
      private const §[!5§:uint = 40;
      
      private const §#7§:Number = 0.3;
      
      private const §^!!§:Number = 25;
      
      private const §#t§:Number = 10;
      
      private const §<!S§:Number = 9;
      
      private var §`B§:int;
      
      private var §,!T§:int;
      
      private var §6n§:Array;
      
      private var §]@§:Array;
      
      private var §%!a§:Point;
      
      private var §[Y§:int;
      
      private var §]A§:Number;
      
      public function §"?§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:Number = 0)
      {
         var _loc8_:§,@§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         super();
         this.scrollRect = new Rectangle(0,0,param1,param2);
         this.§`B§ = param1 * §"!S§.§<!4§;
         this.§,!T§ = param2 * §"!S§.§[=§;
         this.§[Y§ = param5;
         this.§%!a§ = new Point(param3,param4);
         this.§6n§ = [];
         this.§]@§ = [];
         var _loc11_:int = 0;
         while(_loc11_ < param6)
         {
            (_loc8_ = new §,@§(Math.random() * 40 + 10)).x = -2000;
            _loc8_.y = -2000;
            this.addChild(_loc8_);
            this.§6n§[_loc11_] = _loc8_;
            _loc11_++;
         }
         this.§]A§ = param7;
      }
      
      public function clean() : void
      {
         var _loc1_:§,@§ = null;
         while(this.§6n§.length > 0)
         {
            _loc1_ = this.§6n§.shift();
            _loc1_.clean();
         }
         while(this.§]@§.length > 0)
         {
            _loc1_ = this.§]@§.shift();
            _loc1_.clean();
         }
         this.§6n§ = [];
         this.§]@§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§,@§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Object = null;
         this.§]A§ -= param1;
         if(this.§]A§ > 0)
         {
            return;
         }
         param1 /= 20;
         while(this.§6n§.length > 0)
         {
            _loc5_ = this.§6n§.shift();
            _loc6_ = Math.random() * (this.§^!!§ - this.§#t§) + this.§#t§;
            if(this.§[Y§ == §0#§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§[Y§ == §9j§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§[Y§ == §&n§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§[Y§ == §@!J§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§#t§ / 2;
               _loc13_ = this.§^!!§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§&!2§ = _loc8_ * _loc6_;
            _loc5_.§]?§ = _loc9_ * _loc6_;
            _loc5_.x = this.§%!a§.x;
            _loc5_.y = this.§%!a§.y;
            this.§]@§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§-T§ = §"!X§.§ s§.§%!;§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§-T§.play();
         }
         var _loc2_:int = this.§]@§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§]@§[_loc4_];
            _loc5_.§]?§ += this.§#7§ * param1;
            if(_loc5_.§]?§ > this.§<!S§)
            {
               _loc5_.§]?§ = this.§<!S§;
            }
            _loc5_.x += _loc5_.§&!2§ * param1;
            _loc5_.y += _loc5_.§]?§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§`B§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§,!T§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§]@§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§]@§.splice(_loc4_,1)) is §,@§)
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
