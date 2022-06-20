package §6!6§
{
   public class §%#1§
   {
       
      
      protected var §7o§:String;
      
      protected var §+!,§:Number;
      
      protected var § "A§:Number;
      
      protected var §>P§:Boolean;
      
      protected var §?""§:Number;
      
      protected var §"#T§:Number;
      
      protected var §&W§:Number = 0.0;
      
      protected var §'!"§:Number = 0.0;
      
      protected var §!x§:Number = 0.0;
      
      protected var § ]§:Boolean;
      
      protected var §=#h§:Boolean;
      
      protected var §4!K§:Vector.<§-#P§>;
      
      private var §7#`§:Vector.<§@"W§>;
      
      protected var §?!n§:Boolean;
      
      protected var §'"V§:String;
      
      public function §%#1§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Boolean, param9:Boolean, param10:Boolean, param11:Number, param12:Number, param13:Boolean = false)
      {
         super();
         this.§7o§ = param1;
         this.§+!,§ = param4;
         this.§ ]§ = param8;
         this.§ "A§ = param3 != 0 ? Number(param3) : Number(1);
         this.§>P§ = param9;
         this.§?""§ = param5;
         this.§"#T§ = param6;
         this.§&W§ = param7;
         this.§'!"§ = param11;
         this.§!x§ = param12;
         this.§?!n§ = param10;
         this.§'"V§ = param2;
         this.§=#h§ = param13;
         this.§4!K§ = new Vector.<§-#P§>();
         this.§7#`§ = new Vector.<§@"W§>();
      }
      
      public function get spriteName() : String
      {
         return this.§7o§;
      }
      
      public function get color() : String
      {
         return this.§'"V§;
      }
      
      public function get speed() : Number
      {
         return this.§+!,§;
      }
      
      public function get scale() : Number
      {
         return this.§ "A§;
      }
      
      public function get xOffset() : Number
      {
         return this.§?""§;
      }
      
      public function get yOffset() : Number
      {
         return this.§"#T§;
      }
      
      public function get tileable() : Boolean
      {
         return this.§>P§;
      }
      
      public function get highQuality() : Boolean
      {
         return this.§=#h§;
      }
      
      public function get foreground() : Boolean
      {
         return this.§ ]§;
      }
      
      public function get optional() : Boolean
      {
         return this.§?!n§;
      }
      
      public function get velocityX() : Number
      {
         return this.§&W§;
      }
      
      public function get moveStartOffsetX() : Number
      {
         return this.§'!"§;
      }
      
      public function get moveEndOffsetX() : Number
      {
         return this.§!x§;
      }
      
      public function get §;!`§() : int
      {
         return this.§4!K§.length;
      }
      
      public function get §&! §() : int
      {
         return this.§7#`§.length;
      }
      
      public function §>!U§(param1:int) : §-#P§
      {
         return this.§4!K§[param1];
      }
      
      public function §["5§(param1:int) : §@"W§
      {
         return this.§7#`§[param1];
      }
      
      public function §>!Q§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§-#P§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = new §-#P§();
            _loc3_.id = _loc2_.@id.toString();
            _loc3_.x = Number(Number(_loc2_.@x)) || Number(0);
            _loc3_.y = Number(Number(_loc2_.@y)) || Number(0);
            _loc3_.rotation = Number(Number(_loc2_.@rotation)) || Number(0);
            _loc3_.scale = Number(Number(_loc2_.@scale)) || Number(1);
            _loc3_.alpha = Number(Number(_loc2_.@alpha)) || Number(1);
            _loc3_.fastForwardsAfterAdd = Number(Number(_loc2_.@fastForwardsAfterAdd)) || Number(0);
            _loc3_.§do § = _loc2_.@behindGraphic.toString().toLowerCase() == "true";
            this.§4!K§.push(_loc3_);
         }
      }
      
      public function §##G§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§@"W§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = new §@"W§(_loc2_.@type,_loc2_.@tween,_loc2_.@xOffsetPercent,_loc2_.@yOffsetPercent,_loc2_.@duration,_loc2_.@trigger,_loc2_.@sound,_loc2_.@scale);
            this.§7#`§.push(_loc3_);
         }
      }
   }
}
