package §+T§
{
   import §3!0§.§`i§;
   import §@!0§.§%"!§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §'o§ extends Sprite
   {
      
      public static const §4!3§:int = 0;
      
      public static const §!"1§:int = 1;
      
      public static const § "8§:int = 2;
      
      public static const §]![§:int = 3;
      
      private static const §#" §:String = "all";
      
      public static const §=;§:uint = 40;
       
      
      private const §"r§:Number = 0.3;
      
      private const §[!c§:Number = 25;
      
      private const § o§:Number = 10;
      
      private const §["&§:Number = 9;
      
      private var §4n§:int;
      
      private var §&$§:int;
      
      private var §;!u§:Vector.<§?!_§>;
      
      private var §6c§:Vector.<§?!_§>;
      
      private var §,$§:Point;
      
      private var §8!q§:int;
      
      public function §'o§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:String = "all")
      {
         var _loc10_:§?!_§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         super();
         this.§4n§ = param1;
         this.§&$§ = param2;
         var _loc8_:Number = Math.min(§`i§.§%!a§,§`i§.§=!I§);
         var _loc9_:Number = Math.max(§`i§.§%!a§,§`i§.§=!I§);
         param3 /= §`i§.§=!I§;
         param4 /= §`i§.§%!a§;
         this.§8!q§ = param5;
         this.§,$§ = new Point(param3,param4);
         this.§;!u§ = new Vector.<§?!_§>(0);
         this.§6c§ = new Vector.<§?!_§>(0);
         var _loc13_:int = 0;
         while(_loc13_ < param6)
         {
            (_loc10_ = new §?!_§(Math.random() * 40 + 10,param7)).x = -2000;
            _loc10_.y = -2000;
            this.addChild(_loc10_);
            this.§;!u§[_loc13_] = _loc10_;
            _loc13_++;
         }
         this.scaleX = _loc9_;
         this.scaleY = _loc9_;
      }
      
      public function §6!h§() : void
      {
         var _loc1_:§?!_§ = null;
         while(this.§;!u§.length > 0)
         {
            _loc1_ = this.§;!u§.shift();
            if(_loc1_.parent == this)
            {
               this.removeChild(_loc1_);
            }
            _loc1_.§6!h§();
         }
         while(this.§6c§.length > 0)
         {
            _loc1_ = this.§6c§.shift();
            if(_loc1_.parent == this)
            {
               this.removeChild(_loc1_);
            }
            _loc1_.§6!h§();
         }
         this.§;!u§ = new Vector.<§?!_§>(0);
         this.§6c§ = new Vector.<§?!_§>(0);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§?!_§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:§?!_§ = null;
         param1 /= 20;
         while(this.§;!u§.length > 0)
         {
            _loc5_ = this.§;!u§.shift();
            _loc6_ = Math.random() * (this.§[!c§ - this.§ o§) + this.§ o§;
            if(this.§8!q§ == §4!3§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§8!q§ == §!"1§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§8!q§ == § "8§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§8!q§ == §]![§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§ o§ / 2;
               _loc13_ = this.§[!c§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§+!=§ = _loc8_ * _loc6_;
            _loc5_.§-!o§ = _loc9_ * _loc6_;
            _loc5_.x = this.§,$§.x;
            _loc5_.y = this.§,$§.y;
            this.§6c§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§4!9§ = §%"!§.§&!;§.§"!]§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§4!9§.play();
         }
         var _loc2_:int = this.§6c§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§6c§[_loc4_];
            _loc5_.§-!o§ += this.§"r§ * param1;
            if(_loc5_.§-!o§ > this.§["&§)
            {
               _loc5_.§-!o§ = this.§["&§;
            }
            _loc5_.x += _loc5_.§+!=§ * param1;
            _loc5_.y += _loc5_.§-!o§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.y > this.§&$§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§6c§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§6c§.splice(_loc4_,1)[0]).parent == this)
               {
                  this.removeChild(_loc14_);
               }
               _loc14_.§6!h§();
               _loc5_.x = -2000;
               _loc5_.y = -2000;
            }
            _loc4_--;
         }
      }
   }
}
