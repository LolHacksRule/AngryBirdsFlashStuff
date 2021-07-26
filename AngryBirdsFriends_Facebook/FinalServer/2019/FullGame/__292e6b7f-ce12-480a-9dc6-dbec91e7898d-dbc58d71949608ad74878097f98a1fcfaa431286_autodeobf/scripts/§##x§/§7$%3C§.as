package §##x§
{
   public class §7$<§
   {
      
      public static const §3h§:String = "none";
      
      public static const §3"4§:String = "run";
      
      public static const §']§:String = "in";
      
      public static const §=#C§:String = "out";
       
      
      private var §"!`§:String;
      
      private var §7"M§:String;
      
      private var §""e§:String;
      
      private var §1"_§:String;
      
      private var §2"G§:String;
      
      public var loop:Boolean;
      
      public var stageQuality:String;
      
      public function §7$<§(param1:String = "", param2:String = "", param3:String = "", param4:String = "none", param5:Boolean = false, param6:String = "best")
      {
         super();
         this.§"!`§ = param1;
         this.§2"G§ = param4;
         this.§""e§ = param2;
         this.§1"_§ = param3;
         this.loop = param5;
         this.stageQuality = param6;
         this.§!"A§();
      }
      
      public function get startLabel() : String
      {
         return this.§"!`§;
      }
      
      public function set startLabel(param1:String) : void
      {
         this.§"!`§ = param1;
         this.§!"A§();
      }
      
      public function get defaultStartLabel() : String
      {
         return this.§7"M§;
      }
      
      public function get §0#-§() : String
      {
         return this.§""e§;
      }
      
      public function set §0#-§(param1:String) : void
      {
         this.§""e§ = param1;
      }
      
      public function get §&$D§() : String
      {
         return this.§1"_§;
      }
      
      public function set §&$D§(param1:String) : void
      {
         this.§1"_§ = param1;
      }
      
      public function get type() : String
      {
         return this.§2"G§;
      }
      
      public function set type(param1:String) : void
      {
         this.§2"G§ = param1;
         this.§!"A§();
      }
      
      protected function §!"A§() : void
      {
         this.§7"M§ = "";
         if(this.§2"G§ == §3h§ || this.§"!`§ == "")
         {
            return;
         }
         switch(this.§2"G§)
         {
            case §3"4§:
               this.§7"M§ = §3#r§.§2Z§();
               break;
            case §']§:
               this.§7"M§ = §3#r§.§ "G§();
               break;
            case §=#C§:
               this.§7"M§ = §3#r§.§7"q§();
         }
      }
      
      public function clone() : §7$<§
      {
         return new §7$<§(this.§"!`§,this.§""e§,this.§1"_§,this.§2"G§,this.loop);
      }
   }
}
