package §2!a§
{
   import §3!`§.§8h§;
   import §=F§.§"n§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §<@§ extends Sprite
   {
      
      public static const §!;§:int = 0;
      
      public static const §;!M§:int = 1;
      
      public static const §'!c§:int = 2;
      
      public static const §]8§:int = 3;
       
      
      private const §&!"§:uint = 40;
      
      private const §9,§:Number = 0.3;
      
      private const §4#§:Number = 25;
      
      private const §!!>§:Number = 10;
      
      private const §?J§:Number = 9;
      
      private var §80§:int;
      
      private var §'!!§:int;
      
      private var §<>§:Array;
      
      private var §[!F§:Array;
      
      private var §+!b§:Point;
      
      private var §5F§:int;
      
      private var §]p§:Number;
      
      public function §<@§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:Number = 0)
      {
         var _loc8_:§;6§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         super();
         this.scrollRect = new Rectangle(0,0,param1,param2);
         this.§80§ = param1 * §"n§.§#"§;
         this.§'!!§ = param2 * §"n§.§+l§;
         this.§5F§ = param5;
         this.§+!b§ = new Point(param3,param4);
         this.§<>§ = [];
         this.§[!F§ = [];
         var _loc11_:int = 0;
         while(_loc11_ < param6)
         {
            (_loc8_ = new §;6§(Math.random() * 40 + 10)).x = -2000;
            _loc8_.y = -2000;
            this.addChild(_loc8_);
            this.§<>§[_loc11_] = _loc8_;
            _loc11_++;
         }
         this.§]p§ = param7;
      }
      
      public function clean() : void
      {
         var _loc1_:§;6§ = null;
         while(this.§<>§.length > 0)
         {
            _loc1_ = this.§<>§.shift();
            _loc1_.clean();
         }
         while(this.§[!F§.length > 0)
         {
            _loc1_ = this.§[!F§.shift();
            _loc1_.clean();
         }
         this.§<>§ = [];
         this.§[!F§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§;6§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Object = null;
         this.§]p§ -= param1;
         if(this.§]p§ > 0)
         {
            return;
         }
         param1 /= 20;
         while(this.§<>§.length > 0)
         {
            _loc5_ = this.§<>§.shift();
            _loc6_ = Math.random() * (this.§4#§ - this.§!!>§) + this.§!!>§;
            if(this.§5F§ == §!;§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§5F§ == §;!M§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§5F§ == §'!c§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§5F§ == §]8§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§!!>§ / 2;
               _loc13_ = this.§4#§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§12§ = _loc8_ * _loc6_;
            _loc5_.§]^§ = _loc9_ * _loc6_;
            _loc5_.x = this.§+!b§.x;
            _loc5_.y = this.§+!b§.y;
            this.§[!F§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§4!S§ = §8h§.§`G§.§[O§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§4!S§.play();
         }
         var _loc2_:int = this.§[!F§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§[!F§[_loc4_];
            _loc5_.§]^§ += this.§9,§ * param1;
            if(_loc5_.§]^§ > this.§?J§)
            {
               _loc5_.§]^§ = this.§?J§;
            }
            _loc5_.x += _loc5_.§12§ * param1;
            _loc5_.y += _loc5_.§]^§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§80§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§'!!§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§[!F§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§[!F§.splice(_loc4_,1)) is §;6§)
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
