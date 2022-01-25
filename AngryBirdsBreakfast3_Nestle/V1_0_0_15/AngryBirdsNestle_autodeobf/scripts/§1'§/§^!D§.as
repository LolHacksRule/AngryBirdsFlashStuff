package §1'§
{
   import §0!m§.§@!S§;
   import §;g§.§0!o§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §^!D§ extends Sprite
   {
      
      public static const §3!0§:int = 0;
      
      public static const §"!K§:int = 1;
      
      public static const §3n§:int = 2;
      
      public static const §2k§:int = 3;
      
      private static const §3"$§:String = "all";
      
      public static const §8`§:uint = 40;
       
      
      private const §=t§:Number = 0.3;
      
      private const §[!e§:Number = 25;
      
      private const §@k§:Number = 10;
      
      private const §;!7§:Number = 9;
      
      private var § !@§:int;
      
      private var §0!b§:int;
      
      private var §]m§:Vector.<§'!G§>;
      
      private var §2m§:Vector.<§'!G§>;
      
      private var §1!1§:Point;
      
      private var §[f§:int;
      
      public function §^!D§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:String = "all")
      {
         var _loc10_:§'!G§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         super();
         this.§ !@§ = param1;
         this.§0!b§ = param2;
         var _loc8_:Number = Math.min(§@!S§.§+!q§,§@!S§.§5!e§);
         var _loc9_:Number = Math.max(§@!S§.§+!q§,§@!S§.§5!e§);
         param3 /= §@!S§.§5!e§;
         param4 /= §@!S§.§+!q§;
         this.§[f§ = param5;
         this.§1!1§ = new Point(param3,param4);
         this.§]m§ = new Vector.<§'!G§>(0);
         this.§2m§ = new Vector.<§'!G§>(0);
         var _loc13_:int = 0;
         while(_loc13_ < param6)
         {
            (_loc10_ = new §'!G§(Math.random() * 40 + 10,param7)).x = -2000;
            _loc10_.y = -2000;
            this.addChild(_loc10_);
            this.§]m§[_loc13_] = _loc10_;
            _loc13_++;
         }
         this.scaleX = _loc9_;
         this.scaleY = _loc9_;
      }
      
      public function §,!#§() : void
      {
         var _loc1_:§'!G§ = null;
         while(this.§]m§.length > 0)
         {
            _loc1_ = this.§]m§.shift();
            if(_loc1_.parent == this)
            {
               this.removeChild(_loc1_);
            }
            _loc1_.§,!#§();
         }
         while(this.§2m§.length > 0)
         {
            _loc1_ = this.§2m§.shift();
            if(_loc1_.parent == this)
            {
               this.removeChild(_loc1_);
            }
            _loc1_.§,!#§();
         }
         this.§]m§ = new Vector.<§'!G§>(0);
         this.§2m§ = new Vector.<§'!G§>(0);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§'!G§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:§'!G§ = null;
         param1 /= 20;
         while(this.§]m§.length > 0)
         {
            _loc5_ = this.§]m§.shift();
            _loc6_ = Math.random() * (this.§[!e§ - this.§@k§) + this.§@k§;
            if(this.§[f§ == §3!0§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§[f§ == §"!K§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§[f§ == §3n§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§[f§ == §2k§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§@k§ / 2;
               _loc13_ = this.§[!e§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§"$§ = _loc8_ * _loc6_;
            _loc5_.§8!g§ = _loc9_ * _loc6_;
            _loc5_.x = this.§1!1§.x;
            _loc5_.y = this.§1!1§.y;
            this.§2m§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§]!#§ = §0!o§.§,2§.§4!t§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§]!#§.play();
         }
         var _loc2_:int = this.§2m§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§2m§[_loc4_];
            _loc5_.§8!g§ += this.§=t§ * param1;
            if(_loc5_.§8!g§ > this.§;!7§)
            {
               _loc5_.§8!g§ = this.§;!7§;
            }
            _loc5_.x += _loc5_.§"$§ * param1;
            _loc5_.y += _loc5_.§8!g§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.y > this.§0!b§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§2m§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§2m§.splice(_loc4_,1)[0]).parent == this)
               {
                  this.removeChild(_loc14_);
               }
               _loc14_.§,!#§();
               _loc5_.x = -2000;
               _loc5_.y = -2000;
            }
            _loc4_--;
         }
      }
   }
}
