package §<!b§
{
   import §6"r§.§!#A§;
   import §8Z§.§6"w§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §8-§ extends Sprite
   {
      
      public static const §1"l§:int = 0;
      
      public static const §""2§:int = 1;
      
      public static const §=#X§:int = 2;
      
      public static const §1!z§:int = 3;
      
      private static const §`#a§:String = "all";
      
      public static const §=#M§:uint = 40;
       
      
      private const §>j§:Number = 0.3;
      
      private const §"#'§:Number = 25;
      
      private const §?!e§:Number = 10;
      
      private const §,"w§:Number = 9;
      
      private var §9"k§:int;
      
      private var §2!u§:int;
      
      private var §"#h§:Vector.<§>#&§>;
      
      private var §9"c§:Vector.<§>#&§>;
      
      private var §,"[§:Point;
      
      private var §""K§:int;
      
      public function §8-§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:String = "all")
      {
         var _loc10_:§>#&§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         super();
         this.§9"k§ = param1;
         this.§2!u§ = param2;
         var _loc8_:Number = Math.min(§!#A§.§5O§,§!#A§.§+K§);
         var _loc9_:Number = Math.max(§!#A§.§5O§,§!#A§.§+K§);
         param3 /= §!#A§.§+K§;
         param4 /= §!#A§.§5O§;
         this.§""K§ = param5;
         this.§,"[§ = new Point(param3,param4);
         this.§"#h§ = new Vector.<§>#&§>(0);
         this.§9"c§ = new Vector.<§>#&§>(0);
         var _loc13_:int = 0;
         while(_loc13_ < param6)
         {
            (_loc10_ = new §>#&§(Math.random() * 40 + 10,param7)).x = -2000;
            _loc10_.y = -2000;
            this.addChild(_loc10_);
            this.§"#h§[_loc13_] = _loc10_;
            _loc13_++;
         }
         this.scaleX = _loc9_;
         this.scaleY = _loc9_;
      }
      
      public function §;!?§() : void
      {
         var _loc1_:§>#&§ = null;
         while(this.§"#h§.length > 0)
         {
            _loc1_ = this.§"#h§.shift();
            if(_loc1_.parent == this)
            {
               this.removeChild(_loc1_);
            }
            _loc1_.§;!?§();
         }
         while(this.§9"c§.length > 0)
         {
            _loc1_ = this.§9"c§.shift();
            if(_loc1_.parent == this)
            {
               this.removeChild(_loc1_);
            }
            _loc1_.§;!?§();
         }
         this.§"#h§ = new Vector.<§>#&§>(0);
         this.§9"c§ = new Vector.<§>#&§>(0);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§>#&§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:§>#&§ = null;
         param1 /= 20;
         while(this.§"#h§.length > 0)
         {
            _loc5_ = this.§"#h§.shift();
            _loc6_ = Math.random() * (this.§"#'§ - this.§?!e§) + this.§?!e§;
            if(this.§""K§ == §1"l§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§""K§ == §""2§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§""K§ == §=#X§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§""K§ == §1!z§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§?!e§ / 2;
               _loc13_ = this.§"#'§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§4#1§ = _loc8_ * _loc6_;
            _loc5_.§`$!§ = _loc9_ * _loc6_;
            _loc5_.x = this.§,"[§.x;
            _loc5_.y = this.§,"[§.y;
            this.§9"c§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§+#T§ = §6"w§.§ "D§.§""3§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§+#T§.play();
         }
         var _loc2_:int = this.§9"c§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§9"c§[_loc4_];
            _loc5_.§`$!§ += this.§>j§ * param1;
            if(_loc5_.§`$!§ > this.§,"w§)
            {
               _loc5_.§`$!§ = this.§,"w§;
            }
            _loc5_.x += _loc5_.§4#1§ * param1;
            _loc5_.y += _loc5_.§`$!§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.y > this.§2!u§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§9"c§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§9"c§.splice(_loc4_,1)[0]).parent == this)
               {
                  this.removeChild(_loc14_);
               }
               _loc14_.§;!?§();
               _loc5_.x = -2000;
               _loc5_.y = -2000;
            }
            _loc4_--;
         }
      }
   }
}
