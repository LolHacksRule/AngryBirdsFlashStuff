package §5"t§
{
   import §&$3§.§"!&§;
   import §`#@§.§7n§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §7"J§ extends Sprite
   {
      
      public static const §6#v§:int = 0;
      
      public static const §]"C§:int = 1;
      
      public static const §,]§:int = 2;
      
      public static const §3@§:int = 3;
      
      private static const §@"m§:String = "all";
      
      public static const §!A§:uint = 40;
       
      
      private const §4#;§:Number = 0.3;
      
      private const §0$0§:Number = 25;
      
      private const §,$9§:Number = 10;
      
      private const §6"3§:Number = 9;
      
      private var §each §:int;
      
      private var §1#i§:int;
      
      private var §`#4§:Vector.<§7"Y§>;
      
      private var §>"E§:Vector.<§7"Y§>;
      
      private var §9$0§:Point;
      
      private var §;"v§:int;
      
      public function §7"J§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:String = "all")
      {
         var _loc10_:§7"Y§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         super();
         this.§each § = param1;
         this.§1#i§ = param2;
         var _loc8_:Number = Math.min(§7n§.§'#M§,§7n§.§9#o§);
         var _loc9_:Number = Math.max(§7n§.§'#M§,§7n§.§9#o§);
         param3 /= §7n§.§9#o§;
         param4 /= §7n§.§'#M§;
         this.§;"v§ = param5;
         this.§9$0§ = new Point(param3,param4);
         this.§`#4§ = new Vector.<§7"Y§>(0);
         this.§>"E§ = new Vector.<§7"Y§>(0);
         var _loc13_:int = 0;
         while(_loc13_ < param6)
         {
            (_loc10_ = new §7"Y§(Math.random() * 40 + 10,param7)).x = -2000;
            _loc10_.y = -2000;
            this.addChild(_loc10_);
            this.§`#4§[_loc13_] = _loc10_;
            _loc13_++;
         }
         this.scaleX = _loc9_;
         this.scaleY = _loc9_;
      }
      
      public function §"#%§() : void
      {
         var _loc1_:§7"Y§ = null;
         while(this.§`#4§.length > 0)
         {
            _loc1_ = this.§`#4§.shift();
            if(_loc1_.parent == this)
            {
               this.removeChild(_loc1_);
            }
            _loc1_.§"#%§();
         }
         while(this.§>"E§.length > 0)
         {
            _loc1_ = this.§>"E§.shift();
            if(_loc1_.parent == this)
            {
               this.removeChild(_loc1_);
            }
            _loc1_.§"#%§();
         }
         this.§`#4§ = new Vector.<§7"Y§>(0);
         this.§>"E§ = new Vector.<§7"Y§>(0);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:§7"Y§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:§7"Y§ = null;
         param1 /= 20;
         while(this.§`#4§.length > 0)
         {
            _loc5_ = this.§`#4§.shift();
            _loc6_ = Math.random() * (this.§0$0§ - this.§,$9§) + this.§,$9§;
            if(this.§;"v§ == §6#v§)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.§;"v§ == §]"C§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.§;"v§ == §,]§)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.§;"v§ == §3@§)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.§,$9§ / 2;
               _loc13_ = this.§0$0§ / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.§4"Q§ = _loc8_ * _loc6_;
            _loc5_.§7!B§ = _loc9_ * _loc6_;
            _loc5_.x = this.§9$0§.x;
            _loc5_.y = this.§9$0§.y;
            this.§>"E§.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.§=!=§ = §"!&§.§`"H§.§1"W§(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.§=!=§.play();
         }
         var _loc2_:int = this.§>"E§.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.§>"E§[_loc4_];
            _loc5_.§7!B§ += this.§4#;§ * param1;
            if(_loc5_.§7!B§ > this.§6"3§)
            {
               _loc5_.§7!B§ = this.§6"3§;
            }
            _loc5_.x += _loc5_.§4"Q§ * param1;
            _loc5_.y += _loc5_.§7!B§ * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.y > this.§1#i§ + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.§>"E§.length > 0 && _loc3_)
            {
               if((_loc14_ = this.§>"E§.splice(_loc4_,1)[0]).parent == this)
               {
                  this.removeChild(_loc14_);
               }
               _loc14_.§"#%§();
               _loc5_.x = -2000;
               _loc5_.y = -2000;
            }
            _loc4_--;
         }
      }
   }
}
