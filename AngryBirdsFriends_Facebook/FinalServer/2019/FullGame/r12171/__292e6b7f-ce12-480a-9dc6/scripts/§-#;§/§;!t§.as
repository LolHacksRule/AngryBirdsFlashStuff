package §-#;§
{
   import §;"5§.§6"W§;
   import §?#z§.§]$?§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §;!t§ extends Sprite
   {
      
      public static const §8!t§:int = 0;
      
      public static const §78§:int = 1;
      
      public static const §9!2§:int = 2;
      
      public static const §[#4§:int = 3;
      
      private static const §##o§:String = "all";
      
      public static const §=;§:uint = 40;
       
      
      private const §"i§:Number = 0.3;
      
      private const §7"d§:Number = 25;
      
      private const §`"H§:Number = 10;
      
      private const §[#m§:Number = 9;
      
      private var §4!w§:int;
      
      private var §@;§:int;
      
      private var §1+§:Vector.<§>",§>;
      
      private var §@"X§:Vector.<§>",§>;
      
      private var §4"n§:Point;
      
      private var §>"i§:int;
      
      public function §;!t§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:String = "all")
      {
         var _loc10_:§>",§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         super();
         this.§4!w§ = param1;
         this.§@;§ = param2;
         var _loc8_:Number = Math.min(§]$?§.§[#U§,§]$?§.§6p§);
         var _loc9_:Number = Math.max(§]$?§.§[#U§,§]$?§.§6p§);
         param3 /= §]$?§.§6p§;
         param4 /= §]$?§.§[#U§;
         this.§>"i§ = param5;
         this.§4"n§ = new Point(param3,param4);
         this.§1+§ = new Vector.<§>",§>(0);
         this.§@"X§ = new Vector.<§>",§>(0);
         var _loc13_:int = 0;
         while(_loc13_ < param6)
         {
            (_loc10_ = new §>",§(Math.random() * 40 + 10,param7)).x = -2000;
            _loc10_.y = -2000;
            this.addChild(_loc10_);
            this.§1+§[_loc13_] = _loc10_;
            _loc13_++;
         }
         this.scaleX = _loc9_;
         this.scaleY = _loc9_;
      }
      
      public function §<![§() : void
      {
         var _loc1_:§>",§ = null;
         while(this.§1+§.length > 0)
         {
            _loc1_ = this.§1+§.shift();
            if(_loc1_.parent == this)
            {
               this.removeChild(_loc1_);
            }
            _loc1_.§<![§();
         }
         while(this.§@"X§.length > 0)
         {
            _loc1_ = this.§@"X§.shift();
            if(_loc1_.parent == this)
            {
               this.removeChild(_loc1_);
            }
            _loc1_.§<![§();
         }
         this.§1+§ = new Vector.<§>",§>(0);
         this.§@"X§ = new Vector.<§>",§>(0);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§>",§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:§>",§ = null;
         param1 /= 20;
         while(this.§1+§.length > 0)
         {
            _loc5_ = this.§1+§.shift();
            _loc6_ = Math.random() * (this.§7"d§ - this.§`"H§) + this.§`"H§;
            if(this.§>"i§ == §8!t§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§>"i§ == §78§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§>"i§ == §9!2§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§>"i§ == §[#4§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§`"H§ / 2;
               _loc13_ = this.§7"d§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§3$;§ = _loc8_ * _loc6_;
            _loc5_.§]"l§ = _loc9_ * _loc6_;
            _loc5_.x = this.§4"n§.x;
            _loc5_.y = this.§4"n§.y;
            this.§@"X§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§;`§ = §6"W§.§+!,§.§9!n§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§;`§.play();
         }
         var _loc2_:int = this.§@"X§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§@"X§[_loc4_];
            _loc5_.§]"l§ += this.§"i§ * param1;
            if(_loc5_.§]"l§ > this.§[#m§)
            {
               _loc5_.§]"l§ = this.§[#m§;
            }
            _loc5_.x += _loc5_.§3$;§ * param1;
            _loc5_.y += _loc5_.§]"l§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.y > this.§@;§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§@"X§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§@"X§.splice(_loc4_,1)[0]).parent == this)
               {
                  this.removeChild(_loc14_);
               }
               _loc14_.§<![§();
               _loc5_.x = -2000;
               _loc5_.y = -2000;
            }
            _loc4_--;
         }
      }
   }
}
