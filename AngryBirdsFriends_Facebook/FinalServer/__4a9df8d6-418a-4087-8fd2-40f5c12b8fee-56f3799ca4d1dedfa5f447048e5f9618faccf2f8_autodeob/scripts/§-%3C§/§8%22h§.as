package §-<§
{
   public class §8"h§
   {
       
      
      protected var §3!a§:String;
      
      protected var §7"0§:Array;
      
      protected var §3"F§:Number;
      
      protected var §4"W§:Number;
      
      protected var §5>§:Number;
      
      protected var §"#k§:Boolean;
      
      protected var §""f§:Number;
      
      protected var §8",§:Number;
      
      protected var §3#h§:Number = 0.0;
      
      protected var §3"[§:Number = 0.0;
      
      protected var §@!k§:Number = 0.0;
      
      protected var §4Y§:Boolean;
      
      protected var §6#s§:Boolean;
      
      protected var §<"E§:Boolean;
      
      protected var §##>§:Vector.<§4#N§>;
      
      private var §`x§:Vector.<§?!N§>;
      
      protected var § 6§:Boolean;
      
      protected var §0!j§:String;
      
      public function §8"h§(param1:String, param2:Array, param3:Number, param4:String, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Boolean, param11:Boolean, param12:Boolean, param13:Number, param14:Number, param15:Boolean = false, param16:Boolean = true)
      {
         super();
         this.§3!a§ = param1;
         this.§7"0§ = param2;
         this.§3"F§ = param3;
         this.§4"W§ = param6;
         this.§4Y§ = param10;
         this.§5>§ = param5 != 0 ? Number(param5) : Number(1);
         this.§"#k§ = param11;
         this.§""f§ = param7;
         this.§8",§ = param8;
         this.§3#h§ = param9;
         this.§3"[§ = param13;
         this.§@!k§ = param14;
         this.§ 6§ = param12;
         this.§0!j§ = param4;
         this.§6#s§ = param15;
         this.§##>§ = new Vector.<§4#N§>();
         this.§`x§ = new Vector.<§?!N§>();
         this.§<"E§ = param16;
      }
      
      public function get spriteName() : String
      {
         return this.§3!a§;
      }
      
      public function get §7"1§() : Array
      {
         return this.§7"0§;
      }
      
      public function get frameTime() : Number
      {
         return this.§3"F§;
      }
      
      public function get color() : String
      {
         return this.§0!j§;
      }
      
      public function get speed() : Number
      {
         return this.§4"W§;
      }
      
      public function get scale() : Number
      {
         return this.§5>§;
      }
      
      public function get xOffset() : Number
      {
         return this.§""f§;
      }
      
      public function get yOffset() : Number
      {
         return this.§8",§;
      }
      
      public function get tileable() : Boolean
      {
         return this.§"#k§;
      }
      
      public function get highQuality() : Boolean
      {
         return this.§6#s§;
      }
      
      public function get foreground() : Boolean
      {
         return this.§4Y§;
      }
      
      public function get optional() : Boolean
      {
         return this.§ 6§;
      }
      
      public function get velocityX() : Number
      {
         return this.§3#h§;
      }
      
      public function get moveStartOffsetX() : Number
      {
         return this.§3"[§;
      }
      
      public function get moveEndOffsetX() : Number
      {
         return this.§@!k§;
      }
      
      public function get §]e§() : int
      {
         return this.§##>§.length;
      }
      
      public function get §2$$§() : int
      {
         return this.§`x§.length;
      }
      
      public function get §3"L§() : Boolean
      {
         return this.§<"E§;
      }
      
      public function set §3"L§(param1:Boolean) : void
      {
         this.§<"E§ = param1;
      }
      
      public function §-P§(param1:int) : §4#N§
      {
         return this.§##>§[param1];
      }
      
      public function §,1§(param1:int) : §?!N§
      {
         return this.§`x§[param1];
      }
      
      public function §%#t§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§4#N§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = new §4#N§();
            _loc3_.id = _loc2_.@id.toString();
            _loc3_.x = Number(Number(_loc2_.@x)) || Number(0);
            _loc3_.y = Number(Number(_loc2_.@y)) || Number(0);
            _loc3_.rotation = Number(Number(_loc2_.@rotation)) || Number(0);
            _loc3_.scale = Number(Number(_loc2_.@scale)) || Number(1);
            _loc3_.alpha = Number(Number(_loc2_.@alpha)) || Number(1);
            _loc3_.fastForwardsAfterAdd = Number(Number(_loc2_.@fastForwardsAfterAdd)) || Number(0);
            _loc3_.§-"=§ = _loc2_.@behindGraphic.toString().toLowerCase() == "true";
            this.§##>§.push(_loc3_);
         }
      }
      
      public function §%"h§(param1:XMLList) : void
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
            this.§ !=§(_loc4_,_loc3_.@type,_loc3_.@tween,_loc3_.@xOffsetPercent,_loc3_.@yOffsetPercent,_loc3_.@duration,_loc3_.@trigger,_loc3_.@scale,_loc3_.@sound,_loc5_,_loc6_,_loc7_,null,_loc3_.@scale);
         }
      }
      
      public function § !=§(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number, param7:String, param8:Number, param9:String, param10:Number, param11:Boolean, param12:Boolean, param13:Object, param14:Number) : void
      {
         var _loc15_:§?!N§ = new §?!N§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14);
         this.§`x§.push(_loc15_);
      }
   }
}
