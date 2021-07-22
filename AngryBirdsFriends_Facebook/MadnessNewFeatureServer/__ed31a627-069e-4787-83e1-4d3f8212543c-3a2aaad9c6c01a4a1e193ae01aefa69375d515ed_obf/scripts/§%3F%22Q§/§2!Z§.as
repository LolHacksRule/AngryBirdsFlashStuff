package §?"Q§
{
   public class §2!Z§
   {
      
      public static const §7"4§:String = "none";
      
      public static const §1M§:String = "run";
      
      public static const §%$§:String = "in";
      
      public static const §@K§:String = "out";
       
      
      private var §`#d§:String;
      
      private var §;"7§:String;
      
      private var §]M§:String;
      
      private var §3";§:String;
      
      private var §@4§:String;
      
      public var loop:Boolean;
      
      public var stageQuality:String;
      
      public function §2!Z§(param1:String = "", param2:String = "", param3:String = "", param4:String = "none", param5:Boolean = false, param6:String = "best")
      {
         super();
         this.§`#d§ = param1;
         this.§@4§ = param4;
         this.§]M§ = param2;
         this.§3";§ = param3;
         this.loop = param5;
         this.stageQuality = param6;
         this.§'"s§();
      }
      
      public function get startLabel() : String
      {
         return this.§`#d§;
      }
      
      public function set startLabel(param1:String) : void
      {
         this.§`#d§ = param1;
         this.§'"s§();
      }
      
      public function get defaultStartLabel() : String
      {
         return this.§;"7§;
      }
      
      public function get §5";§() : String
      {
         return this.§]M§;
      }
      
      public function set §5";§(param1:String) : void
      {
         this.§]M§ = param1;
      }
      
      public function get §1$"§() : String
      {
         return this.§3";§;
      }
      
      public function set §1$"§(param1:String) : void
      {
         this.§3";§ = param1;
      }
      
      public function get type() : String
      {
         return this.§@4§;
      }
      
      public function set type(param1:String) : void
      {
         this.§@4§ = param1;
         this.§'"s§();
      }
      
      protected function §'"s§() : void
      {
         this.§;"7§ = "";
         if(this.§@4§ == §7"4§ || this.§`#d§ == "")
         {
            return;
         }
         switch(this.§@4§)
         {
            case §1M§:
               this.§;"7§ = §+"Q§.§+#[§();
               break;
            case §%$§:
               this.§;"7§ = §+"Q§.§+!h§();
               break;
            case §@K§:
               this.§;"7§ = §+"Q§.§,"z§();
         }
      }
      
      public function clone() : §2!Z§
      {
         return new §2!Z§(this.§`#d§,this.§]M§,this.§3";§,this.§@4§,this.loop);
      }
   }
}
