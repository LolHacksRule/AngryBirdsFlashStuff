package §92§
{
   import §"^§.§9=§;
   import §?!C§.§[!-§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §!J§ extends Sprite
   {
      
      public static const §]!5§:int = 0;
      
      public static const §[!&§:int = 1;
      
      public static const § !5§:int = 2;
      
      public static const §3!4§:int = 3;
       
      
      private const §8F§:uint = 40;
      
      private const §<"§:Number = 0.3;
      
      private const §[F§:Number = 25;
      
      private const §`d§:Number = 10;
      
      private const §<E§:Number = 9;
      
      private var §-i§:int;
      
      private var §#!$§:int;
      
      private var §!! §:Array;
      
      private var §=-§:Array;
      
      private var §+&§:Point;
      
      private var §9r§:int;
      
      public function §!J§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40)
      {
         var _loc9_:§ D§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         super();
         this.§-i§ = param1;
         this.§#!$§ = param2;
         var _loc7_:Number = Math.min(§9=§.§-m§,§9=§.§'j§);
         var _loc8_:Number = Math.max(§9=§.§-m§,§9=§.§'j§);
         param3 /= §9=§.§'j§;
         param4 /= §9=§.§-m§;
         this.§9r§ = param5;
         this.§+&§ = new Point(param3,param4);
         this.§!! § = [];
         this.§=-§ = [];
         var _loc12_:int = 0;
         while(_loc12_ < param6)
         {
            (_loc9_ = new § D§(Math.random() * 40 + 10)).x = -2000;
            _loc9_.y = -2000;
            this.addChild(_loc9_);
            this.§!! §[_loc12_] = _loc9_;
            _loc12_++;
         }
         this.scaleX = _loc8_;
         this.scaleY = _loc8_;
      }
      
      public function clean() : void
      {
         var _loc1_:§ D§ = null;
         while(this.§!! §.length > 0)
         {
            _loc1_ = this.§!! §.shift();
            _loc1_.clean();
         }
         while(this.§=-§.length > 0)
         {
            _loc1_ = this.§=-§.shift();
            _loc1_.clean();
         }
         this.§!! § = [];
         this.§=-§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§ D§ = null;
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
         while(this.§!! §.length > 0)
         {
            _loc5_ = this.§!! §.shift();
            _loc6_ = Math.random() * (this.§[F§ - this.§`d§) + this.§`d§;
            if(this.§9r§ == §]!5§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§9r§ == §[!&§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§9r§ == § !5§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§9r§ == §3!4§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§`d§ / 2;
               _loc13_ = this.§[F§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§3!L§ = _loc8_ * _loc6_;
            _loc5_.§;P§ = _loc9_ * _loc6_;
            _loc5_.x = this.§+&§.x;
            _loc5_.y = this.§+&§.y;
            this.§=-§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§5g§ = §[!-§.§ set§.§6B§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§5g§.play();
         }
         var _loc2_:int = this.§=-§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§=-§[_loc4_];
            _loc5_.§;P§ += this.§<"§ * param1;
            if(_loc5_.§;P§ > this.§<E§)
            {
               _loc5_.§;P§ = this.§<E§;
            }
            _loc5_.x += _loc5_.§3!L§ * param1;
            _loc5_.y += _loc5_.§;P§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§-i§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§#!$§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§=-§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§=-§.splice(_loc4_,1)) is § D§)
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
