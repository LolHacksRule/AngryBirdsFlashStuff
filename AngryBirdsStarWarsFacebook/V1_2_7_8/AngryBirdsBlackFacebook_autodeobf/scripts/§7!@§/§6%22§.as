package §7!@§
{
   public class §6"§
   {
      
      public static const §5![§:String = "none";
      
      public static const §+"n§:String = "run";
      
      public static const §,#2§:String = "in";
      
      public static const §9!j§:String = "out";
       
      
      private var §+!v§:String;
      
      private var §]"l§:String;
      
      private var §>§:String;
      
      private var §0E§:String;
      
      private var §]m§:String;
      
      public var loop:Boolean;
      
      public var stageQuality:String;
      
      public function §6"§(param1:String = "", param2:String = "", param3:String = "", param4:String = "none", param5:Boolean = false, param6:String = "best")
      {
         super();
         this.§+!v§ = param1;
         this.§]m§ = param4;
         this.§>§ = param2;
         this.§0E§ = param3;
         this.loop = param5;
         this.stageQuality = param6;
         this.§3"d§();
      }
      
      public function get startLabel() : String
      {
         return this.§+!v§;
      }
      
      public function set startLabel(param1:String) : void
      {
         this.§+!v§ = param1;
         this.§3"d§();
      }
      
      public function get defaultStartLabel() : String
      {
         return this.§]"l§;
      }
      
      public function get §>"$§() : String
      {
         return this.§>§;
      }
      
      public function set §>"$§(param1:String) : void
      {
         this.§>§ = param1;
      }
      
      public function get §!"X§() : String
      {
         return this.§0E§;
      }
      
      public function set §!"X§(param1:String) : void
      {
         this.§0E§ = param1;
      }
      
      public function get type() : String
      {
         return this.§]m§;
      }
      
      public function set type(param1:String) : void
      {
         this.§]m§ = param1;
         this.§3"d§();
      }
      
      protected function §3"d§() : void
      {
         this.§]"l§ = "";
         if(this.§]m§ == §5![§ || this.§+!v§ == "")
         {
            return;
         }
         switch(this.§]m§)
         {
            case §+"n§:
               this.§]"l§ = §[`§.§]L§();
               break;
            case §,#2§:
               this.§]"l§ = §[`§.§1!R§();
               break;
            case §9!j§:
               this.§]"l§ = §[`§.§='§();
         }
      }
      
      public function clone() : §6"§
      {
         return new §6"§(this.§+!v§,this.§>§,this.§0E§,this.§]m§,this.loop);
      }
   }
}
