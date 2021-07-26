package §6$8§
{
   public class §]!7§
   {
       
      
      protected var §3#[§:String;
      
      protected var §6$<§:Number;
      
      protected var §^#5§:Number;
      
      protected var §@"<§:Boolean;
      
      protected var §4e§:Number;
      
      protected var §'"H§:Number;
      
      protected var §[$1§:Number = 0.0;
      
      protected var §--§:Number = 0.0;
      
      protected var §5#B§:Number = 0.0;
      
      protected var §-$+§:Boolean;
      
      protected var §@i§:Boolean;
      
      protected var §4#e§:Vector.<§4"p§>;
      
      private var §,!t§:Vector.<§1"_§>;
      
      protected var §9!f§:Boolean;
      
      protected var § !J§:String;
      
      public function §]!7§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Boolean, param9:Boolean, param10:Boolean, param11:Number, param12:Number, param13:Boolean = false)
      {
         super();
         this.§3#[§ = param1;
         this.§6$<§ = param4;
         this.§-$+§ = param8;
         this.§^#5§ = param3 != 0 ? Number(param3) : Number(1);
         this.§@"<§ = param9;
         this.§4e§ = param5;
         this.§'"H§ = param6;
         this.§[$1§ = param7;
         this.§--§ = param11;
         this.§5#B§ = param12;
         this.§9!f§ = param10;
         this.§ !J§ = param2;
         this.§@i§ = param13;
         this.§4#e§ = new Vector.<§4"p§>();
         this.§,!t§ = new Vector.<§1"_§>();
      }
      
      public function get spriteName() : String
      {
         return this.§3#[§;
      }
      
      public function get color() : String
      {
         return this.§ !J§;
      }
      
      public function get speed() : Number
      {
         return this.§6$<§;
      }
      
      public function get scale() : Number
      {
         return this.§^#5§;
      }
      
      public function get xOffset() : Number
      {
         return this.§4e§;
      }
      
      public function get yOffset() : Number
      {
         return this.§'"H§;
      }
      
      public function get tileable() : Boolean
      {
         return this.§@"<§;
      }
      
      public function get highQuality() : Boolean
      {
         return this.§@i§;
      }
      
      public function get foreground() : Boolean
      {
         return this.§-$+§;
      }
      
      public function get optional() : Boolean
      {
         return this.§9!f§;
      }
      
      public function get velocityX() : Number
      {
         return this.§[$1§;
      }
      
      public function get moveStartOffsetX() : Number
      {
         return this.§--§;
      }
      
      public function get moveEndOffsetX() : Number
      {
         return this.§5#B§;
      }
      
      public function get §^!,§() : int
      {
         return this.§4#e§.length;
      }
      
      public function get §9!M§() : int
      {
         return this.§,!t§.length;
      }
      
      public function §+w§(param1:int) : §4"p§
      {
         return this.§4#e§[param1];
      }
      
      public function §5!§(param1:int) : §1"_§
      {
         return this.§,!t§[param1];
      }
      
      public function §##D§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§4"p§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = new §4"p§();
            _loc3_.id = _loc2_.@id.toString();
            _loc3_.x = Number(Number(_loc2_.@x)) || Number(0);
            _loc3_.y = Number(Number(_loc2_.@y)) || Number(0);
            _loc3_.rotation = Number(Number(_loc2_.@rotation)) || Number(0);
            _loc3_.scale = Number(Number(_loc2_.@scale)) || Number(1);
            _loc3_.alpha = Number(Number(_loc2_.@alpha)) || Number(1);
            _loc3_.fastForwardsAfterAdd = Number(Number(_loc2_.@fastForwardsAfterAdd)) || Number(0);
            _loc3_.§>+§ = _loc2_.@behindGraphic.toString().toLowerCase() == "true";
            this.§4#e§.push(_loc3_);
         }
      }
      
      public function §!"D§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§1"_§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = new §1"_§(_loc2_.@type,_loc2_.@tween,_loc2_.@xOffsetPercent,_loc2_.@yOffsetPercent,_loc2_.@duration,_loc2_.@trigger,_loc2_.@sound,_loc2_.@scale);
            this.§,!t§.push(_loc3_);
         }
      }
   }
}
