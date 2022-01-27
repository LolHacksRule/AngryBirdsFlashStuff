package §@"D§
{
   public class §#d§
   {
      
      public static const §'C§:String = "none";
      
      public static const §#!y§:String = "run";
      
      public static const §>@§:String = "in";
      
      public static const §5"D§:String = "out";
       
      
      private var §&!%§:String;
      
      private var §5h§:String;
      
      private var §1!o§:String;
      
      private var §-"2§:String;
      
      private var §-!e§:String;
      
      public var loop:Boolean;
      
      public var stageQuality:String;
      
      public function §#d§(param1:String = "", param2:String = "", param3:String = "", param4:String = "none", param5:Boolean = false, param6:String = "best")
      {
         super();
         this.§&!%§ = param1;
         this.§-!e§ = param4;
         this.§1!o§ = param2;
         this.§-"2§ = param3;
         this.loop = param5;
         this.stageQuality = param6;
         this.§5!'§();
      }
      
      public function get startLabel() : String
      {
         return this.§&!%§;
      }
      
      public function set startLabel(param1:String) : void
      {
         this.§&!%§ = param1;
         this.§5!'§();
      }
      
      public function get defaultStartLabel() : String
      {
         return this.§5h§;
      }
      
      public function get §@">§() : String
      {
         return this.§1!o§;
      }
      
      public function set §@">§(param1:String) : void
      {
         this.§1!o§ = param1;
      }
      
      public function get §7!f§() : String
      {
         return this.§-"2§;
      }
      
      public function set §7!f§(param1:String) : void
      {
         this.§-"2§ = param1;
      }
      
      public function get type() : String
      {
         return this.§-!e§;
      }
      
      public function set type(param1:String) : void
      {
         this.§-!e§ = param1;
         this.§5!'§();
      }
      
      protected function §5!'§() : void
      {
         this.§5h§ = "";
         if(this.§-!e§ == §'C§ || this.§&!%§ == "")
         {
            return;
         }
         if(this.§-!e§ == §>@§)
         {
            this.§5h§ = §5"E§.§4c§();
         }
         else if(this.§-!e§ == §5"D§)
         {
            this.§5h§ = §5"E§.§6"8§();
         }
      }
      
      public function clone() : §#d§
      {
         return new §#d§(this.§&!%§,this.§1!o§,this.§-"2§,this.§-!e§,this.loop);
      }
   }
}
