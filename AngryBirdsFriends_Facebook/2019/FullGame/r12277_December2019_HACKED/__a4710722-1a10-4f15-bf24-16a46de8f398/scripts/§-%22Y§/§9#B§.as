package §-"Y§
{
   import § null§.§5"<§;
   import §+!n§.§+!p§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §9#B§ extends Sprite
   {
      
      public static const §<!h§:int = 0;
      
      public static const §6! §:int = 1;
      
      public static const §##I§:int = 2;
      
      public static const §9h§:int = 3;
      
      private static const §;#V§:String = "all";
      
      public static const §?-§:uint = 40;
       
      
      private const §2#x§:Number = 0.3;
      
      private const §!1§:Number = 25;
      
      private const §-Y§:Number = 10;
      
      private const §'#c§:Number = 9;
      
      private var §#"n§:int;
      
      private var §9"p§:int;
      
      private var §-U§:Vector.<§,#B§>;
      
      private var §1$C§:Vector.<§,#B§>;
      
      private var §?"[§:Point;
      
      private var §["g§:int;
      
      public function §9#B§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:String = "all")
      {
         var _loc10_:§,#B§ = null;
         super();
         this.§#"n§ = param1;
         this.§9"p§ = param2;
         Number(Math.min(§+!p§.§"#m§,§+!p§.§<#,§));
         var _loc9_:Number = Math.max(§+!p§.§"#m§,§+!p§.§<#,§);
         param3 /= §+!p§.§<#,§;
         param4 /= §+!p§.§"#m§;
         this.§["g§ = param5;
         this.§?"[§ = new Point(param3,param4);
         this.§-U§ = new Vector.<§,#B§>(0);
         this.§1$C§ = new Vector.<§,#B§>(0);
         var _loc13_:int = 0;
         while(_loc13_ < param6)
         {
            (_loc10_ = new §,#B§(Math.random() * 40 + 10,param7)).x = -2000;
            _loc10_.y = -2000;
            this.addChild(_loc10_);
            this.§-U§[_loc13_] = _loc10_;
            _loc13_++;
         }
         this.scaleX = _loc9_;
         this.scaleY = _loc9_;
      }
      
      public function § !1§() : void
      {
         var _loc1_:§,#B§ = null;
         while(this.§-U§.length > 0)
         {
            _loc1_ = this.§-U§.shift();
            if(_loc1_.parent == this)
            {
               this.removeChild(_loc1_);
            }
            _loc1_.§ !1§();
         }
         while(this.§1$C§.length > 0)
         {
            _loc1_ = this.§1$C§.shift();
            if(_loc1_.parent == this)
            {
               this.removeChild(_loc1_);
            }
            _loc1_.§ !1§();
         }
         this.§-U§ = new Vector.<§,#B§>(0);
         this.§1$C§ = new Vector.<§,#B§>(0);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§,#B§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:§,#B§ = null;
         param1 /= 20;
         while(this.§-U§.length > 0)
         {
            _loc5_ = this.§-U§.shift();
            _loc6_ = Math.random() * (this.§!1§ - this.§-Y§) + this.§-Y§;
            if(this.§["g§ == §<!h§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§["g§ == §6! §)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§["g§ == §##I§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§["g§ == §9h§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§-Y§ / 2;
               _loc13_ = this.§!1§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§`"0§ = _loc8_ * _loc6_;
            _loc5_.§2!e§ = _loc9_ * _loc6_;
            _loc5_.x = this.§?"[§.x;
            _loc5_.y = this.§?"[§.y;
            this.§1$C§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§]#B§ = §5"<§.§3"1§.§3#§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§]#B§.play();
         }
         var _loc2_:int = this.§1$C§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§1$C§[_loc4_];
            _loc5_.§2!e§ += this.§2#x§ * param1;
            if(_loc5_.§2!e§ > this.§'#c§)
            {
               _loc5_.§2!e§ = this.§'#c§;
            }
            _loc5_.x += _loc5_.§`"0§ * param1;
            _loc5_.y += _loc5_.§2!e§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.y > this.§9"p§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§1$C§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§1$C§.splice(_loc4_,1)[0]).parent == this)
               {
                  this.removeChild(_loc14_);
               }
               _loc14_.§ !1§();
               _loc5_.x = -2000;
               _loc5_.y = -2000;
            }
            _loc4_--;
         }
      }
   }
}
