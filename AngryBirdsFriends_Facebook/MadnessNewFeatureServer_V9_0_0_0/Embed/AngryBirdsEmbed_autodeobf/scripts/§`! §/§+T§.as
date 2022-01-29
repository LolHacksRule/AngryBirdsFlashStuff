package §`! §
{
   import §>!O§.§[+§;
   import §`!1§.§-!&§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §+T§ extends Sprite
   {
      
      public static const §64§:int = 0;
      
      public static const §`e§:int = 1;
      
      public static const §4K§:int = 2;
      
      public static const §05§:int = 3;
      
      public static const §,5§:uint = 40;
       
      
      private const §,2§:Number = 0.3;
      
      private const §,!N§:Number = 25;
      
      private const §6L§:Number = 10;
      
      private const §#!6§:Number = 9;
      
      private var §+!E§:int;
      
      private var § 4§:int;
      
      private var §@"§:Array;
      
      private var §;I§:Array;
      
      private var §7$§:Point;
      
      private var §?!H§:int;
      
      public function §+T§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:Boolean = false)
      {
         var _loc10_:§1!@§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         super();
         this.§+!E§ = param1;
         this.§ 4§ = param2;
         var _loc8_:Number = Math.min(§[+§.§!M§,§[+§.§;!7§);
         var _loc9_:Number = Math.max(§[+§.§!M§,§[+§.§;!7§);
         param3 /= §[+§.§;!7§;
         param4 /= §[+§.§!M§;
         this.§?!H§ = param5;
         this.§7$§ = new Point(param3,param4);
         this.§@"§ = [];
         this.§;I§ = [];
         var _loc13_:int = 0;
         while(_loc13_ < param6)
         {
            (_loc10_ = new §1!@§(Math.random() * 40 + 10,param7)).x = -2000;
            _loc10_.y = -2000;
            this.addChild(_loc10_);
            this.§@"§[_loc13_] = _loc10_;
            _loc13_++;
         }
         this.scaleX = _loc9_;
         this.scaleY = _loc9_;
      }
      
      public function clean() : void
      {
         var _loc1_:§1!@§ = null;
         while(this.§@"§.length > 0)
         {
            _loc1_ = this.§@"§.shift();
            _loc1_.clean();
         }
         while(this.§;I§.length > 0)
         {
            _loc1_ = this.§;I§.shift();
            _loc1_.clean();
         }
         this.§@"§ = [];
         this.§;I§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§1!@§ = null;
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
         while(this.§@"§.length > 0)
         {
            _loc5_ = this.§@"§.shift();
            _loc6_ = Math.random() * (this.§,!N§ - this.§6L§) + this.§6L§;
            if(this.§?!H§ == §64§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§?!H§ == §`e§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§?!H§ == §4K§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§?!H§ == §05§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§6L§ / 2;
               _loc13_ = this.§,!N§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§&m§ = _loc8_ * _loc6_;
            _loc5_.§6c§ = _loc9_ * _loc6_;
            _loc5_.x = this.§7$§.x;
            _loc5_.y = this.§7$§.y;
            this.§;I§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§8!7§ = §-!&§.§;R§.§2w§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§8!7§.play();
         }
         var _loc2_:int = this.§;I§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§;I§[_loc4_];
            _loc5_.§6c§ += this.§,2§ * param1;
            if(_loc5_.§6c§ > this.§#!6§)
            {
               _loc5_.§6c§ = this.§#!6§;
            }
            _loc5_.x += _loc5_.§&m§ * param1;
            _loc5_.y += _loc5_.§6c§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§+!E§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§ 4§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§;I§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§;I§.splice(_loc4_,1)) is §1!@§)
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
