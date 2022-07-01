package §`!_§
{
   import §><§.§0!M§;
   import com.angrybirds.§6U§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §'!N§ extends Sprite
   {
      
      public static const §5!P§:int = 0;
      
      public static const §!^§:int = 1;
      
      public static const §0q§:int = 2;
      
      public static const §[!i§:int = 3;
      
      private static const §]G§:String = "all";
      
      public static const §@x§:uint = 40;
       
      
      private const §'"!§:Number = 0.3;
      
      private const §@!Z§:Number = 25;
      
      private const §&9§:Number = 10;
      
      private const §7""§:Number = 9;
      
      private var §=!F§:int;
      
      private var §,!N§:int;
      
      private var §0!5§:Vector.<§86§>;
      
      private var §#"4§:Vector.<§86§>;
      
      private var §-F§:Point;
      
      private var §9!9§:int;
      
      public function §'!N§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:String = "all")
      {
         var _loc10_:§86§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         super();
         this.§=!F§ = param1;
         this.§,!N§ = param2;
         var _loc8_:Number = Math.min(§6U§.§7Z§,§6U§.§7!K§);
         var _loc9_:Number = Math.max(§6U§.§7Z§,§6U§.§7!K§);
         param3 /= §6U§.§7!K§;
         param4 /= §6U§.§7Z§;
         this.§9!9§ = param5;
         this.§-F§ = new Point(param3,param4);
         this.§0!5§ = new Vector.<§86§>(0);
         this.§#"4§ = new Vector.<§86§>(0);
         var _loc13_:int = 0;
         while(_loc13_ < param6)
         {
            (_loc10_ = new §86§(Math.random() * 40 + 10,param7)).x = -2000;
            _loc10_.y = -2000;
            this.addChild(_loc10_);
            this.§0!5§[_loc13_] = _loc10_;
            _loc13_++;
         }
         this.scaleX = _loc9_;
         this.scaleY = _loc9_;
      }
      
      public function §=!I§() : void
      {
         var _loc1_:§86§ = null;
         while(this.§0!5§.length > 0)
         {
            _loc1_ = this.§0!5§.shift();
            if(_loc1_.parent == this)
            {
               this.removeChild(_loc1_);
            }
            _loc1_.§=!I§();
         }
         while(this.§#"4§.length > 0)
         {
            _loc1_ = this.§#"4§.shift();
            if(_loc1_.parent == this)
            {
               this.removeChild(_loc1_);
            }
            _loc1_.§=!I§();
         }
         this.§0!5§ = new Vector.<§86§>(0);
         this.§#"4§ = new Vector.<§86§>(0);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§86§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:§86§ = null;
         param1 /= 20;
         while(this.§0!5§.length > 0)
         {
            _loc5_ = this.§0!5§.shift();
            _loc6_ = Math.random() * (this.§@!Z§ - this.§&9§) + this.§&9§;
            if(this.§9!9§ == §5!P§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§9!9§ == §!^§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§9!9§ == §0q§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§9!9§ == §[!i§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§&9§ / 2;
               _loc13_ = this.§@!Z§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§2!T§ = _loc8_ * _loc6_;
            _loc5_.§ P§ = _loc9_ * _loc6_;
            _loc5_.x = this.§-F§.x;
            _loc5_.y = this.§-F§.y;
            this.§#"4§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§?"'§ = §0!M§.§?!+§.§3d§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§?"'§.play();
         }
         var _loc2_:int = this.§#"4§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§#"4§[_loc4_];
            _loc5_.§ P§ += this.§'"!§ * param1;
            if(_loc5_.§ P§ > this.§7""§)
            {
               _loc5_.§ P§ = this.§7""§;
            }
            _loc5_.x += _loc5_.§2!T§ * param1;
            _loc5_.y += _loc5_.§ P§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.y > this.§,!N§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§#"4§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§#"4§.splice(_loc4_,1)[0]).parent == this)
               {
                  this.removeChild(_loc14_);
               }
               _loc14_.§=!I§();
               _loc5_.x = -2000;
               _loc5_.y = -2000;
            }
            _loc4_--;
         }
      }
   }
}
