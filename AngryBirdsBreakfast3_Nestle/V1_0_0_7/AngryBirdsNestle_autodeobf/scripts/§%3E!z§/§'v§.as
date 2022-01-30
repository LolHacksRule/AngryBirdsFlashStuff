package §>!z§
{
   public class §'v§
   {
       
      
      protected var § "$§:String;
      
      protected var §!#§:Number;
      
      protected var §6!p§:Number;
      
      protected var §=r§:Boolean;
      
      protected var §<;§:Number;
      
      protected var §5!Q§:Number;
      
      protected var §2" §:Boolean;
      
      protected var §-k§:Boolean;
      
      protected var §@!X§:Vector.<§=!g§>;
      
      protected var §=A§:Boolean;
      
      protected var § a§:String;
      
      public function §'v§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean = false)
      {
         super();
         this.§ "$§ = param1;
         this.§!#§ = param4;
         this.§2" § = param7;
         this.§6!p§ = param3 != 0 ? Number(param3) : Number(1);
         this.§=r§ = param8;
         this.§<;§ = param5;
         this.§5!Q§ = param6;
         this.§=A§ = param9;
         this.§ a§ = param2;
         this.§-k§ = param10;
         this.§@!X§ = new Vector.<§=!g§>();
      }
      
      public function get §>!s§() : String
      {
         return this.§ "$§;
      }
      
      public function get color() : String
      {
         return this.§ a§;
      }
      
      public function get speed() : Number
      {
         return this.§!#§;
      }
      
      public function get scale() : Number
      {
         return this.§6!p§;
      }
      
      public function get xOffset() : Number
      {
         return this.§<;§;
      }
      
      public function get yOffset() : Number
      {
         return this.§5!Q§;
      }
      
      public function get tileable() : Boolean
      {
         return this.§=r§;
      }
      
      public function get highQuality() : Boolean
      {
         return this.§-k§;
      }
      
      public function get foreground() : Boolean
      {
         return this.§2" §;
      }
      
      public function get optional() : Boolean
      {
         return this.§=A§;
      }
      
      public function get §,!M§() : int
      {
         return this.§@!X§.length;
      }
      
      public function §+z§(param1:int) : §=!g§
      {
         return this.§@!X§[param1];
      }
      
      public function § w§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§=!g§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = new §=!g§();
            _loc3_.id = _loc2_.@id.toString();
            _loc3_.x = Number(Number(_loc2_.@x)) || Number(0);
            _loc3_.y = Number(Number(_loc2_.@y)) || Number(0);
            _loc3_.rotation = Number(Number(_loc2_.@rotation)) || Number(0);
            _loc3_.scale = Number(Number(_loc2_.@scale)) || Number(1);
            _loc3_.alpha = Number(Number(_loc2_.@alpha)) || Number(1);
            _loc3_.fastForwardsAfterAdd = Number(Number(_loc2_.@fastForwardsAfterAdd)) || Number(0);
            _loc3_.§8!@§ = _loc2_.@behindGraphic.toString().toLowerCase() == "true";
            this.§@!X§.push(_loc3_);
         }
      }
   }
}
