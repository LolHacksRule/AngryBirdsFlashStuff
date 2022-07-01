package §7"1§
{
   import §-b§.§"!d§;
   import com.angrybirds.§#Z§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §+7§ extends Sprite
   {
      
      public static const §^"#§:int = 0;
      
      public static const §<S§:int = 1;
      
      public static const §[!>§:int = 2;
      
      public static const §6! §:int = 3;
      
      private static const §!_§:String = "all";
      
      public static const §5!t§:uint = 40;
       
      
      private const §,!5§:Number = 0.3;
      
      private const §-E§:Number = 25;
      
      private const §8M§:Number = 10;
      
      private const §1!+§:Number = 9;
      
      private var §!!+§:int;
      
      private var §1!^§:int;
      
      private var §#!!§:Vector.<§7q§>;
      
      private var §>;§:Vector.<§7q§>;
      
      private var §-_§:Point;
      
      private var §+!4§:int;
      
      public function §+7§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:String = "all")
      {
         var _loc10_:§7q§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         super();
         this.§!!+§ = param1;
         this.§1!^§ = param2;
         var _loc8_:Number = Math.min(§#Z§.§]w§,§#Z§.§&"3§);
         var _loc9_:Number = Math.max(§#Z§.§]w§,§#Z§.§&"3§);
         param3 /= §#Z§.§&"3§;
         param4 /= §#Z§.§]w§;
         this.§+!4§ = param5;
         this.§-_§ = new Point(param3,param4);
         this.§#!!§ = new Vector.<§7q§>(0);
         this.§>;§ = new Vector.<§7q§>(0);
         var _loc13_:int = 0;
         while(_loc13_ < param6)
         {
            (_loc10_ = new §7q§(Math.random() * 40 + 10,param7)).x = -2000;
            _loc10_.y = -2000;
            this.addChild(_loc10_);
            this.§#!!§[_loc13_] = _loc10_;
            _loc13_++;
         }
         this.scaleX = _loc9_;
         this.scaleY = _loc9_;
      }
      
      public function §^!%§() : void
      {
         var _loc1_:§7q§ = null;
         while(this.§#!!§.length > 0)
         {
            _loc1_ = this.§#!!§.shift();
            if(_loc1_.parent == this)
            {
               this.removeChild(_loc1_);
            }
            _loc1_.§^!%§();
         }
         while(this.§>;§.length > 0)
         {
            _loc1_ = this.§>;§.shift();
            if(_loc1_.parent == this)
            {
               this.removeChild(_loc1_);
            }
            _loc1_.§^!%§();
         }
         this.§#!!§ = new Vector.<§7q§>(0);
         this.§>;§ = new Vector.<§7q§>(0);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§7q§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:§7q§ = null;
         param1 /= 20;
         while(this.§#!!§.length > 0)
         {
            _loc5_ = this.§#!!§.shift();
            _loc6_ = Math.random() * (this.§-E§ - this.§8M§) + this.§8M§;
            if(this.§+!4§ == §^"#§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§+!4§ == §<S§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§+!4§ == §[!>§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§+!4§ == §6! §)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§8M§ / 2;
               _loc13_ = this.§-E§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§7!w§ = _loc8_ * _loc6_;
            _loc5_.§"!%§ = _loc9_ * _loc6_;
            _loc5_.x = this.§-_§.x;
            _loc5_.y = this.§-_§.y;
            this.§>;§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§case§ = §"!d§.§>!P§.§7R§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§case§.play();
         }
         var _loc2_:int = this.§>;§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§>;§[_loc4_];
            _loc5_.§"!%§ += this.§,!5§ * param1;
            if(_loc5_.§"!%§ > this.§1!+§)
            {
               _loc5_.§"!%§ = this.§1!+§;
            }
            _loc5_.x += _loc5_.§7!w§ * param1;
            _loc5_.y += _loc5_.§"!%§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.y > this.§1!^§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§>;§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§>;§.splice(_loc4_,1)[0]).parent == this)
               {
                  this.removeChild(_loc14_);
               }
               _loc14_.§^!%§();
               _loc5_.x = -2000;
               _loc5_.y = -2000;
            }
            _loc4_--;
         }
      }
   }
}
