package §0"1§
{
   public class §set §
   {
       
      
      protected var §]"#§:String;
      
      protected var §<L§:Number;
      
      protected var §0y§:Number;
      
      protected var §1Z§:Boolean;
      
      protected var §@!h§:Number;
      
      protected var §#a§:Number;
      
      protected var §6i§:Boolean;
      
      protected var §2i§:Boolean;
      
      protected var §0!7§:Vector.<§4!y§>;
      
      protected var §[""§:Boolean;
      
      protected var §7!y§:String;
      
      public function §set §(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean = false)
      {
         super();
         this.§]"#§ = param1;
         this.§<L§ = param4;
         this.§6i§ = param7;
         this.§0y§ = param3 != 0 ? Number(param3) : Number(1);
         this.§1Z§ = param8;
         this.§@!h§ = param5;
         this.§#a§ = param6;
         this.§[""§ = param9;
         this.§7!y§ = param2;
         this.§2i§ = param10;
         this.§0!7§ = new Vector.<§4!y§>();
      }
      
      public function get §1!_§() : String
      {
         return this.§]"#§;
      }
      
      public function get color() : String
      {
         return this.§7!y§;
      }
      
      public function get speed() : Number
      {
         return this.§<L§;
      }
      
      public function get scale() : Number
      {
         return this.§0y§;
      }
      
      public function get xOffset() : Number
      {
         return this.§@!h§;
      }
      
      public function get yOffset() : Number
      {
         return this.§#a§;
      }
      
      public function get tileable() : Boolean
      {
         return this.§1Z§;
      }
      
      public function get highQuality() : Boolean
      {
         return this.§2i§;
      }
      
      public function get foreground() : Boolean
      {
         return this.§6i§;
      }
      
      public function get optional() : Boolean
      {
         return this.§[""§;
      }
      
      public function get §#!`§() : int
      {
         return this.§0!7§.length;
      }
      
      public function §@!g§(param1:int) : §4!y§
      {
         return this.§0!7§[param1];
      }
      
      public function §[>§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§4!y§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = new §4!y§();
            _loc3_.id = _loc2_.@id.toString();
            _loc3_.x = Number(Number(_loc2_.@x)) || Number(0);
            _loc3_.y = Number(Number(_loc2_.@y)) || Number(0);
            _loc3_.rotation = Number(Number(_loc2_.@rotation)) || Number(0);
            _loc3_.scale = Number(Number(_loc2_.@scale)) || Number(1);
            _loc3_.alpha = Number(Number(_loc2_.@alpha)) || Number(1);
            _loc3_.fastForwardsAfterAdd = Number(Number(_loc2_.@fastForwardsAfterAdd)) || Number(0);
            _loc3_.§9Y§ = _loc2_.@behindGraphic.toString().toLowerCase() == "true";
            this.§0!7§.push(_loc3_);
         }
      }
   }
}
