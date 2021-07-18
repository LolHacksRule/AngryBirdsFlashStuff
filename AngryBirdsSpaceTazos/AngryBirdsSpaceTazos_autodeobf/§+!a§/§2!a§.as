package §+!a§
{
   public class §2!a§
   {
       
      
      protected var §7!'§:String;
      
      protected var §^§:Number;
      
      protected var §=T§:Number;
      
      protected var §`O§:Boolean;
      
      protected var §04§:Number;
      
      protected var §6"!§:Number;
      
      protected var §4![§:Boolean;
      
      protected var §>v§:Boolean;
      
      protected var §9"6§:Vector.<§3!;§>;
      
      protected var §?!u§:Boolean;
      
      protected var §4"%§:String;
      
      public function §2!a§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean = false)
      {
         super();
         this.§7!'§ = param1;
         this.§^§ = param4;
         this.§4![§ = param7;
         this.§=T§ = param3 != 0 ? Number(param3) : Number(1);
         this.§`O§ = param8;
         this.§04§ = param5;
         this.§6"!§ = param6;
         this.§?!u§ = param9;
         this.§4"%§ = param2;
         this.§>v§ = param10;
         this.§9"6§ = new Vector.<§3!;§>();
      }
      
      public function get spriteName() : String
      {
         return this.§7!'§;
      }
      
      public function get color() : String
      {
         return this.§4"%§;
      }
      
      public function get speed() : Number
      {
         return this.§^§;
      }
      
      public function get scale() : Number
      {
         return this.§=T§;
      }
      
      public function get xOffset() : Number
      {
         return this.§04§;
      }
      
      public function get yOffset() : Number
      {
         return this.§6"!§;
      }
      
      public function get tileable() : Boolean
      {
         return this.§`O§;
      }
      
      public function get highQuality() : Boolean
      {
         return this.§>v§;
      }
      
      public function get foreground() : Boolean
      {
         return this.§4![§;
      }
      
      public function get optional() : Boolean
      {
         return this.§?!u§;
      }
      
      public function get §4i§() : int
      {
         return this.§9"6§.length;
      }
      
      public function §7!s§(param1:int) : §3!;§
      {
         return this.§9"6§[param1];
      }
      
      public function §>!]§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§3!;§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = new §3!;§();
            _loc3_.id = _loc2_.@id.toString();
            _loc3_.x = Number(Number(_loc2_.@x)) || Number(0);
            _loc3_.y = Number(Number(_loc2_.@y)) || Number(0);
            _loc3_.rotation = Number(Number(_loc2_.@rotation)) || Number(0);
            _loc3_.scale = Number(Number(_loc2_.@scale)) || Number(1);
            _loc3_.alpha = Number(Number(_loc2_.@alpha)) || Number(1);
            _loc3_.fastForwardsAfterAdd = Number(Number(_loc2_.@fastForwardsAfterAdd)) || Number(0);
            _loc3_.§=%§ = _loc2_.@behindGraphic.toString().toLowerCase() == "true";
            this.§9"6§.push(_loc3_);
         }
      }
   }
}
