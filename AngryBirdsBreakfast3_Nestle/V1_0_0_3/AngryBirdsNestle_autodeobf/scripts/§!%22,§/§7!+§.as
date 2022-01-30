package §!",§
{
   public class §7!+§
   {
      
      public static const §4"&§:String = "none";
      
      public static const §%"5§:String = "run";
      
      public static const §+R§:String = "in";
      
      public static const §1"-§:String = "out";
       
      
      private var §9A§:String;
      
      private var §7!V§:String;
      
      private var §#f§:String;
      
      private var §@a§:String;
      
      private var §`u§:String;
      
      public var loop:Boolean;
      
      public var stageQuality:String;
      
      public function §7!+§(param1:String = "", param2:String = "", param3:String = "", param4:String = "none", param5:Boolean = false, param6:String = "best")
      {
         super();
         this.§9A§ = param1;
         this.§`u§ = param4;
         this.§#f§ = param2;
         this.§@a§ = param3;
         this.loop = param5;
         this.stageQuality = param6;
         this.§0!r§();
      }
      
      public function get startLabel() : String
      {
         return this.§9A§;
      }
      
      public function set startLabel(param1:String) : void
      {
         this.§9A§ = param1;
         this.§0!r§();
      }
      
      public function get defaultStartLabel() : String
      {
         return this.§7!V§;
      }
      
      public function get §=>§() : String
      {
         return this.§#f§;
      }
      
      public function set §=>§(param1:String) : void
      {
         this.§#f§ = param1;
      }
      
      public function get §#5§() : String
      {
         return this.§@a§;
      }
      
      public function set §#5§(param1:String) : void
      {
         this.§@a§ = param1;
      }
      
      public function get type() : String
      {
         return this.§`u§;
      }
      
      public function set type(param1:String) : void
      {
         this.§`u§ = param1;
         this.§0!r§();
      }
      
      protected function §0!r§() : void
      {
         this.§7!V§ = "";
         if(this.§`u§ == §4"&§ || this.§9A§ == "")
         {
            return;
         }
         switch(this.§`u§)
         {
            case §%"5§:
               this.§7!V§ = §47§.§;]§();
               break;
            case §+R§:
               this.§7!V§ = §47§.§"!3§();
               break;
            case §1"-§:
               this.§7!V§ = §47§.§`H§();
         }
      }
      
      public function clone() : §7!+§
      {
         return new §7!+§(this.§9A§,this.§#f§,this.§@a§,this.§`u§,this.loop);
      }
   }
}
