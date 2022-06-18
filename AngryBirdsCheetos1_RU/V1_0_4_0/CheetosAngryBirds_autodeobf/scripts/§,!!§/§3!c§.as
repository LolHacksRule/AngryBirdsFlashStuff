package §,!!§
{
   import §6!S§.§!<§;
   import §6!S§.§,!9§;
   import §^Q§.§,^§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §3!c§ extends Sprite
   {
      
      public static const §'!5§:int = 0;
      
      public static const §7W§:int = 1;
      
      public static const §#'§:int = 2;
       
      
      private const §9I§:uint = 40;
      
      private const §59§:Number = 0.3;
      
      private const §"e§:Number = 25;
      
      private const §4G§:Number = 10;
      
      private const §<c§:Number = 9;
      
      private var §;H§:int;
      
      private var §<!R§:int;
      
      private var §"y§:Array;
      
      private var §+>§:Array;
      
      private var §&w§:Point;
      
      private var §`D§:int;
      
      public function §3!c§(param1:int, param2:int, param3:Number, param4:Number, param5:int)
      {
         var _loc6_:§9!,§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super();
         this.§;H§ = param1 * §,^§.§^!a§;
         this.§<!R§ = param2 * §,^§.§=%§;
         this.§`D§ = param5;
         this.§&w§ = new Point(param3,param4);
         this.§"y§ = [];
         this.§+>§ = [];
         var _loc9_:int = 0;
         while(_loc9_ < this.§9I§)
         {
            (_loc6_ = new §9!,§(Math.random() * 40 + 10)).x = -2000;
            _loc6_.y = -2000;
            this.addChild(_loc6_);
            this.§"y§[_loc9_] = _loc6_;
            _loc9_++;
         }
      }
      
      public function clean() : void
      {
         var _loc1_:§9!,§ = null;
         while(this.§"y§.length > 0)
         {
            _loc1_ = this.§"y§.shift();
            _loc1_.clean();
         }
         while(this.§+>§.length > 0)
         {
            _loc1_ = this.§+>§.shift();
            _loc1_.clean();
         }
         this.§"y§ = [];
         this.§+>§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§9!,§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§,!9§ = null;
         var _loc13_:Object = null;
         param1 /= 20;
         while(this.§"y§.length > 0)
         {
            _loc5_ = this.§"y§.shift();
            _loc6_ = Math.random() * (this.§"e§ - this.§4G§) + this.§4G§;
            if(this.§`D§ == §'!5§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§`D§ == §7W§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§`D§ == §#'§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            _loc5_.§5F§ = _loc8_ * _loc6_;
            _loc5_.§7!§ = _loc9_ * _loc6_;
            _loc5_.x = this.§&w§.x;
            _loc5_.y = this.§&w§.y;
            this.§+>§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            (_loc12_ = §!<§.§%b§.§9!!§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5)).play();
         }
         var _loc2_:int = this.§+>§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§+>§[_loc4_];
            _loc5_.§7!§ += this.§59§ * param1;
            if(_loc5_.§7!§ > this.§<c§)
            {
               _loc5_.§7!§ = this.§<c§;
            }
            _loc5_.x += _loc5_.§5F§ * param1;
            _loc5_.y += _loc5_.§7!§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§;H§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§<!R§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§+>§.length > 0 && _loc3_)
            {
               if((_loc13_ = this.§+>§.splice(_loc4_,1)) is §9!,§)
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
