package §@3§
{
   public class §]K§
   {
      
      public static const §,"3§:String = "none";
      
      public static const §=@§:String = "run";
      
      public static const §%x§:String = "in";
      
      public static const §1o§:String = "out";
       
      
      private var §&""§:String;
      
      private var §'!z§:String;
      
      private var §3-§:String;
      
      private var § !^§:String;
      
      private var §#!-§:String;
      
      public var loop:Boolean;
      
      public var stageQuality:String;
      
      public function §]K§(param1:String = "", param2:String = "", param3:String = "", param4:String = "none", param5:Boolean = false, param6:String = "best")
      {
         super();
         this.§&""§ = param1;
         this.§#!-§ = param4;
         this.§3-§ = param2;
         this.§ !^§ = param3;
         this.loop = param5;
         this.stageQuality = param6;
         this.§!Y§();
      }
      
      public function get startLabel() : String
      {
         return this.§&""§;
      }
      
      public function set startLabel(param1:String) : void
      {
         this.§&""§ = param1;
         this.§!Y§();
      }
      
      public function get defaultStartLabel() : String
      {
         return this.§'!z§;
      }
      
      public function get §7!r§() : String
      {
         return this.§3-§;
      }
      
      public function set §7!r§(param1:String) : void
      {
         this.§3-§ = param1;
      }
      
      public function get §1Q§() : String
      {
         return this.§ !^§;
      }
      
      public function set §1Q§(param1:String) : void
      {
         this.§ !^§ = param1;
      }
      
      public function get type() : String
      {
         return this.§#!-§;
      }
      
      public function set type(param1:String) : void
      {
         this.§#!-§ = param1;
         this.§!Y§();
      }
      
      protected function §!Y§() : void
      {
         this.§'!z§ = "";
         if(this.§#!-§ == §,"3§ || this.§&""§ == "")
         {
            return;
         }
         switch(this.§#!-§)
         {
            case §=@§:
               this.§'!z§ = §0!'§.§=N§();
               break;
            case §%x§:
               this.§'!z§ = §0!'§.§^I§();
               break;
            case §1o§:
               this.§'!z§ = §0!'§.§7!n§();
         }
      }
      
      public function clone() : §]K§
      {
         return new §]K§(this.§&""§,this.§3-§,this.§ !^§,this.§#!-§,this.loop);
      }
   }
}
