package §]!O§
{
   import §+!9§.§;0§;
   import §<§.§<K§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §'X§ extends Sprite
   {
      
      public static const §[!0§:int = 0;
      
      public static const §4j§:int = 1;
      
      public static const §=!N§:int = 2;
      
      public static const §0!l§:int = 3;
      
      private static const §]!@§:String = "all";
       
      
      private const §@!B§:uint = 40;
      
      private const §9P§:Number = 0.3;
      
      private const §'o§:Number = 25;
      
      private const §<!h§:Number = 10;
      
      private const §0^§:Number = 9;
      
      private var §]"'§:int;
      
      private var §!!T§:int;
      
      private var §^E§:Vector.<§]"@§>;
      
      private var §"S§:Vector.<§]"@§>;
      
      private var §+#§:Point;
      
      private var §-L§:int;
      
      public function §'X§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:String = "all")
      {
         var _loc10_:§]"@§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         super();
         this.§]"'§ = param1;
         this.§!!T§ = param2;
         var _loc8_:Number = Math.min(§;0§.§6[§,§;0§.§@'§);
         var _loc9_:Number = Math.max(§;0§.§6[§,§;0§.§@'§);
         param3 /= §;0§.§@'§;
         param4 /= §;0§.§6[§;
         this.§-L§ = param5;
         this.§+#§ = new Point(param3,param4);
         this.§^E§ = new Vector.<§]"@§>(0);
         this.§"S§ = new Vector.<§]"@§>(0);
         var _loc13_:int = 0;
         while(_loc13_ < param6)
         {
            (_loc10_ = new §]"@§(Math.random() * 40 + 10,param7)).x = -2000;
            _loc10_.y = -2000;
            this.addChild(_loc10_);
            this.§^E§[_loc13_] = _loc10_;
            _loc13_++;
         }
         this.scaleX = _loc9_;
         this.scaleY = _loc9_;
      }
      
      public function §#!O§() : void
      {
         var _loc1_:§]"@§ = null;
         while(this.§^E§.length > 0)
         {
            _loc1_ = this.§^E§.shift();
            _loc1_.§#!O§();
         }
         while(this.§"S§.length > 0)
         {
            _loc1_ = this.§"S§.shift();
            _loc1_.§#!O§();
         }
         this.§^E§ = new Vector.<§]"@§>(0);
         this.§"S§ = new Vector.<§]"@§>(0);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§]"@§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:§]"@§ = null;
         param1 /= 20;
         while(this.§^E§.length > 0)
         {
            _loc5_ = this.§^E§.shift();
            _loc6_ = Math.random() * (this.§'o§ - this.§<!h§) + this.§<!h§;
            if(this.§-L§ == §[!0§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§-L§ == §4j§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§-L§ == §=!N§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§-L§ == §0!l§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§<!h§ / 2;
               _loc13_ = this.§'o§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§[H§ = _loc8_ * _loc6_;
            _loc5_.§-d§ = _loc9_ * _loc6_;
            _loc5_.x = this.§+#§.x;
            _loc5_.y = this.§+#§.y;
            this.§"S§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§9a§ = §<K§.§<"B§.§`!c§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§9a§.play();
         }
         var _loc2_:int = this.§"S§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§"S§[_loc4_];
            _loc5_.§-d§ += this.§9P§ * param1;
            if(_loc5_.§-d§ > this.§0^§)
            {
               _loc5_.§-d§ = this.§0^§;
            }
            _loc5_.x += _loc5_.§[H§ * param1;
            _loc5_.y += _loc5_.§-d§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§]"'§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§!!T§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§"S§.length > 0 && _loc3_)
            {
               (_loc14_ = this.§"S§.splice(_loc4_,1)[0]).§#!O§();
               _loc5_.x = -2000;
               _loc5_.y = -2000;
            }
            _loc4_--;
         }
      }
   }
}
