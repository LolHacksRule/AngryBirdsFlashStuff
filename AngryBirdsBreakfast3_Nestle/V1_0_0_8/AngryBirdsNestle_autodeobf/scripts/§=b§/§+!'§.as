package §=b§
{
   import §53§.§6!u§;
   import com.angrybirds.§4"6§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §+!'§ extends Sprite
   {
      
      public static const §^>§:int = 0;
      
      public static const §"!a§:int = 1;
      
      public static const §'!S§:int = 2;
      
      public static const §0!K§:int = 3;
      
      private static const §6!!§:String = "all";
      
      public static const §24§:uint = 40;
       
      
      private const §+!s§:Number = 0.3;
      
      private const §]!n§:Number = 25;
      
      private const §5!v§:Number = 10;
      
      private const §5!§:Number = 9;
      
      private var §!T§:int;
      
      private var §#G§:int;
      
      private var §&!2§:Vector.<§&>§>;
      
      private var §]+§:Vector.<§&>§>;
      
      private var §8"+§:Point;
      
      private var §@!M§:int;
      
      public function §+!'§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:String = "all")
      {
         var _loc10_:§&>§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         super();
         this.§!T§ = param1;
         this.§#G§ = param2;
         var _loc8_:Number = Math.min(§4"6§.§&!D§,§4"6§.§8!N§);
         var _loc9_:Number = Math.max(§4"6§.§&!D§,§4"6§.§8!N§);
         param3 /= §4"6§.§8!N§;
         param4 /= §4"6§.§&!D§;
         this.§@!M§ = param5;
         this.§8"+§ = new Point(param3,param4);
         this.§&!2§ = new Vector.<§&>§>(0);
         this.§]+§ = new Vector.<§&>§>(0);
         var _loc13_:int = 0;
         while(_loc13_ < param6)
         {
            (_loc10_ = new §&>§(Math.random() * 40 + 10,param7)).x = -2000;
            _loc10_.y = -2000;
            this.addChild(_loc10_);
            this.§&!2§[_loc13_] = _loc10_;
            _loc13_++;
         }
         this.scaleX = _loc9_;
         this.scaleY = _loc9_;
      }
      
      public function §6T§() : void
      {
         var _loc1_:§&>§ = null;
         while(this.§&!2§.length > 0)
         {
            _loc1_ = this.§&!2§.shift();
            if(_loc1_.parent == this)
            {
               this.removeChild(_loc1_);
            }
            _loc1_.§6T§();
         }
         while(this.§]+§.length > 0)
         {
            _loc1_ = this.§]+§.shift();
            if(_loc1_.parent == this)
            {
               this.removeChild(_loc1_);
            }
            _loc1_.§6T§();
         }
         this.§&!2§ = new Vector.<§&>§>(0);
         this.§]+§ = new Vector.<§&>§>(0);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§&>§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:§&>§ = null;
         param1 /= 20;
         while(this.§&!2§.length > 0)
         {
            _loc5_ = this.§&!2§.shift();
            _loc6_ = Math.random() * (this.§]!n§ - this.§5!v§) + this.§5!v§;
            if(this.§@!M§ == §^>§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§@!M§ == §"!a§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§@!M§ == §'!S§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§@!M§ == §0!K§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§5!v§ / 2;
               _loc13_ = this.§]!n§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§+!p§ = _loc8_ * _loc6_;
            _loc5_.§@!>§ = _loc9_ * _loc6_;
            _loc5_.x = this.§8"+§.x;
            _loc5_.y = this.§8"+§.y;
            this.§]+§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§;!`§ = §6!u§.§"e§.§0!O§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§;!`§.play();
         }
         var _loc2_:int = this.§]+§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§]+§[_loc4_];
            _loc5_.§@!>§ += this.§+!s§ * param1;
            if(_loc5_.§@!>§ > this.§5!§)
            {
               _loc5_.§@!>§ = this.§5!§;
            }
            _loc5_.x += _loc5_.§+!p§ * param1;
            _loc5_.y += _loc5_.§@!>§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.y > this.§#G§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§]+§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§]+§.splice(_loc4_,1)[0]).parent == this)
               {
                  this.removeChild(_loc14_);
               }
               _loc14_.§6T§();
               _loc5_.x = -2000;
               _loc5_.y = -2000;
            }
            _loc4_--;
         }
      }
   }
}
