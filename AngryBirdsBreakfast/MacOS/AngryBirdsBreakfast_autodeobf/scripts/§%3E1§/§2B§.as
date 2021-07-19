package §>1§
{
   public class §2B§
   {
      
      public static const §0!&§:String = "none";
      
      public static const §+!_§:String = "run";
      
      public static const §"<§:String = "in";
      
      public static const §-!S§:String = "out";
       
      
      private var §]H§:String;
      
      private var §^i§:String;
      
      private var §'!X§:String;
      
      private var §`P§:String;
      
      private var §^"'§:String;
      
      public var loop:Boolean;
      
      public var stageQuality:String;
      
      public function §2B§(param1:String = "", param2:String = "", param3:String = "", param4:String = "none", param5:Boolean = false, param6:String = "best")
      {
         super();
         this.§]H§ = param1;
         this.§^"'§ = param4;
         this.§'!X§ = param2;
         this.§`P§ = param3;
         this.loop = param5;
         this.stageQuality = param6;
         this.§,![§();
      }
      
      public function get startLabel() : String
      {
         return this.§]H§;
      }
      
      public function set startLabel(param1:String) : void
      {
         this.§]H§ = param1;
         this.§,![§();
      }
      
      public function get defaultStartLabel() : String
      {
         return this.§^i§;
      }
      
      public function get §'!J§() : String
      {
         return this.§'!X§;
      }
      
      public function set §'!J§(param1:String) : void
      {
         this.§'!X§ = param1;
      }
      
      public function get §1!p§() : String
      {
         return this.§`P§;
      }
      
      public function set §1!p§(param1:String) : void
      {
         this.§`P§ = param1;
      }
      
      public function get type() : String
      {
         return this.§^"'§;
      }
      
      public function set type(param1:String) : void
      {
         this.§^"'§ = param1;
         this.§,![§();
      }
      
      protected function §,![§() : void
      {
         this.§^i§ = "";
         if(this.§^"'§ == §0!&§ || this.§]H§ == "")
         {
            return;
         }
         switch(this.§^"'§)
         {
            case §+!_§:
               this.§^i§ = §7a§.§0-§();
               break;
            case §"<§:
               this.§^i§ = §7a§.§;!W§();
               break;
            case §-!S§:
               this.§^i§ = §7a§.§!7§();
         }
      }
      
      public function clone() : §2B§
      {
         return new §2B§(this.§]H§,this.§'!X§,this.§`P§,this.§^"'§,this.loop);
      }
   }
}
