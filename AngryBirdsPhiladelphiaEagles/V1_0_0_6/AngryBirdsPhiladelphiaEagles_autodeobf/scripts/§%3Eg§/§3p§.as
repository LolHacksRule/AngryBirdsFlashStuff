package §>g§
{
   import §&b§.§[F§;
   import §]$§.§5^§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §3p§ extends Sprite
   {
      
      public static const §%t§:int = 0;
      
      public static const §4!N§:int = 1;
      
      public static const § !G§:int = 2;
      
      public static const §>!E§:int = 3;
       
      
      private const §0!?§:uint = 40;
      
      private const §&e§:Number = 0.3;
      
      private const §1!@§:Number = 25;
      
      private const §44§:Number = 10;
      
      private const §6!I§:Number = 9;
      
      private var §%!#§:int;
      
      private var §&A§:int;
      
      private var §,P§:Array;
      
      private var §>B§:Array;
      
      private var §0%§:Point;
      
      private var §7V§:int;
      
      public function §3p§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40)
      {
         var _loc9_:§[C§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         super();
         this.§%!#§ = param1;
         this.§&A§ = param2;
         var _loc7_:Number = Math.min(§[F§.§9!M§,§[F§.§9h§);
         var _loc8_:Number = Math.max(§[F§.§9!M§,§[F§.§9h§);
         param3 /= §[F§.§9h§;
         param4 /= §[F§.§9!M§;
         this.§7V§ = param5;
         this.§0%§ = new Point(param3,param4);
         this.§,P§ = [];
         this.§>B§ = [];
         var _loc12_:int = 0;
         while(_loc12_ < param6)
         {
            (_loc9_ = new §[C§(Math.random() * 40 + 10)).x = -2000;
            _loc9_.y = -2000;
            this.addChild(_loc9_);
            this.§,P§[_loc12_] = _loc9_;
            _loc12_++;
         }
         this.scaleX = _loc8_;
         this.scaleY = _loc8_;
      }
      
      public function clean() : void
      {
         var _loc1_:§[C§ = null;
         while(this.§,P§.length > 0)
         {
            _loc1_ = this.§,P§.shift();
            _loc1_.clean();
         }
         while(this.§>B§.length > 0)
         {
            _loc1_ = this.§>B§.shift();
            _loc1_.clean();
         }
         this.§,P§ = [];
         this.§>B§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§[C§ = null;
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
         while(this.§,P§.length > 0)
         {
            _loc5_ = this.§,P§.shift();
            _loc6_ = Math.random() * (this.§1!@§ - this.§44§) + this.§44§;
            if(this.§7V§ == §%t§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§7V§ == §4!N§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§7V§ == § !G§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§7V§ == §>!E§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§44§ / 2;
               _loc13_ = this.§1!@§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§+b§ = _loc8_ * _loc6_;
            _loc5_.§@p§ = _loc9_ * _loc6_;
            _loc5_.x = this.§0%§.x;
            _loc5_.y = this.§0%§.y;
            this.§>B§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§&!J§ = §5^§.§<"§.§^g§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§&!J§.play();
         }
         var _loc2_:int = this.§>B§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§>B§[_loc4_];
            _loc5_.§@p§ += this.§&e§ * param1;
            if(_loc5_.§@p§ > this.§6!I§)
            {
               _loc5_.§@p§ = this.§6!I§;
            }
            _loc5_.x += _loc5_.§+b§ * param1;
            _loc5_.y += _loc5_.§@p§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§%!#§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§&A§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§>B§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§>B§.splice(_loc4_,1)) is §[C§)
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
