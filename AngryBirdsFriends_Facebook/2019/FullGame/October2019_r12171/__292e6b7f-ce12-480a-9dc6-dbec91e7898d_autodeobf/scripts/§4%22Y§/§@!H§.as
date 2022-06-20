package §4"Y§
{
   public class §@!H§
   {
       
      
      protected var §'"s§:String;
      
      protected var §7#&§:Array;
      
      protected var §2#S§:Number;
      
      protected var §#"2§:Number;
      
      protected var §#!1§:Number;
      
      protected var §&a§:Boolean;
      
      protected var §?$@§:Number;
      
      protected var §^!`§:Number;
      
      protected var §8"k§:Number = 0.0;
      
      protected var §?#<§:Number = 0.0;
      
      protected var §!$§:Number = 0.0;
      
      protected var §^"h§:Boolean;
      
      protected var §1!%§:Boolean;
      
      protected var §0#Z§:Boolean;
      
      protected var §3#=§:Vector.<§6"Q§>;
      
      private var §,u§:Vector.<§'#x§>;
      
      protected var §5$E§:Boolean;
      
      protected var §?$D§:String;
      
      public function §@!H§(param1:String, param2:Array, param3:Number, param4:String, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Boolean, param11:Boolean, param12:Boolean, param13:Number, param14:Number, param15:Boolean = false, param16:Boolean = true)
      {
         super();
         this.§'"s§ = param1;
         this.§7#&§ = param2;
         this.§2#S§ = param3;
         this.§#"2§ = param6;
         this.§^"h§ = param10;
         this.§#!1§ = param5 != 0 ? Number(param5) : Number(1);
         this.§&a§ = param11;
         this.§?$@§ = param7;
         this.§^!`§ = param8;
         this.§8"k§ = param9;
         this.§?#<§ = param13;
         this.§!$§ = param14;
         this.§5$E§ = param12;
         this.§?$D§ = param4;
         this.§1!%§ = param15;
         this.§3#=§ = new Vector.<§6"Q§>();
         this.§,u§ = new Vector.<§'#x§>();
         this.§0#Z§ = param16;
      }
      
      public function get spriteName() : String
      {
         return this.§'"s§;
      }
      
      public function get §2#;§() : Array
      {
         return this.§7#&§;
      }
      
      public function get frameTime() : Number
      {
         return this.§2#S§;
      }
      
      public function get color() : String
      {
         return this.§?$D§;
      }
      
      public function get speed() : Number
      {
         return this.§#"2§;
      }
      
      public function get scale() : Number
      {
         return this.§#!1§;
      }
      
      public function get xOffset() : Number
      {
         return this.§?$@§;
      }
      
      public function get yOffset() : Number
      {
         return this.§^!`§;
      }
      
      public function get tileable() : Boolean
      {
         return this.§&a§;
      }
      
      public function get highQuality() : Boolean
      {
         return this.§1!%§;
      }
      
      public function get foreground() : Boolean
      {
         return this.§^"h§;
      }
      
      public function get optional() : Boolean
      {
         return this.§5$E§;
      }
      
      public function get velocityX() : Number
      {
         return this.§8"k§;
      }
      
      public function get moveStartOffsetX() : Number
      {
         return this.§?#<§;
      }
      
      public function get moveEndOffsetX() : Number
      {
         return this.§!$§;
      }
      
      public function get §9#%§() : int
      {
         return this.§3#=§.length;
      }
      
      public function get §[U§() : int
      {
         return this.§,u§.length;
      }
      
      public function get §'A§() : Boolean
      {
         return this.§0#Z§;
      }
      
      public function set §'A§(param1:Boolean) : void
      {
         this.§0#Z§ = param1;
      }
      
      public function §&T§(param1:int) : §6"Q§
      {
         return this.§3#=§[param1];
      }
      
      public function §6#?§(param1:int) : §'#x§
      {
         return this.§,u§[param1];
      }
      
      public function §<"T§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§6"Q§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = new §6"Q§();
            _loc3_.id = _loc2_.@id.toString();
            _loc3_.x = Number(Number(_loc2_.@x)) || Number(0);
            _loc3_.y = Number(Number(_loc2_.@y)) || Number(0);
            _loc3_.rotation = Number(Number(_loc2_.@rotation)) || Number(0);
            _loc3_.scale = Number(Number(_loc2_.@scale)) || Number(1);
            _loc3_.alpha = Number(Number(_loc2_.@alpha)) || Number(1);
            _loc3_.fastForwardsAfterAdd = Number(Number(_loc2_.@fastForwardsAfterAdd)) || Number(0);
            _loc3_.§6'§ = _loc2_.@behindGraphic.toString().toLowerCase() == "true";
            this.§3#=§.push(_loc3_);
         }
      }
      
      public function §"#>§(param1:XMLList) : void
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
            this.§]#P§(_loc4_,_loc3_.@type,_loc3_.@tween,_loc3_.@xOffsetPercent,_loc3_.@yOffsetPercent,_loc3_.@duration,_loc3_.@trigger,_loc3_.@scale,_loc3_.@sound,_loc5_,_loc6_,_loc7_,null,_loc3_.@scale);
         }
      }
      
      public function §]#P§(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number, param7:String, param8:Number, param9:String, param10:Number, param11:Boolean, param12:Boolean, param13:Object, param14:Number) : void
      {
         var _loc15_:§'#x§ = new §'#x§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14);
         this.§,u§.push(_loc15_);
      }
   }
}
