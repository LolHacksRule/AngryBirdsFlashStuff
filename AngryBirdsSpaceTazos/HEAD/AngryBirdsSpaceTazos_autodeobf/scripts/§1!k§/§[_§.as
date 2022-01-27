package §1!k§
{
   import §#!O§.§"!t§;
   import §>"2§.§8k§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §[_§ extends Sprite
   {
      
      public static const §'!b§:int = 0;
      
      public static const §3"3§:int = 1;
      
      public static const §-t§:int = 2;
      
      public static const §<s§:int = 3;
      
      private static const §1!z§:String = "all";
       
      
      private const §2!g§:uint = 40;
      
      private const §^b§:Number = 0.3;
      
      private const §<!7§:Number = 25;
      
      private const §0!R§:Number = 10;
      
      private const §&=§:Number = 9;
      
      private var §2!L§:int;
      
      private var §@"+§:int;
      
      private var §9"3§:Vector.<§"t§>;
      
      private var §>"=§:Vector.<§"t§>;
      
      private var §9w§:Point;
      
      private var §<4§:int;
      
      public function §[_§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:String = "all")
      {
         var _loc10_:§"t§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         super();
         this.§2!L§ = param1;
         this.§@"+§ = param2;
         var _loc8_:Number = Math.min(§8k§.§&i§,§8k§.§`"5§);
         var _loc9_:Number = Math.max(§8k§.§&i§,§8k§.§`"5§);
         param3 /= §8k§.§`"5§;
         param4 /= §8k§.§&i§;
         this.§<4§ = param5;
         this.§9w§ = new Point(param3,param4);
         this.§9"3§ = new Vector.<§"t§>(0);
         this.§>"=§ = new Vector.<§"t§>(0);
         var _loc13_:int = 0;
         while(_loc13_ < param6)
         {
            (_loc10_ = new §"t§(Math.random() * 40 + 10,param7)).x = -2000;
            _loc10_.y = -2000;
            this.addChild(_loc10_);
            this.§9"3§[_loc13_] = _loc10_;
            _loc13_++;
         }
         this.scaleX = _loc9_;
         this.scaleY = _loc9_;
      }
      
      public function §&"#§() : void
      {
         var _loc1_:§"t§ = null;
         while(this.§9"3§.length > 0)
         {
            _loc1_ = this.§9"3§.shift();
            _loc1_.§&"#§();
         }
         while(this.§>"=§.length > 0)
         {
            _loc1_ = this.§>"=§.shift();
            _loc1_.§&"#§();
         }
         this.§9"3§ = new Vector.<§"t§>(0);
         this.§>"=§ = new Vector.<§"t§>(0);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§"t§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:§"t§ = null;
         param1 /= 20;
         while(this.§9"3§.length > 0)
         {
            _loc5_ = this.§9"3§.shift();
            _loc6_ = Math.random() * (this.§<!7§ - this.§0!R§) + this.§0!R§;
            if(this.§<4§ == §'!b§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§<4§ == §3"3§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§<4§ == §-t§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§<4§ == §<s§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§0!R§ / 2;
               _loc13_ = this.§<!7§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§6!W§ = _loc8_ * _loc6_;
            _loc5_.§;t§ = _loc9_ * _loc6_;
            _loc5_.x = this.§9w§.x;
            _loc5_.y = this.§9w§.y;
            this.§>"=§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§2"<§ = §"!t§.§3R§.§2m§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§2"<§.play();
         }
         var _loc2_:int = this.§>"=§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§>"=§[_loc4_];
            _loc5_.§;t§ += this.§^b§ * param1;
            if(_loc5_.§;t§ > this.§&=§)
            {
               _loc5_.§;t§ = this.§&=§;
            }
            _loc5_.x += _loc5_.§6!W§ * param1;
            _loc5_.y += _loc5_.§;t§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§2!L§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§@"+§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§>"=§.length > 0 && _loc3_)
            {
               (_loc14_ = this.§>"=§.splice(_loc4_,1)[0]).§&"#§();
               _loc5_.x = -2000;
               _loc5_.y = -2000;
            }
            _loc4_--;
         }
      }
   }
}
