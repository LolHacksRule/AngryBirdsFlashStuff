package § !W§
{
   import § ;§.§3!$§;
   import § ;§.§4N§;
   import §!J§.§[&§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §@!?§ extends Sprite
   {
      
      public static const §7V§:int = 0;
      
      public static const §>N§:int = 1;
      
      public static const §?A§:int = 2;
       
      
      private const §29§:uint = 40;
      
      private const §7§:Number = 0.3;
      
      private const §"!K§:Number = 25;
      
      private const §continue§:Number = 10;
      
      private const §2!4§:Number = 9;
      
      private var §+Z§:int;
      
      private var §"O§:int;
      
      private var §6!'§:Array;
      
      private var §[i§:Array;
      
      private var §'!W§:Point;
      
      private var §[!4§:int;
      
      public function §@!?§(param1:int, param2:int, param3:Number, param4:Number, param5:int)
      {
         var _loc6_:§<m§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super();
         this.§+Z§ = param1 * §[&§.§8n§;
         this.§"O§ = param2 * §[&§.§6!H§;
         this.§[!4§ = param5;
         this.§'!W§ = new Point(param3,param4);
         this.§6!'§ = [];
         this.§[i§ = [];
         var _loc9_:int = 0;
         while(_loc9_ < this.§29§)
         {
            (_loc6_ = new §<m§(Math.random() * 40 + 10)).x = -2000;
            _loc6_.y = -2000;
            this.addChild(_loc6_);
            this.§6!'§[_loc9_] = _loc6_;
            _loc9_++;
         }
      }
      
      public function clean() : void
      {
         var _loc1_:§<m§ = null;
         while(this.§6!'§.length > 0)
         {
            _loc1_ = this.§6!'§.shift();
            _loc1_.clean();
         }
         while(this.§[i§.length > 0)
         {
            _loc1_ = this.§[i§.shift();
            _loc1_.clean();
         }
         this.§6!'§ = [];
         this.§[i§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§<m§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§3!$§ = null;
         var _loc13_:Object = null;
         param1 /= 20;
         while(this.§6!'§.length > 0)
         {
            _loc5_ = this.§6!'§.shift();
            _loc6_ = Math.random() * (this.§"!K§ - this.§continue§) + this.§continue§;
            if(this.§[!4§ == §7V§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§[!4§ == §>N§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§[!4§ == §?A§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            _loc5_.§`!=§ = _loc8_ * _loc6_;
            _loc5_.§8D§ = _loc9_ * _loc6_;
            _loc5_.x = this.§'!W§.x;
            _loc5_.y = this.§'!W§.y;
            this.§[i§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            (_loc12_ = §4N§.§!!L§.§5!N§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5)).play();
         }
         var _loc2_:int = this.§[i§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§[i§[_loc4_];
            _loc5_.§8D§ += this.§7§ * param1;
            if(_loc5_.§8D§ > this.§2!4§)
            {
               _loc5_.§8D§ = this.§2!4§;
            }
            _loc5_.x += _loc5_.§`!=§ * param1;
            _loc5_.y += _loc5_.§8D§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§+Z§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§"O§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§[i§.length > 0 && _loc3_)
            {
               if((_loc13_ = this.§[i§.splice(_loc4_,1)) is §<m§)
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
