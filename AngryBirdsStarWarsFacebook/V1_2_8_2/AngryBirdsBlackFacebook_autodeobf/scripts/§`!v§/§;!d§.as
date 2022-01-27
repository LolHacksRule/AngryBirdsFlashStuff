package §`!v§
{
   public class §;!d§
   {
       
      
      protected var §<"Y§:String;
      
      protected var §&"'§:Number;
      
      protected var §#"5§:Number;
      
      protected var §+"d§:Boolean;
      
      protected var §-"M§:Number;
      
      protected var §'#6§:Number;
      
      protected var §;!J§:Boolean;
      
      protected var §"%§:Boolean;
      
      protected var §?w§:Vector.<§9"w§>;
      
      protected var §;@§:Boolean;
      
      protected var §+A§:String;
      
      public function §;!d§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean = false)
      {
         super();
         this.§<"Y§ = param1;
         this.§&"'§ = param4;
         this.§;!J§ = param7;
         this.§#"5§ = param3 != 0 ? Number(param3) : Number(1);
         this.§+"d§ = param8;
         this.§-"M§ = param5;
         this.§'#6§ = param6;
         this.§;@§ = param9;
         this.§+A§ = param2;
         this.§"%§ = param10;
         this.§?w§ = new Vector.<§9"w§>();
      }
      
      public function get spriteName() : String
      {
         return this.§<"Y§;
      }
      
      public function get color() : String
      {
         return this.§+A§;
      }
      
      public function get speed() : Number
      {
         return this.§&"'§;
      }
      
      public function get scale() : Number
      {
         return this.§#"5§;
      }
      
      public function get xOffset() : Number
      {
         return this.§-"M§;
      }
      
      public function get yOffset() : Number
      {
         return this.§'#6§;
      }
      
      public function get tileable() : Boolean
      {
         return this.§+"d§;
      }
      
      public function get highQuality() : Boolean
      {
         return this.§"%§;
      }
      
      public function get foreground() : Boolean
      {
         return this.§;!J§;
      }
      
      public function get optional() : Boolean
      {
         return this.§;@§;
      }
      
      public function get §`g§() : int
      {
         return this.§?w§.length;
      }
      
      public function §#!4§(param1:int) : §9"w§
      {
         return this.§?w§[param1];
      }
      
      public function §?!z§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§9"w§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = new §9"w§();
            _loc3_.id = _loc2_.@id.toString();
            _loc3_.x = Number(Number(_loc2_.@x)) || Number(0);
            _loc3_.y = Number(Number(_loc2_.@y)) || Number(0);
            _loc3_.rotation = Number(Number(_loc2_.@rotation)) || Number(0);
            _loc3_.scale = Number(Number(_loc2_.@scale)) || Number(1);
            _loc3_.alpha = Number(Number(_loc2_.@alpha)) || Number(1);
            _loc3_.fastForwardsAfterAdd = Number(Number(_loc2_.@fastForwardsAfterAdd)) || Number(0);
            _loc3_.§9"N§ = _loc2_.@behindGraphic.toString().toLowerCase() == "true";
            this.§?w§.push(_loc3_);
         }
      }
   }
}
