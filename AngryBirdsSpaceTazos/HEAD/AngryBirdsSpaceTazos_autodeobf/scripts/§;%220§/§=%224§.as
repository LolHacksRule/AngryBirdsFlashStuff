package §;"0§
{
   public class §="4§
   {
       
      
      protected var §^!]§:String;
      
      protected var §`"%§:Number;
      
      protected var §&!A§:Number;
      
      protected var §-x§:Boolean;
      
      protected var §>!M§:Number;
      
      protected var § if§:Number;
      
      protected var §>!w§:Boolean;
      
      protected var §>!#§:Boolean;
      
      protected var §^!;§:Vector.<§+!E§>;
      
      protected var §@"'§:Boolean;
      
      protected var §^!6§:String;
      
      public function §="4§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean = false)
      {
         super();
         this.§^!]§ = param1;
         this.§`"%§ = param4;
         this.§>!w§ = param7;
         this.§&!A§ = param3 != 0 ? Number(param3) : Number(1);
         this.§-x§ = param8;
         this.§>!M§ = param5;
         this.§ if§ = param6;
         this.§@"'§ = param9;
         this.§^!6§ = param2;
         this.§>!#§ = param10;
         this.§^!;§ = new Vector.<§+!E§>();
      }
      
      public function get spriteName() : String
      {
         return this.§^!]§;
      }
      
      public function get color() : String
      {
         return this.§^!6§;
      }
      
      public function get speed() : Number
      {
         return this.§`"%§;
      }
      
      public function get scale() : Number
      {
         return this.§&!A§;
      }
      
      public function get xOffset() : Number
      {
         return this.§>!M§;
      }
      
      public function get yOffset() : Number
      {
         return this.§ if§;
      }
      
      public function get tileable() : Boolean
      {
         return this.§-x§;
      }
      
      public function get highQuality() : Boolean
      {
         return this.§>!#§;
      }
      
      public function get foreground() : Boolean
      {
         return this.§>!w§;
      }
      
      public function get optional() : Boolean
      {
         return this.§@"'§;
      }
      
      public function get §-"5§() : int
      {
         return this.§^!;§.length;
      }
      
      public function §=<§(param1:int) : §+!E§
      {
         return this.§^!;§[param1];
      }
      
      public function §<F§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§+!E§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = new §+!E§();
            _loc3_.id = _loc2_.@id.toString();
            _loc3_.x = Number(Number(_loc2_.@x)) || Number(0);
            _loc3_.y = Number(Number(_loc2_.@y)) || Number(0);
            _loc3_.rotation = Number(Number(_loc2_.@rotation)) || Number(0);
            _loc3_.scale = Number(Number(_loc2_.@scale)) || Number(1);
            _loc3_.alpha = Number(Number(_loc2_.@alpha)) || Number(1);
            _loc3_.fastForwardsAfterAdd = Number(Number(_loc2_.@fastForwardsAfterAdd)) || Number(0);
            _loc3_.§6!B§ = _loc2_.@behindGraphic.toString().toLowerCase() == "true";
            this.§^!;§.push(_loc3_);
         }
      }
   }
}
