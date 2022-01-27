package §'"I§
{
   public class §1-§
   {
      
      public static const §@B§:String = "none";
      
      public static const §!o§:String = "run";
      
      public static const §?j§:String = "in";
      
      public static const §<§:String = "out";
       
      
      private var §@"e§:String;
      
      private var §^"<§:String;
      
      private var §="'§:String;
      
      private var §>"L§:String;
      
      private var §=B§:String;
      
      public var loop:Boolean;
      
      public var stageQuality:String;
      
      public function §1-§(param1:String = "", param2:String = "", param3:String = "", param4:String = "none", param5:Boolean = false, param6:String = "best")
      {
         super();
         this.§@"e§ = param1;
         this.§=B§ = param4;
         this.§="'§ = param2;
         this.§>"L§ = param3;
         this.loop = param5;
         this.stageQuality = param6;
         this.§1"G§();
      }
      
      public function get startLabel() : String
      {
         return this.§@"e§;
      }
      
      public function set startLabel(param1:String) : void
      {
         this.§@"e§ = param1;
         this.§1"G§();
      }
      
      public function get defaultStartLabel() : String
      {
         return this.§^"<§;
      }
      
      public function get § try§() : String
      {
         return this.§="'§;
      }
      
      public function set § try§(param1:String) : void
      {
         this.§="'§ = param1;
      }
      
      public function get §@"D§() : String
      {
         return this.§>"L§;
      }
      
      public function set §@"D§(param1:String) : void
      {
         this.§>"L§ = param1;
      }
      
      public function get type() : String
      {
         return this.§=B§;
      }
      
      public function set type(param1:String) : void
      {
         this.§=B§ = param1;
         this.§1"G§();
      }
      
      protected function §1"G§() : void
      {
         this.§^"<§ = "";
         if(this.§=B§ == §@B§ || this.§@"e§ == "")
         {
            return;
         }
         switch(this.§=B§)
         {
            case §!o§:
               this.§^"<§ = §>!t§.§,"x§();
               break;
            case §?j§:
               this.§^"<§ = §>!t§.§3O§();
               break;
            case §<§:
               this.§^"<§ = §>!t§.§-!,§();
         }
      }
      
      public function clone() : §1-§
      {
         return new §1-§(this.§@"e§,this.§="'§,this.§>"L§,this.§=B§,this.loop);
      }
   }
}
