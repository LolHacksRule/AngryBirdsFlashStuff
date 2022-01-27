package §^"#§
{
   import §,"&§.§9q§;
   import §=u§.§!D§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §]!"§ extends Sprite
   {
      
      public static const §"!L§:int = 0;
      
      public static const §#g§:int = 1;
      
      public static const §4$§:int = 2;
      
      public static const §];§:int = 3;
      
      private static const §-@§:String = "all";
       
      
      private const §2!_§:uint = 40;
      
      private const §@"0§:Number = 0.3;
      
      private const §#!r§:Number = 25;
      
      private const §4!4§:Number = 10;
      
      private const §finally§:Number = 9;
      
      private var §-_§:int;
      
      private var §9_§:int;
      
      private var §5!=§:Vector.<§?M§>;
      
      private var §&!%§:Vector.<§?M§>;
      
      private var §0!Q§:Point;
      
      private var §,!§:int;
      
      public function §]!"§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:String = "all")
      {
         var _loc10_:§?M§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         super();
         this.§-_§ = param1;
         this.§9_§ = param2;
         var _loc8_:Number = Math.min(§9q§.§+w§,§9q§.§9!$§);
         var _loc9_:Number = Math.max(§9q§.§+w§,§9q§.§9!$§);
         param3 /= §9q§.§9!$§;
         param4 /= §9q§.§+w§;
         this.§,!§ = param5;
         this.§0!Q§ = new Point(param3,param4);
         this.§5!=§ = new Vector.<§?M§>(0);
         this.§&!%§ = new Vector.<§?M§>(0);
         var _loc13_:int = 0;
         while(_loc13_ < param6)
         {
            (_loc10_ = new §?M§(Math.random() * 40 + 10,param7)).x = -2000;
            _loc10_.y = -2000;
            this.addChild(_loc10_);
            this.§5!=§[_loc13_] = _loc10_;
            _loc13_++;
         }
         this.scaleX = _loc9_;
         this.scaleY = _loc9_;
      }
      
      public function §;"F§() : void
      {
         var _loc1_:§?M§ = null;
         while(this.§5!=§.length > 0)
         {
            _loc1_ = this.§5!=§.shift();
            _loc1_.§;"F§();
         }
         while(this.§&!%§.length > 0)
         {
            _loc1_ = this.§&!%§.shift();
            _loc1_.§;"F§();
         }
         this.§5!=§ = new Vector.<§?M§>(0);
         this.§&!%§ = new Vector.<§?M§>(0);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§?M§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:§?M§ = null;
         param1 /= 20;
         while(this.§5!=§.length > 0)
         {
            _loc5_ = this.§5!=§.shift();
            _loc6_ = Math.random() * (this.§#!r§ - this.§4!4§) + this.§4!4§;
            if(this.§,!§ == §"!L§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§,!§ == §#g§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§,!§ == §4$§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§,!§ == §];§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§4!4§ / 2;
               _loc13_ = this.§#!r§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§&n§ = _loc8_ * _loc6_;
            _loc5_.§7!S§ = _loc9_ * _loc6_;
            _loc5_.x = this.§0!Q§.x;
            _loc5_.y = this.§0!Q§.y;
            this.§&!%§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§^!5§ = §!D§.§[!1§.§1"<§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§^!5§.play();
         }
         var _loc2_:int = this.§&!%§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§&!%§[_loc4_];
            _loc5_.§7!S§ += this.§@"0§ * param1;
            if(_loc5_.§7!S§ > this.§finally§)
            {
               _loc5_.§7!S§ = this.§finally§;
            }
            _loc5_.x += _loc5_.§&n§ * param1;
            _loc5_.y += _loc5_.§7!S§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§-_§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§9_§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§&!%§.length > 0 && _loc3_)
            {
               (_loc14_ = this.§&!%§.splice(_loc4_,1)[0]).§;"F§();
               _loc5_.x = -2000;
               _loc5_.y = -2000;
            }
            _loc4_--;
         }
      }
   }
}
