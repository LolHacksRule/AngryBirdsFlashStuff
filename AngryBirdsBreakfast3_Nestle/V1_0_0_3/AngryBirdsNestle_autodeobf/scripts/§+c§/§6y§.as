package §+c§
{
   public class §6y§
   {
       
      
      protected var §>"'§:String;
      
      protected var §0!c§:Number;
      
      protected var §>s§:Number;
      
      protected var §]>§:Boolean;
      
      protected var §[!-§:Number;
      
      protected var §#@§:Number;
      
      protected var §5!X§:Boolean;
      
      protected var §@n§:Boolean;
      
      protected var §#![§:Vector.<§9D§>;
      
      protected var §+i§:Boolean;
      
      protected var §;!G§:String;
      
      public function §6y§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean = false)
      {
         super();
         this.§>"'§ = param1;
         this.§0!c§ = param4;
         this.§5!X§ = param7;
         this.§>s§ = param3 != 0 ? Number(param3) : Number(1);
         this.§]>§ = param8;
         this.§[!-§ = param5;
         this.§#@§ = param6;
         this.§+i§ = param9;
         this.§;!G§ = param2;
         this.§@n§ = param10;
         this.§#![§ = new Vector.<§9D§>();
      }
      
      public function get §"z§() : String
      {
         return this.§>"'§;
      }
      
      public function get color() : String
      {
         return this.§;!G§;
      }
      
      public function get speed() : Number
      {
         return this.§0!c§;
      }
      
      public function get scale() : Number
      {
         return this.§>s§;
      }
      
      public function get xOffset() : Number
      {
         return this.§[!-§;
      }
      
      public function get yOffset() : Number
      {
         return this.§#@§;
      }
      
      public function get tileable() : Boolean
      {
         return this.§]>§;
      }
      
      public function get highQuality() : Boolean
      {
         return this.§@n§;
      }
      
      public function get foreground() : Boolean
      {
         return this.§5!X§;
      }
      
      public function get optional() : Boolean
      {
         return this.§+i§;
      }
      
      public function get §&"3§() : int
      {
         return this.§#![§.length;
      }
      
      public function §`'§(param1:int) : §9D§
      {
         return this.§#![§[param1];
      }
      
      public function §8u§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§9D§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = new §9D§();
            _loc3_.id = _loc2_.@id.toString();
            _loc3_.x = Number(Number(_loc2_.@x)) || Number(0);
            _loc3_.y = Number(Number(_loc2_.@y)) || Number(0);
            _loc3_.rotation = Number(Number(_loc2_.@rotation)) || Number(0);
            _loc3_.scale = Number(Number(_loc2_.@scale)) || Number(1);
            _loc3_.alpha = Number(Number(_loc2_.@alpha)) || Number(1);
            _loc3_.fastForwardsAfterAdd = Number(Number(_loc2_.@fastForwardsAfterAdd)) || Number(0);
            _loc3_.§,!L§ = _loc2_.@behindGraphic.toString().toLowerCase() == "true";
            this.§#![§.push(_loc3_);
         }
      }
   }
}
