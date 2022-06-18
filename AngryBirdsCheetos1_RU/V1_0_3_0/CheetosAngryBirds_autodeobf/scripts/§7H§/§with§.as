package §7H§
{
   import §"Z§.§-N§;
   import §"Z§.§5!2§;
   import §+!^§.§'Y§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §with§ extends Sprite
   {
      
      public static const §,!6§:int = 0;
      
      public static const §1!I§:int = 1;
      
      public static const §@u§:int = 2;
       
      
      private const §<!&§:uint = 40;
      
      private const §0Z§:Number = 0.3;
      
      private const §,g§:Number = 25;
      
      private const §'w§:Number = 10;
      
      private const §7!+§:Number = 9;
      
      private var §'z§:int;
      
      private var §6f§:int;
      
      private var §6`§:Array;
      
      private var §1!4§:Array;
      
      private var §&5§:Point;
      
      private var §,!&§:int;
      
      public function §with§(param1:int, param2:int, param3:Number, param4:Number, param5:int)
      {
         var _loc6_:§=v§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super();
         this.§'z§ = param1 * §'Y§.§;x§;
         this.§6f§ = param2 * §'Y§.§=!a§;
         this.§,!&§ = param5;
         this.§&5§ = new Point(param3,param4);
         this.§6`§ = [];
         this.§1!4§ = [];
         var _loc9_:int = 0;
         while(_loc9_ < this.§<!&§)
         {
            (_loc6_ = new §=v§(Math.random() * 40 + 10)).x = -2000;
            _loc6_.y = -2000;
            this.addChild(_loc6_);
            this.§6`§[_loc9_] = _loc6_;
            _loc9_++;
         }
      }
      
      public function clean() : void
      {
         var _loc1_:§=v§ = null;
         while(this.§6`§.length > 0)
         {
            _loc1_ = this.§6`§.shift();
            _loc1_.clean();
         }
         while(this.§1!4§.length > 0)
         {
            _loc1_ = this.§1!4§.shift();
            _loc1_.clean();
         }
         this.§6`§ = [];
         this.§1!4§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§=v§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§5!2§ = null;
         var _loc13_:Object = null;
         param1 /= 20;
         while(this.§6`§.length > 0)
         {
            _loc5_ = this.§6`§.shift();
            _loc6_ = Math.random() * (this.§,g§ - this.§'w§) + this.§'w§;
            if(this.§,!&§ == §,!6§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§,!&§ == §1!I§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§,!&§ == §@u§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            _loc5_.§0!M§ = _loc8_ * _loc6_;
            _loc5_.§`e§ = _loc9_ * _loc6_;
            _loc5_.x = this.§&5§.x;
            _loc5_.y = this.§&5§.y;
            this.§1!4§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            (_loc12_ = §-N§.§<?§.§,!D§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5)).play();
         }
         var _loc2_:int = this.§1!4§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§1!4§[_loc4_];
            _loc5_.§`e§ += this.§0Z§ * param1;
            if(_loc5_.§`e§ > this.§7!+§)
            {
               _loc5_.§`e§ = this.§7!+§;
            }
            _loc5_.x += _loc5_.§0!M§ * param1;
            _loc5_.y += _loc5_.§`e§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§'z§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§6f§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§1!4§.length > 0 && _loc3_)
            {
               if((_loc13_ = this.§1!4§.splice(_loc4_,1)) is §=v§)
               {
                  _loc13_.clean();
               }
               _loc5_.x = -2000;
               _loc5_.y = -2000;
            }
            _loc4_--;
         }
      }
   }
}
