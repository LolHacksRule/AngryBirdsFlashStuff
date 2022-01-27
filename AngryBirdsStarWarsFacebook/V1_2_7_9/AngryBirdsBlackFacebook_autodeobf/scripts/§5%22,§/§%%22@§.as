package §5",§
{
   import §'! §.§41§;
   import com.angrybirds.§;!e§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §%"@§ extends Sprite
   {
      
      public static const §'!$§:int = 0;
      
      public static const §`#&§:int = 1;
      
      public static const §=!I§:int = 2;
      
      public static const §,g§:int = 3;
      
      private static const §0"S§:String = "all";
      
      public static const §["]§:uint = 40;
       
      
      private const §@o§:Number = 0.3;
      
      private const §#z§:Number = 25;
      
      private const §="%§:Number = 10;
      
      private const §+!+§:Number = 9;
      
      private var §&h§:int;
      
      private var §,"+§:int;
      
      private var §<!'§:Vector.<§#F§>;
      
      private var §@!J§:Vector.<§#F§>;
      
      private var §1"q§:Point;
      
      private var §&"K§:int;
      
      public function §%"@§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:String = "all")
      {
         var _loc10_:§#F§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         super();
         this.§&h§ = param1;
         this.§,"+§ = param2;
         var _loc8_:Number = Math.min(§;!e§.§1"6§,§;!e§.§7"4§);
         var _loc9_:Number = Math.max(§;!e§.§1"6§,§;!e§.§7"4§);
         param3 /= §;!e§.§7"4§;
         param4 /= §;!e§.§1"6§;
         this.§&"K§ = param5;
         this.§1"q§ = new Point(param3,param4);
         this.§<!'§ = new Vector.<§#F§>(0);
         this.§@!J§ = new Vector.<§#F§>(0);
         var _loc13_:int = 0;
         while(_loc13_ < param6)
         {
            (_loc10_ = new §#F§(Math.random() * 40 + 10,param7)).x = -2000;
            _loc10_.y = -2000;
            this.addChild(_loc10_);
            this.§<!'§[_loc13_] = _loc10_;
            _loc13_++;
         }
         this.scaleX = _loc9_;
         this.scaleY = _loc9_;
      }
      
      public function §;!k§() : void
      {
         var _loc1_:§#F§ = null;
         while(this.§<!'§.length > 0)
         {
            _loc1_ = this.§<!'§.shift();
            if(_loc1_.parent == this)
            {
               this.removeChild(_loc1_);
            }
            _loc1_.§;!k§();
         }
         while(this.§@!J§.length > 0)
         {
            _loc1_ = this.§@!J§.shift();
            if(_loc1_.parent == this)
            {
               this.removeChild(_loc1_);
            }
            _loc1_.§;!k§();
         }
         this.§<!'§ = new Vector.<§#F§>(0);
         this.§@!J§ = new Vector.<§#F§>(0);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§#F§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:§#F§ = null;
         param1 /= 20;
         while(this.§<!'§.length > 0)
         {
            _loc5_ = this.§<!'§.shift();
            _loc6_ = Math.random() * (this.§#z§ - this.§="%§) + this.§="%§;
            if(this.§&"K§ == §'!$§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§&"K§ == §`#&§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§&"K§ == §=!I§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§&"K§ == §,g§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§="%§ / 2;
               _loc13_ = this.§#z§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§&[§ = _loc8_ * _loc6_;
            _loc5_.§,!a§ = _loc9_ * _loc6_;
            _loc5_.x = this.§1"q§.x;
            _loc5_.y = this.§1"q§.y;
            this.§@!J§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§6Q§ = §41§.§-G§.§&#'§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§6Q§.play();
         }
         var _loc2_:int = this.§@!J§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§@!J§[_loc4_];
            _loc5_.§,!a§ += this.§@o§ * param1;
            if(_loc5_.§,!a§ > this.§+!+§)
            {
               _loc5_.§,!a§ = this.§+!+§;
            }
            _loc5_.x += _loc5_.§&[§ * param1;
            _loc5_.y += _loc5_.§,!a§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.y > this.§,"+§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§@!J§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§@!J§.splice(_loc4_,1)[0]).parent == this)
               {
                  this.removeChild(_loc14_);
               }
               _loc14_.§;!k§();
               _loc5_.x = -2000;
               _loc5_.y = -2000;
            }
            _loc4_--;
         }
      }
   }
}
