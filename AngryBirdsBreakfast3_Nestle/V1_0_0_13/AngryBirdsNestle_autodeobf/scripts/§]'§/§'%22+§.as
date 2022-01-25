package §]'§
{
   public class §'"+§
   {
      
      public static const §49§:String = "none";
      
      public static const §4!k§:String = "run";
      
      public static const §85§:String = "in";
      
      public static const §+U§:String = "out";
       
      
      private var §6B§:String;
      
      private var §!"6§:String;
      
      private var §]!&§:String;
      
      private var §0"5§:String;
      
      private var §=3§:String;
      
      public var loop:Boolean;
      
      public var stageQuality:String;
      
      public function §'"+§(param1:String = "", param2:String = "", param3:String = "", param4:String = "none", param5:Boolean = false, param6:String = "best")
      {
         super();
         this.§6B§ = param1;
         this.§=3§ = param4;
         this.§]!&§ = param2;
         this.§0"5§ = param3;
         this.loop = param5;
         this.stageQuality = param6;
         this.§9y§();
      }
      
      public function get startLabel() : String
      {
         return this.§6B§;
      }
      
      public function set startLabel(param1:String) : void
      {
         this.§6B§ = param1;
         this.§9y§();
      }
      
      public function get defaultStartLabel() : String
      {
         return this.§!"6§;
      }
      
      public function get §%§() : String
      {
         return this.§]!&§;
      }
      
      public function set §%§(param1:String) : void
      {
         this.§]!&§ = param1;
      }
      
      public function get §9!M§() : String
      {
         return this.§0"5§;
      }
      
      public function set §9!M§(param1:String) : void
      {
         this.§0"5§ = param1;
      }
      
      public function get type() : String
      {
         return this.§=3§;
      }
      
      public function set type(param1:String) : void
      {
         this.§=3§ = param1;
         this.§9y§();
      }
      
      protected function §9y§() : void
      {
         this.§!"6§ = "";
         if(this.§=3§ == §49§ || this.§6B§ == "")
         {
            return;
         }
         switch(this.§=3§)
         {
            case §4!k§:
               this.§!"6§ = §5B§.§3!=§();
               break;
            case §85§:
               this.§!"6§ = §5B§.§@!Z§();
               break;
            case §+U§:
               this.§!"6§ = §5B§.§5!^§();
         }
      }
      
      public function clone() : §'"+§
      {
         return new §'"+§(this.§6B§,this.§]!&§,this.§0"5§,this.§=3§,this.loop);
      }
   }
}
