package §0K§
{
   public class §&"§
   {
      
      public static const §-!j§:String = "none";
      
      public static const §-"$§:String = "run";
      
      public static const §0!S§:String = "in";
      
      public static const §<_§:String = "out";
       
      
      private var §0i§:String;
      
      private var §+"5§:String;
      
      private var §try§:String;
      
      private var §53§:String;
      
      private var §]" §:String;
      
      public var loop:Boolean;
      
      public var stageQuality:String;
      
      public function §&"§(param1:String = "", param2:String = "", param3:String = "", param4:String = "none", param5:Boolean = false, param6:String = "best")
      {
         super();
         this.§0i§ = param1;
         this.§]" § = param4;
         this.§try§ = param2;
         this.§53§ = param3;
         this.loop = param5;
         this.stageQuality = param6;
         this.§5!V§();
      }
      
      public function get startLabel() : String
      {
         return this.§0i§;
      }
      
      public function set startLabel(param1:String) : void
      {
         this.§0i§ = param1;
         this.§5!V§();
      }
      
      public function get defaultStartLabel() : String
      {
         return this.§+"5§;
      }
      
      public function get §,!%§() : String
      {
         return this.§try§;
      }
      
      public function set §,!%§(param1:String) : void
      {
         this.§try§ = param1;
      }
      
      public function get §<b§() : String
      {
         return this.§53§;
      }
      
      public function set §<b§(param1:String) : void
      {
         this.§53§ = param1;
      }
      
      public function get type() : String
      {
         return this.§]" §;
      }
      
      public function set type(param1:String) : void
      {
         this.§]" § = param1;
         this.§5!V§();
      }
      
      protected function §5!V§() : void
      {
         this.§+"5§ = "";
         if(this.§]" § == §-!j§ || this.§0i§ == "")
         {
            return;
         }
         switch(this.§]" §)
         {
            case §-"$§:
               this.§+"5§ = §3w§.§ if§();
               break;
            case §0!S§:
               this.§+"5§ = §3w§.§!1§();
               break;
            case §<_§:
               this.§+"5§ = §3w§.§@!n§();
         }
      }
      
      public function clone() : §&"§
      {
         return new §&"§(this.§0i§,this.§try§,this.§53§,this.§]" §,this.loop);
      }
   }
}
