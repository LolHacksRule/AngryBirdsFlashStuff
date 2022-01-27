package §+"f§
{
   public class §!r§
   {
       
      
      protected var §2!w§:String;
      
      protected var §`w§:Number;
      
      protected var §"r§:Number;
      
      protected var §1!#§:Boolean;
      
      protected var §-,§:Number;
      
      protected var §[!§:Number;
      
      protected var § "C§:Boolean;
      
      protected var §#P§:Boolean;
      
      protected var §'!I§:Vector.<§`!Z§>;
      
      protected var §#4§:Boolean;
      
      protected var §7I§:String;
      
      public function §!r§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean = false)
      {
         super();
         this.§2!w§ = param1;
         this.§`w§ = param4;
         this.§ "C§ = param7;
         this.§"r§ = param3 != 0 ? Number(param3) : Number(1);
         this.§1!#§ = param8;
         this.§-,§ = param5;
         this.§[!§ = param6;
         this.§#4§ = param9;
         this.§7I§ = param2;
         this.§#P§ = param10;
         this.§'!I§ = new Vector.<§`!Z§>();
      }
      
      public function get spriteName() : String
      {
         return this.§2!w§;
      }
      
      public function get color() : String
      {
         return this.§7I§;
      }
      
      public function get speed() : Number
      {
         return this.§`w§;
      }
      
      public function get scale() : Number
      {
         return this.§"r§;
      }
      
      public function get xOffset() : Number
      {
         return this.§-,§;
      }
      
      public function get yOffset() : Number
      {
         return this.§[!§;
      }
      
      public function get tileable() : Boolean
      {
         return this.§1!#§;
      }
      
      public function get highQuality() : Boolean
      {
         return this.§#P§;
      }
      
      public function get foreground() : Boolean
      {
         return this.§ "C§;
      }
      
      public function get optional() : Boolean
      {
         return this.§#4§;
      }
      
      public function get §5# §() : int
      {
         return this.§'!I§.length;
      }
      
      public function §<"t§(param1:int) : §`!Z§
      {
         return this.§'!I§[param1];
      }
      
      public function §#!1§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§`!Z§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = new §`!Z§();
            _loc3_.id = _loc2_.@id.toString();
            _loc3_.x = Number(Number(_loc2_.@x)) || Number(0);
            _loc3_.y = Number(Number(_loc2_.@y)) || Number(0);
            _loc3_.rotation = Number(Number(_loc2_.@rotation)) || Number(0);
            _loc3_.scale = Number(Number(_loc2_.@scale)) || Number(1);
            _loc3_.alpha = Number(Number(_loc2_.@alpha)) || Number(1);
            _loc3_.fastForwardsAfterAdd = Number(Number(_loc2_.@fastForwardsAfterAdd)) || Number(0);
            _loc3_.§7"v§ = _loc2_.@behindGraphic.toString().toLowerCase() == "true";
            this.§'!I§.push(_loc3_);
         }
      }
   }
}
