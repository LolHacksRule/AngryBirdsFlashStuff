package §>D§
{
   public class §^§
   {
       
      
      protected var §]"3§:String;
      
      protected var §1g§:Number;
      
      protected var §1+§:Number;
      
      protected var §7!v§:Boolean;
      
      protected var §>W§:Number;
      
      protected var §9!2§:Number;
      
      protected var §0!y§:Boolean;
      
      protected var §<!a§:Boolean;
      
      protected var §-`§:Vector.<§3!L§>;
      
      protected var §!!O§:Boolean;
      
      protected var §+?§:String;
      
      public function §^§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean = false)
      {
         super();
         this.§]"3§ = param1;
         this.§1g§ = param4;
         this.§0!y§ = param7;
         this.§1+§ = param3 != 0 ? Number(param3) : Number(1);
         this.§7!v§ = param8;
         this.§>W§ = param5;
         this.§9!2§ = param6;
         this.§!!O§ = param9;
         this.§+?§ = param2;
         this.§<!a§ = param10;
         this.§-`§ = new Vector.<§3!L§>();
      }
      
      public function get §'w§() : String
      {
         return this.§]"3§;
      }
      
      public function get color() : String
      {
         return this.§+?§;
      }
      
      public function get speed() : Number
      {
         return this.§1g§;
      }
      
      public function get scale() : Number
      {
         return this.§1+§;
      }
      
      public function get xOffset() : Number
      {
         return this.§>W§;
      }
      
      public function get yOffset() : Number
      {
         return this.§9!2§;
      }
      
      public function get tileable() : Boolean
      {
         return this.§7!v§;
      }
      
      public function get highQuality() : Boolean
      {
         return this.§<!a§;
      }
      
      public function get foreground() : Boolean
      {
         return this.§0!y§;
      }
      
      public function get optional() : Boolean
      {
         return this.§!!O§;
      }
      
      public function get §1,§() : int
      {
         return this.§-`§.length;
      }
      
      public function §@!=§(param1:int) : §3!L§
      {
         return this.§-`§[param1];
      }
      
      public function §9r§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§3!L§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = new §3!L§();
            _loc3_.id = _loc2_.@id.toString();
            _loc3_.x = Number(Number(_loc2_.@x)) || Number(0);
            _loc3_.y = Number(Number(_loc2_.@y)) || Number(0);
            _loc3_.rotation = Number(Number(_loc2_.@rotation)) || Number(0);
            _loc3_.scale = Number(Number(_loc2_.@scale)) || Number(1);
            _loc3_.alpha = Number(Number(_loc2_.@alpha)) || Number(1);
            _loc3_.fastForwardsAfterAdd = Number(Number(_loc2_.@fastForwardsAfterAdd)) || Number(0);
            _loc3_.§9J§ = _loc2_.@behindGraphic.toString().toLowerCase() == "true";
            this.§-`§.push(_loc3_);
         }
      }
   }
}
