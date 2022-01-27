package §>!q§
{
   import §;!y§.§,!s§;
   import §]F§.§`!G§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §;!J§ extends Sprite
   {
      
      public static const §`C§:int = 0;
      
      public static const §,!M§:int = 1;
      
      public static const §5p§:int = 2;
      
      public static const §8o§:int = 3;
      
      public static const §"R§:uint = 40;
       
      
      private const §4o§:Number = 0.3;
      
      private const §7!j§:Number = 25;
      
      private const §%!A§:Number = 10;
      
      private const §;W§:Number = 9;
      
      private var §2!q§:int;
      
      private var §&b§:int;
      
      private var §#R§:Array;
      
      private var §[!`§:Array;
      
      private var §2!I§:Point;
      
      private var §^S§:int;
      
      public function §;!J§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:Boolean = false)
      {
         var _loc10_:§%!p§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         super();
         this.§2!q§ = param1;
         this.§&b§ = param2;
         var _loc8_:Number = Math.min(§,!s§.§#d§,§,!s§.§8;§);
         var _loc9_:Number = Math.max(§,!s§.§#d§,§,!s§.§8;§);
         param3 /= §,!s§.§8;§;
         param4 /= §,!s§.§#d§;
         this.§^S§ = param5;
         this.§2!I§ = new Point(param3,param4);
         this.§#R§ = [];
         this.§[!`§ = [];
         var _loc13_:int = 0;
         while(_loc13_ < param6)
         {
            (_loc10_ = new §%!p§(Math.random() * 40 + 10,param7)).x = -2000;
            _loc10_.y = -2000;
            this.addChild(_loc10_);
            this.§#R§[_loc13_] = _loc10_;
            _loc13_++;
         }
         this.scaleX = _loc9_;
         this.scaleY = _loc9_;
      }
      
      public function clean() : void
      {
         var _loc1_:§%!p§ = null;
         while(this.§#R§.length > 0)
         {
            _loc1_ = this.§#R§.shift();
            _loc1_.clean();
         }
         while(this.§[!`§.length > 0)
         {
            _loc1_ = this.§[!`§.shift();
            _loc1_.clean();
         }
         this.§#R§ = [];
         this.§[!`§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§%!p§ = null;
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
         while(this.§#R§.length > 0)
         {
            _loc5_ = this.§#R§.shift();
            _loc6_ = Math.random() * (this.§7!j§ - this.§%!A§) + this.§%!A§;
            if(this.§^S§ == §`C§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§^S§ == §,!M§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§^S§ == §5p§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§^S§ == §8o§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§%!A§ / 2;
               _loc13_ = this.§7!j§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§,"#§ = _loc8_ * _loc6_;
            _loc5_.§#o§ = _loc9_ * _loc6_;
            _loc5_.x = this.§2!I§.x;
            _loc5_.y = this.§2!I§.y;
            this.§[!`§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§'!y§ = §`!G§.§[U§.§-]§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§'!y§.play();
         }
         var _loc2_:int = this.§[!`§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§[!`§[_loc4_];
            _loc5_.§#o§ += this.§4o§ * param1;
            if(_loc5_.§#o§ > this.§;W§)
            {
               _loc5_.§#o§ = this.§;W§;
            }
            _loc5_.x += _loc5_.§,"#§ * param1;
            _loc5_.y += _loc5_.§#o§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§2!q§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§&b§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§[!`§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§[!`§.splice(_loc4_,1)) is §%!p§)
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
