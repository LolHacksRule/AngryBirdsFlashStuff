package §#!S§
{
   public class §?##§
   {
       
      
      protected var §3#Q§:String;
      
      protected var §0Y§:Array;
      
      protected var § q§:Number;
      
      protected var §+#9§:Number;
      
      protected var §6#q§:Number;
      
      protected var §9#V§:Boolean;
      
      protected var §5#?§:Number;
      
      protected var §4#§:Number;
      
      protected var §4"!§:Number = 0.0;
      
      protected var §^"#§:Number = 0.0;
      
      protected var §=j§:Number = 0.0;
      
      protected var §5"0§:Boolean;
      
      protected var §-"Z§:Boolean;
      
      protected var §?!v§:Boolean;
      
      protected var §6#E§:Vector.<§9"@§>;
      
      private var §^#m§:Vector.<§^!5§>;
      
      protected var § $2§:Boolean;
      
      protected var §5#n§:String;
      
      public function §?##§(param1:String, param2:Array, param3:Number, param4:String, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Boolean, param11:Boolean, param12:Boolean, param13:Number, param14:Number, param15:Boolean = false, param16:Boolean = true)
      {
         super();
         this.§3#Q§ = param1;
         this.§0Y§ = param2;
         this.§ q§ = param3;
         this.§+#9§ = param6;
         this.§5"0§ = param10;
         this.§6#q§ = param5 != 0 ? Number(param5) : Number(1);
         this.§9#V§ = param11;
         this.§5#?§ = param7;
         this.§4#§ = param8;
         this.§4"!§ = param9;
         this.§^"#§ = param13;
         this.§=j§ = param14;
         this.§ $2§ = param12;
         this.§5#n§ = param4;
         this.§-"Z§ = param15;
         this.§6#E§ = new Vector.<§9"@§>();
         this.§^#m§ = new Vector.<§^!5§>();
         this.§?!v§ = param16;
      }
      
      public function get spriteName() : String
      {
         return this.§3#Q§;
      }
      
      public function get §!#o§() : Array
      {
         return this.§0Y§;
      }
      
      public function get frameTime() : Number
      {
         return this.§ q§;
      }
      
      public function get color() : String
      {
         return this.§5#n§;
      }
      
      public function get speed() : Number
      {
         return this.§+#9§;
      }
      
      public function get scale() : Number
      {
         return this.§6#q§;
      }
      
      public function get xOffset() : Number
      {
         return this.§5#?§;
      }
      
      public function get yOffset() : Number
      {
         return this.§4#§;
      }
      
      public function get tileable() : Boolean
      {
         return this.§9#V§;
      }
      
      public function get highQuality() : Boolean
      {
         return this.§-"Z§;
      }
      
      public function get foreground() : Boolean
      {
         return this.§5"0§;
      }
      
      public function get optional() : Boolean
      {
         return this.§ $2§;
      }
      
      public function get velocityX() : Number
      {
         return this.§4"!§;
      }
      
      public function get moveStartOffsetX() : Number
      {
         return this.§^"#§;
      }
      
      public function get moveEndOffsetX() : Number
      {
         return this.§=j§;
      }
      
      public function get §7!G§() : int
      {
         return this.§6#E§.length;
      }
      
      public function get § "'§() : int
      {
         return this.§^#m§.length;
      }
      
      public function get §0$?§() : Boolean
      {
         return this.§?!v§;
      }
      
      public function set §0$?§(param1:Boolean) : void
      {
         this.§?!v§ = param1;
      }
      
      public function §'"q§(param1:int) : §9"@§
      {
         return this.§6#E§[param1];
      }
      
      public function §0$0§(param1:int) : §^!5§
      {
         return this.§^#m§[param1];
      }
      
      public function §&#7§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§9"@§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = new §9"@§();
            _loc3_.id = _loc2_.@id.toString();
            _loc3_.x = Number(Number(_loc2_.@x)) || Number(0);
            _loc3_.y = Number(Number(_loc2_.@y)) || Number(0);
            _loc3_.rotation = Number(Number(_loc2_.@rotation)) || Number(0);
            _loc3_.scale = Number(Number(_loc2_.@scale)) || Number(1);
            _loc3_.alpha = Number(Number(_loc2_.@alpha)) || Number(1);
            _loc3_.fastForwardsAfterAdd = Number(Number(_loc2_.@fastForwardsAfterAdd)) || Number(0);
            _loc3_.§[#=§ = _loc2_.@behindGraphic.toString().toLowerCase() == "true";
            this.§6#E§.push(_loc3_);
         }
      }
      
      public function §;2§(param1:XMLList) : void
      {
         var _loc3_:XML = null;
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = false;
         var _loc2_:int = 1;
         for each(_loc3_ in param1)
         {
            _loc4_ = "default" + _loc2_;
            _loc2_++;
            _loc5_ = 1;
            _loc6_ = false;
            _loc7_ = true;
            if(_loc3_.@name)
            {
               _loc4_ = _loc3_.@name;
            }
            if(_loc3_.@soundVolume)
            {
               _loc5_ = _loc3_.@soundVolume;
            }
            if(_loc3_.@soundLoop)
            {
               _loc6_ = _loc3_.@soundLoop;
            }
            if(_loc3_.@visible)
            {
               _loc7_ = _loc3_.@visible;
            }
            this.§[C§(_loc4_,_loc3_.@type,_loc3_.@tween,_loc3_.@xOffsetPercent,_loc3_.@yOffsetPercent,_loc3_.@duration,_loc3_.@trigger,_loc3_.@scale,_loc3_.@sound,_loc5_,_loc6_,_loc7_,null,_loc3_.@scale);
         }
      }
      
      public function §[C§(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number, param7:String, param8:Number, param9:String, param10:Number, param11:Boolean, param12:Boolean, param13:Object, param14:Number) : void
      {
         var _loc15_:§^!5§ = new §^!5§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14);
         this.§^#m§.push(_loc15_);
      }
   }
}
