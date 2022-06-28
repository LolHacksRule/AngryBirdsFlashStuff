package §#!H§
{
   import §2!H§.§-!,§;
   import §>! §.§^!c§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §#p§ extends Sprite
   {
      
      public static const §%!G§:int = 0;
      
      public static const §#r§:int = 1;
      
      public static const §3s§:int = 2;
      
      public static const §8!C§:int = 3;
       
      
      private const §[!;§:uint = 40;
      
      private const §<]§:Number = 0.3;
      
      private const §,]§:Number = 25;
      
      private const §&j§:Number = 10;
      
      private const §'x§:Number = 9;
      
      private var §;;§:int;
      
      private var §]"§:int;
      
      private var §7C§:Array;
      
      private var §=2§:Array;
      
      private var § @§:Point;
      
      private var §+!L§:int;
      
      public function §#p§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40)
      {
         var _loc9_:§&!n§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         super();
         this.§;;§ = param1;
         this.§]"§ = param2;
         var _loc7_:Number = Math.min(§^!c§.§6W§,§^!c§.§#!M§);
         var _loc8_:Number = Math.max(§^!c§.§6W§,§^!c§.§#!M§);
         param3 /= §^!c§.§#!M§;
         param4 /= §^!c§.§6W§;
         this.§+!L§ = param5;
         this.§ @§ = new Point(param3,param4);
         this.§7C§ = [];
         this.§=2§ = [];
         var _loc12_:int = 0;
         while(_loc12_ < param6)
         {
            (_loc9_ = new §&!n§(Math.random() * 40 + 10)).x = -2000;
            _loc9_.y = -2000;
            this.addChild(_loc9_);
            this.§7C§[_loc12_] = _loc9_;
            _loc12_++;
         }
         this.scaleX = _loc8_;
         this.scaleY = _loc8_;
      }
      
      public function clean() : void
      {
         var _loc1_:§&!n§ = null;
         while(this.§7C§.length > 0)
         {
            _loc1_ = this.§7C§.shift();
            _loc1_.clean();
         }
         while(this.§=2§.length > 0)
         {
            _loc1_ = this.§=2§.shift();
            _loc1_.clean();
         }
         this.§7C§ = [];
         this.§=2§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§&!n§ = null;
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
         while(this.§7C§.length > 0)
         {
            _loc5_ = this.§7C§.shift();
            _loc6_ = Math.random() * (this.§,]§ - this.§&j§) + this.§&j§;
            if(this.§+!L§ == §%!G§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§+!L§ == §#r§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§+!L§ == §3s§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§+!L§ == §8!C§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§&j§ / 2;
               _loc13_ = this.§,]§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§8E§ = _loc8_ * _loc6_;
            _loc5_.§3F§ = _loc9_ * _loc6_;
            _loc5_.x = this.§ @§.x;
            _loc5_.y = this.§ @§.y;
            this.§=2§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§>P§ = §-!,§.§7!j§.§,!`§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§>P§.play();
         }
         var _loc2_:int = this.§=2§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§=2§[_loc4_];
            _loc5_.§3F§ += this.§<]§ * param1;
            if(_loc5_.§3F§ > this.§'x§)
            {
               _loc5_.§3F§ = this.§'x§;
            }
            _loc5_.x += _loc5_.§8E§ * param1;
            _loc5_.y += _loc5_.§3F§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§;;§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§]"§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§=2§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§=2§.splice(_loc4_,1)) is §&!n§)
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
