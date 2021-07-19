package §<!F§
{
   import §?@§.§'^§;
   import com.angrybirds.§&!"§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §?!`§ extends Sprite
   {
      
      public static const §8L§:int = 0;
      
      public static const §^"§:int = 1;
      
      public static const §1m§:int = 2;
      
      public static const §&X§:int = 3;
      
      private static const §?"§:String = "all";
      
      public static const §9!9§:uint = 40;
       
      
      private const §^!@§:Number = 0.3;
      
      private const §3!,§:Number = 25;
      
      private const §?!g§:Number = 10;
      
      private const §7" §:Number = 9;
      
      private var §5N§:int;
      
      private var §,!S§:int;
      
      private var §>!+§:Vector.<§+!D§>;
      
      private var §+!?§:Vector.<§+!D§>;
      
      private var §!!,§:Point;
      
      private var §5! §:int;
      
      public function §?!`§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:String = "all")
      {
         var _loc10_:§+!D§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         super();
         this.§5N§ = param1;
         this.§,!S§ = param2;
         var _loc8_:Number = Math.min(§&!"§.§3H§,§&!"§.§,!C§);
         var _loc9_:Number = Math.max(§&!"§.§3H§,§&!"§.§,!C§);
         param3 /= §&!"§.§,!C§;
         param4 /= §&!"§.§3H§;
         this.§5! § = param5;
         this.§!!,§ = new Point(param3,param4);
         this.§>!+§ = new Vector.<§+!D§>(0);
         this.§+!?§ = new Vector.<§+!D§>(0);
         var _loc13_:int = 0;
         while(_loc13_ < param6)
         {
            (_loc10_ = new §+!D§(Math.random() * 40 + 10,param7)).x = -2000;
            _loc10_.y = -2000;
            this.addChild(_loc10_);
            this.§>!+§[_loc13_] = _loc10_;
            _loc13_++;
         }
         this.scaleX = _loc9_;
         this.scaleY = _loc9_;
      }
      
      public function §9O§() : void
      {
         var _loc1_:§+!D§ = null;
         while(this.§>!+§.length > 0)
         {
            _loc1_ = this.§>!+§.shift();
            if(_loc1_.parent == this)
            {
               this.removeChild(_loc1_);
            }
            _loc1_.§9O§();
         }
         while(this.§+!?§.length > 0)
         {
            _loc1_ = this.§+!?§.shift();
            if(_loc1_.parent == this)
            {
               this.removeChild(_loc1_);
            }
            _loc1_.§9O§();
         }
         this.§>!+§ = new Vector.<§+!D§>(0);
         this.§+!?§ = new Vector.<§+!D§>(0);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§+!D§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:§+!D§ = null;
         param1 /= 20;
         while(this.§>!+§.length > 0)
         {
            _loc5_ = this.§>!+§.shift();
            _loc6_ = Math.random() * (this.§3!,§ - this.§?!g§) + this.§?!g§;
            if(this.§5! § == §8L§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§5! § == §^"§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§5! § == §1m§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§5! § == §&X§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§?!g§ / 2;
               _loc13_ = this.§3!,§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§!!v§ = _loc8_ * _loc6_;
            _loc5_.§-4§ = _loc9_ * _loc6_;
            _loc5_.x = this.§!!,§.x;
            _loc5_.y = this.§!!,§.y;
            this.§+!?§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§0o§ = §'^§.§2Z§.§!!f§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§0o§.play();
         }
         var _loc2_:int = this.§+!?§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§+!?§[_loc4_];
            _loc5_.§-4§ += this.§^!@§ * param1;
            if(_loc5_.§-4§ > this.§7" §)
            {
               _loc5_.§-4§ = this.§7" §;
            }
            _loc5_.x += _loc5_.§!!v§ * param1;
            _loc5_.y += _loc5_.§-4§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.y > this.§,!S§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§+!?§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§+!?§.splice(_loc4_,1)[0]).parent == this)
               {
                  this.removeChild(_loc14_);
               }
               _loc14_.§9O§();
               _loc5_.x = -2000;
               _loc5_.y = -2000;
            }
            _loc4_--;
         }
      }
   }
}
