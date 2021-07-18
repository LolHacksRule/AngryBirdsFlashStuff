package §^§#0
{
   public class §?V§
   {
       
      
      protected var §2#@§:String;
      
      protected var §%Y§:Number;
      
      protected var §]"?§:Number;
      
      protected var §>!l§:Boolean;
      
      protected var §5E§:Number;
      
      protected var §+"-§:Number;
      
      protected var §""T§:Number = 0.0;
      
      protected var §+"+§:Number = 0.0;
      
      protected var §^#_§:Number = 0.0;
      
      protected var §"L§:Boolean;
      
      protected var §1c§:Boolean;
      
      protected var §1B§:Vector.<§]!3§>;
      
      private var §2#b§:Vector.<§>$6§>;
      
      protected var §%$;§:Boolean;
      
      protected var §@#!§:String;
      
      public function §?V§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Boolean, param9:Boolean, param10:Boolean, param11:Number, param12:Number, param13:Boolean = false)
      {
         super();
         this.§2#@§ = param1;
         this.§%Y§ = param4;
         this.§"L§ = param8;
         this.§]"?§ = param3 != 0 ? Number(param3) : Number(1);
         this.§>!l§ = param9;
         this.§5E§ = param5;
         this.§+"-§ = param6;
         this.§""T§ = param7;
         this.§+"+§ = param11;
         this.§^#_§ = param12;
         this.§%$;§ = param10;
         this.§@#!§ = param2;
         this.§1c§ = param13;
         this.§1B§ = new Vector.<§]!3§>();
         this.§2#b§ = new Vector.<§>$6§>();
      }
      
      public function get spriteName() : String
      {
         return this.§2#@§;
      }
      
      public function get color() : String
      {
         return this.§@#!§;
      }
      
      public function get speed() : Number
      {
         return this.§%Y§;
      }
      
      public function get scale() : Number
      {
         return this.§]"?§;
      }
      
      public function get xOffset() : Number
      {
         return this.§5E§;
      }
      
      public function get yOffset() : Number
      {
         return this.§+"-§;
      }
      
      public function get tileable() : Boolean
      {
         return this.§>!l§;
      }
      
      public function get highQuality() : Boolean
      {
         return this.§1c§;
      }
      
      public function get foreground() : Boolean
      {
         return this.§"L§;
      }
      
      public function get optional() : Boolean
      {
         return this.§%$;§;
      }
      
      public function get velocityX() : Number
      {
         return this.§""T§;
      }
      
      public function get moveStartOffsetX() : Number
      {
         return this.§+"+§;
      }
      
      public function get moveEndOffsetX() : Number
      {
         return this.§^#_§;
      }
      
      public function get § #a§() : int
      {
         return this.§1B§.length;
      }
      
      public function get §9#b§() : int
      {
         return this.§2#b§.length;
      }
      
      public function §='§(param1:int) : §]!3§
      {
         return this.§1B§[param1];
      }
      
      public function §!i§(param1:int) : §>$6§
      {
         return this.§2#b§[param1];
      }
      
      public function §4"U§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§]!3§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = new §]!3§();
            _loc3_.id = _loc2_.@id.toString();
            _loc3_.x = Number(Number(_loc2_.@x)) || Number(0);
            _loc3_.y = Number(Number(_loc2_.@y)) || Number(0);
            _loc3_.rotation = Number(Number(_loc2_.@rotation)) || Number(0);
            _loc3_.scale = Number(Number(_loc2_.@scale)) || Number(1);
            _loc3_.alpha = Number(Number(_loc2_.@alpha)) || Number(1);
            _loc3_.fastForwardsAfterAdd = Number(Number(_loc2_.@fastForwardsAfterAdd)) || Number(0);
            _loc3_.§-w§ = _loc2_.@behindGraphic.toString().toLowerCase() == "true";
            this.§1B§.push(_loc3_);
         }
      }
      
      public function §!"B§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§>$6§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = new §>$6§(_loc2_.@type,_loc2_.@tween,_loc2_.@xOffsetPercent,_loc2_.@yOffsetPercent,_loc2_.@duration,_loc2_.@trigger,_loc2_.@sound,_loc2_.@scale);
            this.§2#b§.push(_loc3_);
         }
      }
   }
}
