package §'!O§
{
   public class §'"8§
   {
       
      
      protected var §"=§:String;
      
      protected var §&#s§:Array;
      
      protected var §0#+§:Number;
      
      protected var §1!Z§:Number;
      
      protected var §6z§:Number;
      
      protected var §!"[§:Boolean;
      
      protected var §6^§:Number;
      
      protected var §;!=§:Number;
      
      protected var §^!_§:Number = 0.0;
      
      protected var §=#+§:Number = 0.0;
      
      protected var § !o§:Number = 0.0;
      
      protected var §3!_§:Boolean;
      
      protected var §%#H§:Boolean;
      
      protected var §0"<§:Boolean;
      
      protected var §6#G§:Vector.<§ !x§>;
      
      private var §!#@§:Vector.<§#$;§>;
      
      protected var §<j§:Boolean;
      
      protected var §[l§:String;
      
      public function §'"8§(param1:String, param2:Array, param3:Number, param4:String, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Boolean, param11:Boolean, param12:Boolean, param13:Number, param14:Number, param15:Boolean = false, param16:Boolean = true)
      {
         super();
         this.§"=§ = param1;
         this.§&#s§ = param2;
         this.§0#+§ = param3;
         this.§1!Z§ = param6;
         this.§3!_§ = param10;
         this.§6z§ = param5 != 0 ? Number(param5) : Number(1);
         this.§!"[§ = param11;
         this.§6^§ = param7;
         this.§;!=§ = param8;
         this.§^!_§ = param9;
         this.§=#+§ = param13;
         this.§ !o§ = param14;
         this.§<j§ = param12;
         this.§[l§ = param4;
         this.§%#H§ = param15;
         this.§6#G§ = new Vector.<§ !x§>();
         this.§!#@§ = new Vector.<§#$;§>();
         this.§0"<§ = param16;
      }
      
      public function get spriteName() : String
      {
         return this.§"=§;
      }
      
      public function get §%#V§() : Array
      {
         return this.§&#s§;
      }
      
      public function get frameTime() : Number
      {
         return this.§0#+§;
      }
      
      public function get color() : String
      {
         return this.§[l§;
      }
      
      public function get speed() : Number
      {
         return this.§1!Z§;
      }
      
      public function get scale() : Number
      {
         return this.§6z§;
      }
      
      public function get xOffset() : Number
      {
         return this.§6^§;
      }
      
      public function get yOffset() : Number
      {
         return this.§;!=§;
      }
      
      public function get tileable() : Boolean
      {
         return this.§!"[§;
      }
      
      public function get highQuality() : Boolean
      {
         return this.§%#H§;
      }
      
      public function get foreground() : Boolean
      {
         return this.§3!_§;
      }
      
      public function get optional() : Boolean
      {
         return this.§<j§;
      }
      
      public function get velocityX() : Number
      {
         return this.§^!_§;
      }
      
      public function get moveStartOffsetX() : Number
      {
         return this.§=#+§;
      }
      
      public function get moveEndOffsetX() : Number
      {
         return this.§ !o§;
      }
      
      public function get §-D§() : int
      {
         return this.§6#G§.length;
      }
      
      public function get §get §() : int
      {
         return this.§!#@§.length;
      }
      
      public function get §=d§() : Boolean
      {
         return this.§0"<§;
      }
      
      public function set §=d§(param1:Boolean) : void
      {
         this.§0"<§ = param1;
      }
      
      public function §5#3§(param1:int) : § !x§
      {
         return this.§6#G§[param1];
      }
      
      public function §]#4§(param1:int) : §#$;§
      {
         return this.§!#@§[param1];
      }
      
      public function §6"X§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§ !x§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = new § !x§();
            _loc3_.id = _loc2_.@id.toString();
            _loc3_.x = Number(Number(_loc2_.@x)) || Number(0);
            _loc3_.y = Number(Number(_loc2_.@y)) || Number(0);
            _loc3_.rotation = Number(Number(_loc2_.@rotation)) || Number(0);
            _loc3_.scale = Number(Number(_loc2_.@scale)) || Number(1);
            _loc3_.alpha = Number(Number(_loc2_.@alpha)) || Number(1);
            _loc3_.fastForwardsAfterAdd = Number(Number(_loc2_.@fastForwardsAfterAdd)) || Number(0);
            _loc3_.§="7§ = _loc2_.@behindGraphic.toString().toLowerCase() == "true";
            this.§6#G§.push(_loc3_);
         }
      }
      
      public function §5"?§(param1:XMLList) : void
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
            this.§&!`§(_loc4_,_loc3_.@type,_loc3_.@tween,_loc3_.@xOffsetPercent,_loc3_.@yOffsetPercent,_loc3_.@duration,_loc3_.@trigger,_loc3_.@scale,_loc3_.@sound,_loc5_,_loc6_,_loc7_,null);
         }
      }
      
      public function §&!`§(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number, param7:String, param8:Number, param9:String, param10:Number, param11:Boolean, param12:Boolean, param13:Object) : void
      {
         var _loc14_:§#$;§ = new §#$;§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
         this.§!#@§.push(_loc14_);
      }
   }
}
