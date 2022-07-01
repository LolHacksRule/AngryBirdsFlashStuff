package §3"0§
{
   import §'x§.§?z§;
   import §?h§.§%!Z§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §0"7§ extends Sprite
   {
      
      public static const §^"§:int = 0;
      
      public static const §,0§:int = 1;
      
      public static const §5Y§:int = 2;
      
      public static const §?!C§:int = 3;
       
      
      private const §4!2§:uint = 40;
      
      private const GRAVITY:Number = 0.3;
      
      private const §<F§:Number = 25;
      
      private const §`"6§:Number = 10;
      
      private const §;""§:Number = 9;
      
      private var §>!`§:int;
      
      private var § !U§:int;
      
      private var §'G§:Array;
      
      private var §='§:Array;
      
      private var §-!!§:Point;
      
      private var §29§:int;
      
      private var §%[§:Number;
      
      public function §0"7§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:Number = 0, param8:String = "ParticleStar")
      {
         var _loc9_:§'&§ = null;
         super();
         this.§>!`§ = param1 * §?z§.§'!<§;
         this.§ !U§ = param2 * §?z§.§%!K§;
         this.scrollRect = new Rectangle(0,0,this.§>!`§,this.§ !U§);
         this.§29§ = param5;
         this.§-!!§ = new Point(param3,param4);
         this.§'G§ = [];
         this.§='§ = [];
         var _loc10_:int = 0;
         while(_loc10_ < param6)
         {
            if(param8 == §'&§.§>o§)
            {
               _loc9_ = new § F§();
            }
            else if(param8 == §'&§.§=V§)
            {
               _loc9_ = new §,r§();
            }
            _loc9_.x = -2000;
            _loc9_.y = -2000;
            this.addChild(_loc9_);
            this.§'G§[_loc10_] = _loc9_;
            _loc10_++;
         }
         this.§%[§ = param7;
      }
      
      public function clean() : void
      {
         var _loc1_:§'&§ = null;
         while(this.§'G§.length > 0)
         {
            _loc1_ = this.§'G§.shift();
            _loc1_.clean();
         }
         while(this.§='§.length > 0)
         {
            _loc1_ = this.§='§.shift();
            _loc1_.clean();
         }
         this.§'G§ = [];
         this.§='§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§'&§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Object = null;
         this.§%[§ -= param1;
         if(this.§%[§ > 0)
         {
            return;
         }
         param1 /= 20;
         while(this.§'G§.length > 0)
         {
            _loc5_ = this.§'G§.shift();
            _loc6_ = Math.random() * (this.§<F§ - this.§`"6§) + this.§`"6§;
            if(this.§29§ == §^"§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§29§ == §,0§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§29§ == §5Y§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§29§ == §?!C§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§`"6§ / 2;
               _loc13_ = this.§<F§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§,§ = _loc8_ * _loc6_;
            _loc5_.§'j§ = _loc9_ * _loc6_;
            _loc5_.x = this.§-!!§.x;
            _loc5_.y = this.§-!!§.y;
            this.§='§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§%!a§ = §%!Z§.§if §.§"<§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§%!a§.play();
         }
         var _loc2_:int = this.§='§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§='§[_loc4_];
            _loc5_.§'j§ += this.GRAVITY * param1;
            if(_loc5_.§'j§ > this.§;""§)
            {
               _loc5_.§'j§ = this.§;""§;
            }
            _loc5_.x += _loc5_.§,§ * param1;
            _loc5_.y += _loc5_.§'j§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.x < -_loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.x > this.§>!`§ + _loc5_.width / 2)
            {
               _loc3_ = true;
            }
            else if(_loc5_.y > this.§ !U§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§='§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§='§.splice(_loc4_,1)) is § F§)
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
