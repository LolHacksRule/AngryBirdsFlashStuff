package §,a§
{
   public class §[!d§
   {
      
      public static const §#^§:String = "none";
      
      public static const §5M§:String = "run";
      
      public static const §-!g§:String = "in";
      
      public static const §&b§:String = "out";
       
      
      private var §7!j§:String;
      
      private var §7"0§:String;
      
      private var §4"§:String;
      
      private var §6"3§:String;
      
      private var §3d§:String;
      
      public var loop:Boolean;
      
      public var stageQuality:String;
      
      public function §[!d§(param1:String = "", param2:String = "", param3:String = "", param4:String = "none", param5:Boolean = false, param6:String = "best")
      {
         super();
         this.§7!j§ = param1;
         this.§3d§ = param4;
         this.§4"§ = param2;
         this.§6"3§ = param3;
         this.loop = param5;
         this.stageQuality = param6;
         this.§<!8§();
      }
      
      public function get startLabel() : String
      {
         return this.§7!j§;
      }
      
      public function set startLabel(param1:String) : void
      {
         this.§7!j§ = param1;
         this.§<!8§();
      }
      
      public function get defaultStartLabel() : String
      {
         return this.§7"0§;
      }
      
      public function get §1q§() : String
      {
         return this.§4"§;
      }
      
      public function set §1q§(param1:String) : void
      {
         this.§4"§ = param1;
      }
      
      public function get §?3§() : String
      {
         return this.§6"3§;
      }
      
      public function set §?3§(param1:String) : void
      {
         this.§6"3§ = param1;
      }
      
      public function get type() : String
      {
         return this.§3d§;
      }
      
      public function set type(param1:String) : void
      {
         this.§3d§ = param1;
         this.§<!8§();
      }
      
      protected function §<!8§() : void
      {
         this.§7"0§ = "";
         if(this.§3d§ == §#^§ || this.§7!j§ == "")
         {
            return;
         }
         switch(this.§3d§)
         {
            case §5M§:
               this.§7"0§ = §3!8§.§`!x§();
               break;
            case §-!g§:
               this.§7"0§ = §3!8§.§-r§();
               break;
            case §&b§:
               this.§7"0§ = §3!8§.§<!§();
         }
      }
      
      public function clone() : §[!d§
      {
         return new §[!d§(this.§7!j§,this.§4"§,this.§6"3§,this.§3d§,this.loop);
      }
   }
}
