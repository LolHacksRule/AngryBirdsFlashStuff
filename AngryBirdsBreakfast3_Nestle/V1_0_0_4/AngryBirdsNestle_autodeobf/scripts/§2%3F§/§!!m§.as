package §2?§
{
   public class §!!m§
   {
       
      
      protected var §+!!§:String;
      
      protected var §8!i§:Number;
      
      protected var §79§:Number;
      
      protected var §@!z§:Boolean;
      
      protected var §<>§:Number;
      
      protected var §-&§:Number;
      
      protected var §#""§:Boolean;
      
      protected var §7U§:Boolean;
      
      protected var §6"#§:Vector.<§in §>;
      
      protected var §1"1§:Boolean;
      
      protected var §?!@§:String;
      
      public function §!!m§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean = false)
      {
         super();
         this.§+!!§ = param1;
         this.§8!i§ = param4;
         this.§#""§ = param7;
         this.§79§ = param3 != 0 ? Number(param3) : Number(1);
         this.§@!z§ = param8;
         this.§<>§ = param5;
         this.§-&§ = param6;
         this.§1"1§ = param9;
         this.§?!@§ = param2;
         this.§7U§ = param10;
         this.§6"#§ = new Vector.<§in §>();
      }
      
      public function get §>!B§() : String
      {
         return this.§+!!§;
      }
      
      public function get color() : String
      {
         return this.§?!@§;
      }
      
      public function get speed() : Number
      {
         return this.§8!i§;
      }
      
      public function get scale() : Number
      {
         return this.§79§;
      }
      
      public function get xOffset() : Number
      {
         return this.§<>§;
      }
      
      public function get yOffset() : Number
      {
         return this.§-&§;
      }
      
      public function get tileable() : Boolean
      {
         return this.§@!z§;
      }
      
      public function get highQuality() : Boolean
      {
         return this.§7U§;
      }
      
      public function get foreground() : Boolean
      {
         return this.§#""§;
      }
      
      public function get optional() : Boolean
      {
         return this.§1"1§;
      }
      
      public function get §'!1§() : int
      {
         return this.§6"#§.length;
      }
      
      public function §^!w§(param1:int) : §in §
      {
         return this.§6"#§[param1];
      }
      
      public function §2!p§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§in § = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = new §in §();
            _loc3_.id = _loc2_.@id.toString();
            _loc3_.x = Number(Number(_loc2_.@x)) || Number(0);
            _loc3_.y = Number(Number(_loc2_.@y)) || Number(0);
            _loc3_.rotation = Number(Number(_loc2_.@rotation)) || Number(0);
            _loc3_.scale = Number(Number(_loc2_.@scale)) || Number(1);
            _loc3_.alpha = Number(Number(_loc2_.@alpha)) || Number(1);
            _loc3_.fastForwardsAfterAdd = Number(Number(_loc2_.@fastForwardsAfterAdd)) || Number(0);
            _loc3_.§>!#§ = _loc2_.@behindGraphic.toString().toLowerCase() == "true";
            this.§6"#§.push(_loc3_);
         }
      }
   }
}
