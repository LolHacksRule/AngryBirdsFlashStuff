package §,§
{
   public class §!P§
   {
       
      
      protected var §8"7§:String;
      
      protected var §&w§:Number;
      
      protected var §-!Y§:Number;
      
      protected var §'§:Boolean;
      
      protected var §#W§:Number;
      
      protected var §9!x§:Number;
      
      protected var §"F§:Boolean;
      
      protected var §[Z§:Boolean;
      
      protected var §[!f§:Vector.<§["6§>;
      
      protected var §#!5§:Boolean;
      
      protected var §8!F§:String;
      
      public function §!P§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean = false)
      {
         super();
         this.§8"7§ = param1;
         this.§&w§ = param4;
         this.§"F§ = param7;
         this.§-!Y§ = param3 != 0 ? Number(param3) : Number(1);
         this.§'§ = param8;
         this.§#W§ = param5;
         this.§9!x§ = param6;
         this.§#!5§ = param9;
         this.§8!F§ = param2;
         this.§[Z§ = param10;
         this.§[!f§ = new Vector.<§["6§>();
      }
      
      public function get spriteName() : String
      {
         return this.§8"7§;
      }
      
      public function get color() : String
      {
         return this.§8!F§;
      }
      
      public function get speed() : Number
      {
         return this.§&w§;
      }
      
      public function get scale() : Number
      {
         return this.§-!Y§;
      }
      
      public function get xOffset() : Number
      {
         return this.§#W§;
      }
      
      public function get yOffset() : Number
      {
         return this.§9!x§;
      }
      
      public function get tileable() : Boolean
      {
         return this.§'§;
      }
      
      public function get highQuality() : Boolean
      {
         return this.§[Z§;
      }
      
      public function get foreground() : Boolean
      {
         return this.§"F§;
      }
      
      public function get optional() : Boolean
      {
         return this.§#!5§;
      }
      
      public function get §6!B§() : int
      {
         return this.§[!f§.length;
      }
      
      public function §%"A§(param1:int) : §["6§
      {
         return this.§[!f§[param1];
      }
      
      public function §^'§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§["6§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = new §["6§();
            _loc3_.id = _loc2_.@id.toString();
            _loc3_.x = Number(Number(_loc2_.@x)) || Number(0);
            _loc3_.y = Number(Number(_loc2_.@y)) || Number(0);
            _loc3_.rotation = Number(Number(_loc2_.@rotation)) || Number(0);
            _loc3_.scale = Number(Number(_loc2_.@scale)) || Number(1);
            _loc3_.alpha = Number(Number(_loc2_.@alpha)) || Number(1);
            _loc3_.fastForwardsAfterAdd = Number(Number(_loc2_.@fastForwardsAfterAdd)) || Number(0);
            _loc3_.§`,§ = _loc2_.@behindGraphic.toString().toLowerCase() == "true";
            this.§[!f§.push(_loc3_);
         }
      }
   }
}
