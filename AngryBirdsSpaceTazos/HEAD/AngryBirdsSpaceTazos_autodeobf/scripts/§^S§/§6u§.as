package §^S§
{
   public class §6u§
   {
      
      public static const §-r§:String = "none";
      
      public static const §9!w§:String = "run";
      
      public static const §5!-§:String = "in";
      
      public static const §2!!§:String = "out";
       
      
      private var §'!J§:String;
      
      private var §#!b§:String;
      
      private var §;!e§:String;
      
      private var §`Y§:String;
      
      private var §'!$§:String;
      
      public var loop:Boolean;
      
      public var stageQuality:String;
      
      public function §6u§(param1:String = "", param2:String = "", param3:String = "", param4:String = "none", param5:Boolean = false, param6:String = "best")
      {
         super();
         this.§'!J§ = param1;
         this.§'!$§ = param4;
         this.§;!e§ = param2;
         this.§`Y§ = param3;
         this.loop = param5;
         this.stageQuality = param6;
         this.§4%§();
      }
      
      public function get startLabel() : String
      {
         return this.§'!J§;
      }
      
      public function set startLabel(param1:String) : void
      {
         this.§'!J§ = param1;
         this.§4%§();
      }
      
      public function get defaultStartLabel() : String
      {
         return this.§#!b§;
      }
      
      public function get §@%§() : String
      {
         return this.§;!e§;
      }
      
      public function set §@%§(param1:String) : void
      {
         this.§;!e§ = param1;
      }
      
      public function get §?s§() : String
      {
         return this.§`Y§;
      }
      
      public function set §?s§(param1:String) : void
      {
         this.§`Y§ = param1;
      }
      
      public function get type() : String
      {
         return this.§'!$§;
      }
      
      public function set type(param1:String) : void
      {
         this.§'!$§ = param1;
         this.§4%§();
      }
      
      protected function §4%§() : void
      {
         this.§#!b§ = "";
         if(this.§'!$§ == §-r§ || this.§'!J§ == "")
         {
            return;
         }
         if(this.§'!$§ == §5!-§)
         {
            this.§#!b§ = §2" §.§2!I§();
         }
         else if(this.§'!$§ == §2!!§)
         {
            this.§#!b§ = §2" §.§"u§();
         }
      }
      
      public function clone() : §6u§
      {
         return new §6u§(this.§'!J§,this.§;!e§,this.§`Y§,this.§'!$§,this.loop);
      }
   }
}
