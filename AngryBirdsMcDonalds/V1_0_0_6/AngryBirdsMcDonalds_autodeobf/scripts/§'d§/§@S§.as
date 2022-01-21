package §'d§
{
   import §"f§.§%1§;
   import §#M§.§+!Z§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §@S§ extends Sprite
   {
      
      public static const §%Z§:int = 0;
      
      public static const §0!i§:int = 1;
      
      public static const §!!I§:int = 2;
      
      public static const §"!V§:int = 3;
       
      
      private const §#!]§:uint = 40;
      
      private const §&T§:Number = 0.3;
      
      private const §0!,§:Number = 25;
      
      private const §5!T§:Number = 10;
      
      private const §case §:Number = 9;
      
      private var §!!]§:int;
      
      private var §#^§:int;
      
      private var §>!E§:Array;
      
      private var §@#§:Array;
      
      private var §'!W§:Point;
      
      private var §3W§:int;
      
      private var §?d§:Number;
      
      public function §@S§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:Number = 0)
      {
         var _loc8_:§63§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         super();
         this.scrollRect = new Rectangle(0,0,param1,param2);
         this.§!!]§ = param1 * §+!Z§.§9!E§;
         this.§#^§ = param2 * §+!Z§.§4!k§;
         this.§3W§ = param5;
         this.§'!W§ = new Point(param3,param4);
         this.§>!E§ = [];
         this.§@#§ = [];
         var _loc11_:int = 0;
         while(_loc11_ < param6)
         {
            (_loc8_ = new §63§(Math.random() * 40 + 10)).x = -2000;
            _loc8_.y = -2000;
            this.addChild(_loc8_);
            this.§>!E§[_loc11_] = _loc8_;
            _loc11_++;
         }
         this.§?d§ = param7;
      }
      
      public function clean() : void
      {
         var _loc1_:§63§ = null;
         while(this.§>!E§.length > 0)
         {
            _loc1_ = this.§>!E§.shift();
            _loc1_.clean();
         }
         while(this.§@#§.length > 0)
         {
            _loc1_ = this.§@#§.shift();
            _loc1_.clean();
         }
         this.§>!E§ = [];
         this.§@#§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§63§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Object = null;
         this.§?d§ -= param1;
         if(this.§?d§ > 0)
         {
            return;
         }
         param1 /= 20;
         while(this.§>!E§.length > 0)
         {
            _loc5_ = this.§>!E§.shift();
            _loc6_ = Math.random() * (this.§0!,§ - this.§5!T§) + this.§5!T§;
            if(this.§3W§ == §%Z§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§3W§ == §0!i§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§3W§ == §!!I§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§3W§ == §"!V§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§5!T§ / 2;
               _loc13_ = this.§0!,§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§;!K§ = _loc8_ * _loc6_;
            _loc5_.§%h§ = _loc9_ * _loc6_;
            _loc5_.x = this.§'!W§.x;
            _loc5_.y = this.§'!W§.y;
            this.§@#§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§2!F§ = §%1§.§+j§.§78§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§2!F§.play();
         }
         var _loc2_:int = this.§@#§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§@#§[_loc4_];
            _loc5_.§%h§ += this.§&T§ * param1;
            if(_loc5_.§%h§ > this.§case §)
            {
               _loc5_.§%h§ = this.§case §;
            }
            _loc5_.x += _loc5_.§;!K§ * param1;
            _loc5_.y += _loc5_.§%h§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§!!]§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§#^§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§@#§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§@#§.splice(_loc4_,1)) is §63§)
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
