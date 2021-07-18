package §1#T§
{
   public class § #<§
   {
      
      public static const §?`§:String = "none";
      
      public static const §8#9§:String = "run";
      
      public static const §+"r§:String = "in";
      
      public static const § #§:String = "out";
       
      
      private var §`$%§:String;
      
      private var §['§:String;
      
      private var §7!e§:String;
      
      private var §3#z§:String;
      
      private var §+#w§:String;
      
      public var loop:Boolean;
      
      public var stageQuality:String;
      
      public function § #<§(param1:String = "", param2:String = "", param3:String = "", param4:String = "none", param5:Boolean = false, param6:String = "best")
      {
         super();
         this.§`$%§ = param1;
         this.§+#w§ = param4;
         this.§7!e§ = param2;
         this.§3#z§ = param3;
         this.loop = param5;
         this.stageQuality = param6;
         this.§+!8§();
      }
      
      public function get startLabel() : String
      {
         return this.§`$%§;
      }
      
      public function set startLabel(param1:String) : void
      {
         this.§`$%§ = param1;
         this.§+!8§();
      }
      
      public function get defaultStartLabel() : String
      {
         return this.§['§;
      }
      
      public function get §!#F§() : String
      {
         return this.§7!e§;
      }
      
      public function set §!#F§(param1:String) : void
      {
         this.§7!e§ = param1;
      }
      
      public function get §]!y§() : String
      {
         return this.§3#z§;
      }
      
      public function set §]!y§(param1:String) : void
      {
         this.§3#z§ = param1;
      }
      
      public function get type() : String
      {
         return this.§+#w§;
      }
      
      public function set type(param1:String) : void
      {
         this.§+#w§ = param1;
         this.§+!8§();
      }
      
      protected function §+!8§() : void
      {
         this.§['§ = "";
         if(this.§+#w§ == §?`§ || this.§`$%§ == "")
         {
            return;
         }
         switch(this.§+#w§)
         {
            case §8#9§:
               this.§['§ = §+L§.§&!2§();
               break;
            case §+"r§:
               this.§['§ = §+L§.§'F§();
               break;
            case § #§:
               this.§['§ = §+L§.§"$,§();
         }
      }
      
      public function clone() : § #<§
      {
         return new § #<§(this.§`$%§,this.§7!e§,this.§3#z§,this.§+#w§,this.loop);
      }
   }
}
