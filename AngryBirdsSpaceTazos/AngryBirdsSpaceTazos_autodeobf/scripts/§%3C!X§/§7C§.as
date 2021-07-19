package §<!X§
{
   public class §7C§
   {
      
      public static const §-!Z§:String = "none";
      
      public static const §@!=§:String = "run";
      
      public static const §?x§:String = "in";
      
      public static const §>">§:String = "out";
       
      
      private var §]c§:String;
      
      private var §66§:String;
      
      private var §4!;§:String;
      
      private var §,!l§:String;
      
      private var §!k§:String;
      
      public var loop:Boolean;
      
      public var stageQuality:String;
      
      public function §7C§(param1:String = "", param2:String = "", param3:String = "", param4:String = "none", param5:Boolean = false, param6:String = "best")
      {
         super();
         this.§]c§ = param1;
         this.§!k§ = param4;
         this.§4!;§ = param2;
         this.§,!l§ = param3;
         this.loop = param5;
         this.stageQuality = param6;
         this.§;"7§();
      }
      
      public function get startLabel() : String
      {
         return this.§]c§;
      }
      
      public function set startLabel(param1:String) : void
      {
         this.§]c§ = param1;
         this.§;"7§();
      }
      
      public function get defaultStartLabel() : String
      {
         return this.§66§;
      }
      
      public function get §%!D§() : String
      {
         return this.§4!;§;
      }
      
      public function set §%!D§(param1:String) : void
      {
         this.§4!;§ = param1;
      }
      
      public function get §>!F§() : String
      {
         return this.§,!l§;
      }
      
      public function set §>!F§(param1:String) : void
      {
         this.§,!l§ = param1;
      }
      
      public function get type() : String
      {
         return this.§!k§;
      }
      
      public function set type(param1:String) : void
      {
         this.§!k§ = param1;
         this.§;"7§();
      }
      
      protected function §;"7§() : void
      {
         this.§66§ = "";
         if(this.§!k§ == §-!Z§ || this.§]c§ == "")
         {
            return;
         }
         if(this.§!k§ == §?x§)
         {
            this.§66§ = §]d§.§%"<§();
         }
         else if(this.§!k§ == §>">§)
         {
            this.§66§ = §]d§.§>!u§();
         }
      }
      
      public function clone() : §7C§
      {
         return new §7C§(this.§]c§,this.§4!;§,this.§,!l§,this.§!k§,this.loop);
      }
   }
}
