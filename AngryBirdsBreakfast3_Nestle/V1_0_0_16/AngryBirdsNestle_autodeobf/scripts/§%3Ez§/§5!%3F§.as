package §>z§
{
   public class §5!?§
   {
       
      
      protected var §5!7§:String;
      
      protected var §6J§:Number;
      
      protected var §2c§:Number;
      
      protected var §"§:Boolean;
      
      protected var §1!<§:Number;
      
      protected var §else§:Number;
      
      protected var §[5§:Boolean;
      
      protected var §'_§:Boolean;
      
      protected var §1!;§:Vector.<§#U§>;
      
      protected var §80§:Boolean;
      
      protected var §[#§:String;
      
      public function §5!?§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean = false)
      {
         super();
         this.§5!7§ = param1;
         this.§6J§ = param4;
         this.§[5§ = param7;
         this.§2c§ = param3 != 0 ? Number(param3) : Number(1);
         this.§"§ = param8;
         this.§1!<§ = param5;
         this.§else§ = param6;
         this.§80§ = param9;
         this.§[#§ = param2;
         this.§'_§ = param10;
         this.§1!;§ = new Vector.<§#U§>();
      }
      
      public function get §-Q§() : String
      {
         return this.§5!7§;
      }
      
      public function get color() : String
      {
         return this.§[#§;
      }
      
      public function get speed() : Number
      {
         return this.§6J§;
      }
      
      public function get scale() : Number
      {
         return this.§2c§;
      }
      
      public function get xOffset() : Number
      {
         return this.§1!<§;
      }
      
      public function get yOffset() : Number
      {
         return this.§else§;
      }
      
      public function get tileable() : Boolean
      {
         return this.§"§;
      }
      
      public function get highQuality() : Boolean
      {
         return this.§'_§;
      }
      
      public function get foreground() : Boolean
      {
         return this.§[5§;
      }
      
      public function get optional() : Boolean
      {
         return this.§80§;
      }
      
      public function get § w§() : int
      {
         return this.§1!;§.length;
      }
      
      public function §2D§(param1:int) : §#U§
      {
         return this.§1!;§[param1];
      }
      
      public function §["%§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§#U§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = new §#U§();
            _loc3_.id = _loc2_.@id.toString();
            _loc3_.x = Number(Number(_loc2_.@x)) || Number(0);
            _loc3_.y = Number(Number(_loc2_.@y)) || Number(0);
            _loc3_.rotation = Number(Number(_loc2_.@rotation)) || Number(0);
            _loc3_.scale = Number(Number(_loc2_.@scale)) || Number(1);
            _loc3_.alpha = Number(Number(_loc2_.@alpha)) || Number(1);
            _loc3_.fastForwardsAfterAdd = Number(Number(_loc2_.@fastForwardsAfterAdd)) || Number(0);
            _loc3_.§?K§ = _loc2_.@behindGraphic.toString().toLowerCase() == "true";
            this.§1!;§.push(_loc3_);
         }
      }
   }
}
