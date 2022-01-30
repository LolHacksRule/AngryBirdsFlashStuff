package §@&§
{
   public class §%T§
   {
       
      
      protected var §52§:String;
      
      protected var §;!3§:Number;
      
      protected var §?!C§:Number;
      
      protected var §@!3§:Boolean;
      
      protected var §6!r§:Number;
      
      protected var §3>§:Number;
      
      protected var §1"'§:Boolean;
      
      protected var §0x§:Boolean;
      
      protected var §;! §:Vector.<§9!J§>;
      
      protected var §!!P§:Boolean;
      
      protected var § ! §:String;
      
      public function §%T§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean = false)
      {
         super();
         this.§52§ = param1;
         this.§;!3§ = param4;
         this.§1"'§ = param7;
         this.§?!C§ = param3 != 0 ? Number(param3) : Number(1);
         this.§@!3§ = param8;
         this.§6!r§ = param5;
         this.§3>§ = param6;
         this.§!!P§ = param9;
         this.§ ! § = param2;
         this.§0x§ = param10;
         this.§;! § = new Vector.<§9!J§>();
      }
      
      public function get §&!9§() : String
      {
         return this.§52§;
      }
      
      public function get color() : String
      {
         return this.§ ! §;
      }
      
      public function get speed() : Number
      {
         return this.§;!3§;
      }
      
      public function get scale() : Number
      {
         return this.§?!C§;
      }
      
      public function get xOffset() : Number
      {
         return this.§6!r§;
      }
      
      public function get yOffset() : Number
      {
         return this.§3>§;
      }
      
      public function get tileable() : Boolean
      {
         return this.§@!3§;
      }
      
      public function get highQuality() : Boolean
      {
         return this.§0x§;
      }
      
      public function get foreground() : Boolean
      {
         return this.§1"'§;
      }
      
      public function get optional() : Boolean
      {
         return this.§!!P§;
      }
      
      public function get §>[§() : int
      {
         return this.§;! §.length;
      }
      
      public function §?i§(param1:int) : §9!J§
      {
         return this.§;! §[param1];
      }
      
      public function §7!=§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§9!J§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = new §9!J§();
            _loc3_.id = _loc2_.@id.toString();
            _loc3_.x = Number(Number(_loc2_.@x)) || Number(0);
            _loc3_.y = Number(Number(_loc2_.@y)) || Number(0);
            _loc3_.rotation = Number(Number(_loc2_.@rotation)) || Number(0);
            _loc3_.scale = Number(Number(_loc2_.@scale)) || Number(1);
            _loc3_.alpha = Number(Number(_loc2_.@alpha)) || Number(1);
            _loc3_.fastForwardsAfterAdd = Number(Number(_loc2_.@fastForwardsAfterAdd)) || Number(0);
            _loc3_.§;!$§ = _loc2_.@behindGraphic.toString().toLowerCase() == "true";
            this.§;! §.push(_loc3_);
         }
      }
   }
}
