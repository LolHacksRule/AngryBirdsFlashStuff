package §&q§
{
   import §8!v§.§>!+§;
   import §]!A§.;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §'!T§ extends Sprite
   {
      
      public static const §7!J§:int = 0;
      
      public static const §&!H§:int = 1;
      
      public static const §2"?§:int = 2;
      
      public static const §>^§:int = 3;
       
      
      private const §74§:uint = 40;
      
      private const §68§:Number = 0.3;
      
      private const §1!Z§:Number = 25;
      
      private const §^"'§:Number = 10;
      
      private const §!"§:Number = 9;
      
      private var §[!Z§:int;
      
      private var §3p§:int;
      
      private var § !+§:Array;
      
      private var § case§:Array;
      
      private var §`"0§:Point;
      
      private var §]§:int;
      
      public function §'!T§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40)
      {
         var _loc9_:§1!&§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         super();
         this.§[!Z§ = param1;
         this.§3p§ = param2;
         var _loc7_:Number = Math.min(§#6§.§"e§,§#6§.§>!F§);
         var _loc8_:Number = Math.max(§#6§.§"e§,§#6§.§>!F§);
         param3 /= §#6§.§>!F§;
         param4 /= §#6§.§"e§;
         this.§]§ = param5;
         this.§`"0§ = new Point(param3,param4);
         this.§ !+§ = [];
         this.§ case§ = [];
         var _loc12_:int = 0;
         while(_loc12_ < param6)
         {
            (_loc9_ = new §1!&§(Math.random() * 40 + 10)).x = -2000;
            _loc9_.y = -2000;
            this.addChild(_loc9_);
            this.§ !+§[_loc12_] = _loc9_;
            _loc12_++;
         }
         this.scaleX = _loc8_;
         this.scaleY = _loc8_;
      }
      
      public function clean() : void
      {
         var _loc1_:§1!&§ = null;
         while(this.§ !+§.length > 0)
         {
            _loc1_ = this.§ !+§.shift();
            _loc1_.clean();
         }
         while(this.§ case§.length > 0)
         {
            _loc1_ = this.§ case§.shift();
            _loc1_.clean();
         }
         this.§ !+§ = [];
         this.§ case§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§1!&§ = null;
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
         while(this.§ !+§.length > 0)
         {
            _loc5_ = this.§ !+§.shift();
            _loc6_ = Math.random() * (this.§1!Z§ - this.§^"'§) + this.§^"'§;
            if(this.§]§ == §7!J§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§]§ == §&!H§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§]§ == §2"?§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§]§ == §>^§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§^"'§ / 2;
               _loc13_ = this.§1!Z§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§#Z§ = _loc8_ * _loc6_;
            _loc5_.§1!y§ = _loc9_ * _loc6_;
            _loc5_.x = this.§`"0§.x;
            _loc5_.y = this.§`"0§.y;
            this.§ case§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§5X§ = §>!+§.§;"§.§^!K§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§5X§.play();
         }
         var _loc2_:int = this.§ case§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§ case§[_loc4_];
            _loc5_.§1!y§ += this.§68§ * param1;
            if(_loc5_.§1!y§ > this.§!"§)
            {
               _loc5_.§1!y§ = this.§!"§;
            }
            _loc5_.x += _loc5_.§#Z§ * param1;
            _loc5_.y += _loc5_.§1!y§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§[!Z§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§3p§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§ case§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§ case§.splice(_loc4_,1)) is §1!&§)
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
