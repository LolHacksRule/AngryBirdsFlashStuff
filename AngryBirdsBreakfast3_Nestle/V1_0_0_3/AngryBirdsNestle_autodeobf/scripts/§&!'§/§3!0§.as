package §&!'§
{
   import §=3§.§`!F§;
   import com.angrybirds.§4!l§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §3!0§ extends Sprite
   {
      
      public static const § c§:int = 0;
      
      public static const §]" §:int = 1;
      
      public static const §!u§:int = 2;
      
      public static const §2o§:int = 3;
      
      private static const § !>§:String = "all";
      
      public static const §^J§:uint = 40;
       
      
      private const §2'§:Number = 0.3;
      
      private const §;"%§:Number = 25;
      
      private const §]!V§:Number = 10;
      
      private const §]!M§:Number = 9;
      
      private var §]!G§:int;
      
      private var §`!2§:int;
      
      private var § !z§:Vector.<§case§>;
      
      private var §"Z§:Vector.<§case§>;
      
      private var §1!Y§:Point;
      
      private var §]G§:int;
      
      public function §3!0§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:String = "all")
      {
         var _loc10_:§case§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         super();
         this.§]!G§ = param1;
         this.§`!2§ = param2;
         var _loc8_:Number = Math.min(§4!l§.§@!9§,§4!l§.§[j§);
         var _loc9_:Number = Math.max(§4!l§.§@!9§,§4!l§.§[j§);
         param3 /= §4!l§.§[j§;
         param4 /= §4!l§.§@!9§;
         this.§]G§ = param5;
         this.§1!Y§ = new Point(param3,param4);
         this.§ !z§ = new Vector.<§case§>(0);
         this.§"Z§ = new Vector.<§case§>(0);
         var _loc13_:int = 0;
         while(_loc13_ < param6)
         {
            (_loc10_ = new §case§(Math.random() * 40 + 10,param7)).x = -2000;
            _loc10_.y = -2000;
            this.addChild(_loc10_);
            this.§ !z§[_loc13_] = _loc10_;
            _loc13_++;
         }
         this.scaleX = _loc9_;
         this.scaleY = _loc9_;
      }
      
      public function §3!<§() : void
      {
         var _loc1_:§case§ = null;
         while(this.§ !z§.length > 0)
         {
            _loc1_ = this.§ !z§.shift();
            if(_loc1_.parent == this)
            {
               this.removeChild(_loc1_);
            }
            _loc1_.§3!<§();
         }
         while(this.§"Z§.length > 0)
         {
            _loc1_ = this.§"Z§.shift();
            if(_loc1_.parent == this)
            {
               this.removeChild(_loc1_);
            }
            _loc1_.§3!<§();
         }
         this.§ !z§ = new Vector.<§case§>(0);
         this.§"Z§ = new Vector.<§case§>(0);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§case§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:§case§ = null;
         param1 /= 20;
         while(this.§ !z§.length > 0)
         {
            _loc5_ = this.§ !z§.shift();
            _loc6_ = Math.random() * (this.§;"%§ - this.§]!V§) + this.§]!V§;
            if(this.§]G§ == § c§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§]G§ == §]" §)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§]G§ == §!u§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§]G§ == §2o§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§]!V§ / 2;
               _loc13_ = this.§;"%§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§[!P§ = _loc8_ * _loc6_;
            _loc5_.§&!j§ = _loc9_ * _loc6_;
            _loc5_.x = this.§1!Y§.x;
            _loc5_.y = this.§1!Y§.y;
            this.§"Z§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§&!8§ = §`!F§.§=J§.§-r§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§&!8§.play();
         }
         var _loc2_:int = this.§"Z§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§"Z§[_loc4_];
            _loc5_.§&!j§ += this.§2'§ * param1;
            if(_loc5_.§&!j§ > this.§]!M§)
            {
               _loc5_.§&!j§ = this.§]!M§;
            }
            _loc5_.x += _loc5_.§[!P§ * param1;
            _loc5_.y += _loc5_.§&!j§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.y > this.§`!2§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§"Z§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§"Z§.splice(_loc4_,1)[0]).parent == this)
               {
                  this.removeChild(_loc14_);
               }
               _loc14_.§3!<§();
               _loc5_.x = -2000;
               _loc5_.y = -2000;
            }
            _loc4_--;
         }
      }
   }
}
