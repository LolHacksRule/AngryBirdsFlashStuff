package §<!<§
{
   public class §67§
   {
       
      
      protected var §#"'§:String;
      
      protected var §3!^§:Number;
      
      protected var §1!k§:Number;
      
      protected var §+"F§:Boolean;
      
      protected var §4f§:Number;
      
      protected var §0M§:Number;
      
      protected var §5!R§:Boolean;
      
      protected var §,"6§:Boolean;
      
      protected var §"P§:Vector.<§ !y§>;
      
      protected var §'M§:Boolean;
      
      protected var §]"<§:String;
      
      public function §67§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean = false)
      {
         super();
         this.§#"'§ = param1;
         this.§3!^§ = param4;
         this.§5!R§ = param7;
         this.§1!k§ = param3 != 0 ? Number(param3) : Number(1);
         this.§+"F§ = param8;
         this.§4f§ = param5;
         this.§0M§ = param6;
         this.§'M§ = param9;
         this.§]"<§ = param2;
         this.§,"6§ = param10;
         this.§"P§ = new Vector.<§ !y§>();
      }
      
      public function get spriteName() : String
      {
         return this.§#"'§;
      }
      
      public function get color() : String
      {
         return this.§]"<§;
      }
      
      public function get speed() : Number
      {
         return this.§3!^§;
      }
      
      public function get scale() : Number
      {
         return this.§1!k§;
      }
      
      public function get xOffset() : Number
      {
         return this.§4f§;
      }
      
      public function get yOffset() : Number
      {
         return this.§0M§;
      }
      
      public function get tileable() : Boolean
      {
         return this.§+"F§;
      }
      
      public function get highQuality() : Boolean
      {
         return this.§,"6§;
      }
      
      public function get foreground() : Boolean
      {
         return this.§5!R§;
      }
      
      public function get optional() : Boolean
      {
         return this.§'M§;
      }
      
      public function get §7"@§() : int
      {
         return this.§"P§.length;
      }
      
      public function §9$§(param1:int) : § !y§
      {
         return this.§"P§[param1];
      }
      
      public function §3!;§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§ !y§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = new § !y§();
            _loc3_.id = _loc2_.@id.toString();
            _loc3_.x = Number(Number(_loc2_.@x)) || Number(0);
            _loc3_.y = Number(Number(_loc2_.@y)) || Number(0);
            _loc3_.rotation = Number(Number(_loc2_.@rotation)) || Number(0);
            _loc3_.scale = Number(Number(_loc2_.@scale)) || Number(1);
            _loc3_.alpha = Number(Number(_loc2_.@alpha)) || Number(1);
            _loc3_.fastForwardsAfterAdd = Number(Number(_loc2_.@fastForwardsAfterAdd)) || Number(0);
            _loc3_.§4T§ = _loc2_.@behindGraphic.toString().toLowerCase() == "true";
            this.§"P§.push(_loc3_);
         }
      }
   }
}
