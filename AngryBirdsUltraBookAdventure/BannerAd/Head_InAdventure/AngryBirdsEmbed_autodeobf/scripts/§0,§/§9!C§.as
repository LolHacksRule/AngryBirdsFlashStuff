package §0,§
{
   import §#P§.§@7§;
   import §5!L§.§=w§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §9!C§ extends Sprite
   {
      
      public static const §0T§:int = 0;
      
      public static const §>!9§:int = 1;
      
      public static const §=0§:int = 2;
      
      public static const §'w§:int = 3;
      
      public static const §9!H§:uint = 40;
       
      
      private const §<U§:Number = 0.3;
      
      private const §<!?§:Number = 25;
      
      private const §>h§:Number = 10;
      
      private const §;5§:Number = 9;
      
      private var §"<§:int;
      
      private var §&e§:int;
      
      private var §>!1§:Array;
      
      private var §6G§:Array;
      
      private var §#!N§:Point;
      
      private var §^!+§:int;
      
      public function §9!C§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:Boolean = false)
      {
         var _loc10_:§4F§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         super();
         this.§"<§ = param1;
         this.§&e§ = param2;
         var _loc8_:Number = Math.min(§=w§.§'c§,§=w§.§continue§);
         var _loc9_:Number = Math.max(§=w§.§'c§,§=w§.§continue§);
         param3 /= §=w§.§continue§;
         param4 /= §=w§.§'c§;
         this.§^!+§ = param5;
         this.§#!N§ = new Point(param3,param4);
         this.§>!1§ = [];
         this.§6G§ = [];
         var _loc13_:int = 0;
         while(_loc13_ < param6)
         {
            (_loc10_ = new §4F§(Math.random() * 40 + 10,param7)).x = -2000;
            _loc10_.y = -2000;
            this.addChild(_loc10_);
            this.§>!1§[_loc13_] = _loc10_;
            _loc13_++;
         }
         this.scaleX = _loc9_;
         this.scaleY = _loc9_;
      }
      
      public function clean() : void
      {
         var _loc1_:§4F§ = null;
         while(this.§>!1§.length > 0)
         {
            _loc1_ = this.§>!1§.shift();
            _loc1_.clean();
         }
         while(this.§6G§.length > 0)
         {
            _loc1_ = this.§6G§.shift();
            _loc1_.clean();
         }
         this.§>!1§ = [];
         this.§6G§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§4F§ = null;
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
         while(this.§>!1§.length > 0)
         {
            _loc5_ = this.§>!1§.shift();
            _loc6_ = Math.random() * (this.§<!?§ - this.§>h§) + this.§>h§;
            if(this.§^!+§ == §0T§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§^!+§ == §>!9§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§^!+§ == §=0§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§^!+§ == §'w§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§>h§ / 2;
               _loc13_ = this.§<!?§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§0F§ = _loc8_ * _loc6_;
            _loc5_.§]!5§ = _loc9_ * _loc6_;
            _loc5_.x = this.§#!N§.x;
            _loc5_.y = this.§#!N§.y;
            this.§6G§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§5§ = §@7§.§@6§.§3!%§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§5§.play();
         }
         var _loc2_:int = this.§6G§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§6G§[_loc4_];
            _loc5_.§]!5§ += this.§<U§ * param1;
            if(_loc5_.§]!5§ > this.§;5§)
            {
               _loc5_.§]!5§ = this.§;5§;
            }
            _loc5_.x += _loc5_.§0F§ * param1;
            _loc5_.y += _loc5_.§]!5§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§"<§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§&e§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§6G§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§6G§.splice(_loc4_,1)) is §4F§)
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
