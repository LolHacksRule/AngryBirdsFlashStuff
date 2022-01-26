package §,@§
{
   import §-v§.§,!1§;
   import §[!=§.§!!K§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §<!+§ extends Sprite
   {
      
      public static const §`!-§:int = 0;
      
      public static const §=+§:int = 1;
      
      public static const §;!§:int = 2;
      
      public static const §&! §:int = 3;
       
      
      private const §;3§:uint = 40;
      
      private const §0!]§:Number = 0.3;
      
      private const §&!c§:Number = 25;
      
      private const §1c§:Number = 10;
      
      private const §,9§:Number = 9;
      
      private var §`!Q§:int;
      
      private var §#M§:int;
      
      private var §+!Y§:Array;
      
      private var §8"§:Array;
      
      private var §[!W§:Point;
      
      private var §@!G§:int;
      
      private var §++§:Number;
      
      public function §<!+§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:Number = 0)
      {
         var _loc8_:§6![§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         super();
         this.scrollRect = new Rectangle(0,0,param1,param2);
         this.§`!Q§ = param1 * §,!1§.§@!7§;
         this.§#M§ = param2 * §,!1§.§"R§;
         this.§@!G§ = param5;
         this.§[!W§ = new Point(param3,param4);
         this.§+!Y§ = [];
         this.§8"§ = [];
         var _loc11_:int = 0;
         while(_loc11_ < param6)
         {
            (_loc8_ = new §6![§(Math.random() * 40 + 10)).x = -2000;
            _loc8_.y = -2000;
            this.addChild(_loc8_);
            this.§+!Y§[_loc11_] = _loc8_;
            _loc11_++;
         }
         this.§++§ = param7;
      }
      
      public function clean() : void
      {
         var _loc1_:§6![§ = null;
         while(this.§+!Y§.length > 0)
         {
            _loc1_ = this.§+!Y§.shift();
            _loc1_.clean();
         }
         while(this.§8"§.length > 0)
         {
            _loc1_ = this.§8"§.shift();
            _loc1_.clean();
         }
         this.§+!Y§ = [];
         this.§8"§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§6![§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Object = null;
         this.§++§ -= param1;
         if(this.§++§ > 0)
         {
            return;
         }
         param1 /= 20;
         while(this.§+!Y§.length > 0)
         {
            _loc5_ = this.§+!Y§.shift();
            _loc6_ = Math.random() * (this.§&!c§ - this.§1c§) + this.§1c§;
            if(this.§@!G§ == §`!-§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§@!G§ == §=+§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§@!G§ == §;!§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§@!G§ == §&! §)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§1c§ / 2;
               _loc13_ = this.§&!c§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§,!!§ = _loc8_ * _loc6_;
            _loc5_.§&!#§ = _loc9_ * _loc6_;
            _loc5_.x = this.§[!W§.x;
            _loc5_.y = this.§[!W§.y;
            this.§8"§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§'F§ = §!!K§.§'!C§.§'!H§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§'F§.play();
         }
         var _loc2_:int = this.§8"§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§8"§[_loc4_];
            _loc5_.§&!#§ += this.§0!]§ * param1;
            if(_loc5_.§&!#§ > this.§,9§)
            {
               _loc5_.§&!#§ = this.§,9§;
            }
            _loc5_.x += _loc5_.§,!!§ * param1;
            _loc5_.y += _loc5_.§&!#§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§`!Q§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§#M§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§8"§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§8"§.splice(_loc4_,1)) is §6![§)
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
