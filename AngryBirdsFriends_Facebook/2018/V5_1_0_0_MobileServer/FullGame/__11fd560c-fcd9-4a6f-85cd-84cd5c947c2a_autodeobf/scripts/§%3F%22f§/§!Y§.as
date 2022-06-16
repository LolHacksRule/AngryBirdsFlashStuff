package §?"f§
{
   public class §!Y§
   {
      
      public static const §9?§:String = "none";
      
      public static const §[,§:String = "run";
      
      public static const §6[§:String = "in";
      
      public static const §>$?§:String = "out";
       
      
      private var §>B§:String;
      
      private var §,!=§:String;
      
      private var §<!i§:String;
      
      private var §^s§:String;
      
      private var §"#7§:String;
      
      public var loop:Boolean;
      
      public var stageQuality:String;
      
      public function §!Y§(param1:String = "", param2:String = "", param3:String = "", param4:String = "none", param5:Boolean = false, param6:String = "best")
      {
         super();
         this.§>B§ = param1;
         this.§"#7§ = param4;
         this.§<!i§ = param2;
         this.§^s§ = param3;
         this.loop = param5;
         this.stageQuality = param6;
         this.§9"M§();
      }
      
      public function get startLabel() : String
      {
         return this.§>B§;
      }
      
      public function set startLabel(param1:String) : void
      {
         this.§>B§ = param1;
         this.§9"M§();
      }
      
      public function get defaultStartLabel() : String
      {
         return this.§,!=§;
      }
      
      public function get §9_§() : String
      {
         return this.§<!i§;
      }
      
      public function set §9_§(param1:String) : void
      {
         this.§<!i§ = param1;
      }
      
      public function get §8v§() : String
      {
         return this.§^s§;
      }
      
      public function set §8v§(param1:String) : void
      {
         this.§^s§ = param1;
      }
      
      public function get type() : String
      {
         return this.§"#7§;
      }
      
      public function set type(param1:String) : void
      {
         this.§"#7§ = param1;
         this.§9"M§();
      }
      
      protected function §9"M§() : void
      {
         this.§,!=§ = "";
         if(this.§"#7§ == §9?§ || this.§>B§ == "")
         {
            return;
         }
         switch(this.§"#7§)
         {
            case §[,§:
               this.§,!=§ = §7"3§.§7>§();
               break;
            case §6[§:
               this.§,!=§ = §7"3§.§3#%§();
               break;
            case §>$?§:
               this.§,!=§ = §7"3§.§ !%§();
         }
      }
      
      public function clone() : §!Y§
      {
         return new §!Y§(this.§>B§,this.§<!i§,this.§^s§,this.§"#7§,this.loop);
      }
   }
}
