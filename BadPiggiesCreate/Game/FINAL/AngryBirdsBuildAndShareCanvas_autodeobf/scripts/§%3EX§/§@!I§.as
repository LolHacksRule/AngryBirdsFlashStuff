package §>X§
{
   import §%c§.§=!X§;
   import §&"'§.§7!E§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §@!I§ extends Sprite
   {
      
      public static const §;0§:int = 0;
      
      public static const §<!-§:int = 1;
      
      public static const §`N§:int = 2;
      
      public static const §4"5§:int = 3;
       
      
      private const §&!u§:uint = 40;
      
      private const GRAVITY:Number = 0.3;
      
      private const §<W§:Number = 25;
      
      private const §2a§:Number = 10;
      
      private const §2!Q§:Number = 9;
      
      private var §`0§:int;
      
      private var §5"+§:int;
      
      private var §,f§:Array;
      
      private var §2"&§:Array;
      
      private var §&`§:Point;
      
      private var §!!w§:int;
      
      private var §0!<§:Number;
      
      public function §@!I§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:Number = 0, param8:String = "ParticleStar")
      {
         var _loc9_:§;!&§ = null;
         super();
         this.§`0§ = param1 * §=!X§.§@"6§;
         this.§5"+§ = param2 * §=!X§.§ !4§;
         this.scrollRect = new Rectangle(0,0,this.§`0§,this.§5"+§);
         this.§!!w§ = param5;
         this.§&`§ = new Point(param3,param4);
         this.§,f§ = [];
         this.§2"&§ = [];
         var _loc10_:int = 0;
         while(_loc10_ < param6)
         {
            if(param8 == §;!&§.§9G§)
            {
               _loc9_ = new §;!<§();
            }
            else if(param8 == §;!&§.§3!O§)
            {
               _loc9_ = new §^!x§();
            }
            _loc9_.x = -2000;
            _loc9_.y = -2000;
            this.addChild(_loc9_);
            this.§,f§[_loc10_] = _loc9_;
            _loc10_++;
         }
         this.§0!<§ = param7;
      }
      
      public function clean() : void
      {
         var _loc1_:§;!&§ = null;
         while(this.§,f§.length > 0)
         {
            _loc1_ = this.§,f§.shift();
            _loc1_.clean();
         }
         while(this.§2"&§.length > 0)
         {
            _loc1_ = this.§2"&§.shift();
            _loc1_.clean();
         }
         this.§,f§ = [];
         this.§2"&§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§;!&§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Object = null;
         this.§0!<§ -= param1;
         if(this.§0!<§ > 0)
         {
            return;
         }
         param1 /= 20;
         while(this.§,f§.length > 0)
         {
            _loc5_ = this.§,f§.shift();
            _loc6_ = Math.random() * (this.§<W§ - this.§2a§) + this.§2a§;
            if(this.§!!w§ == §;0§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§!!w§ == §<!-§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§!!w§ == §`N§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§!!w§ == §4"5§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§2a§ / 2;
               _loc13_ = this.§<W§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§6U§ = _loc8_ * _loc6_;
            _loc5_.§0!0§ = _loc9_ * _loc6_;
            _loc5_.x = this.§&`§.x;
            _loc5_.y = this.§&`§.y;
            this.§2"&§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§#!T§ = §7!E§.§2=§.§<!C§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§#!T§.play();
         }
         var _loc2_:int = this.§2"&§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§2"&§[_loc4_];
            _loc5_.§0!0§ += this.GRAVITY * param1;
            if(_loc5_.§0!0§ > this.§2!Q§)
            {
               _loc5_.§0!0§ = this.§2!Q§;
            }
            _loc5_.x += _loc5_.§6U§ * param1;
            _loc5_.y += _loc5_.§0!0§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§`0§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§5"+§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§2"&§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§2"&§.splice(_loc4_,1)) is §;!<§)
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
