package §<!9§
{
   public class §^!o§
   {
      
      public static const §7!W§:String = "none";
      
      public static const §>!u§:String = "run";
      
      public static const §+"4§:String = "in";
      
      public static const §"g§:String = "out";
       
      
      private var §4!j§:String;
      
      private var §+Q§:String;
      
      private var §%j§:String;
      
      private var §]W§:String;
      
      private var §1!p§:String;
      
      public var loop:Boolean;
      
      public var stageQuality:String;
      
      public function §^!o§(param1:String = "", param2:String = "", param3:String = "", param4:String = "none", param5:Boolean = false, param6:String = "best")
      {
         super();
         this.§4!j§ = param1;
         this.§1!p§ = param4;
         this.§%j§ = param2;
         this.§]W§ = param3;
         this.loop = param5;
         this.stageQuality = param6;
         this.§;!p§();
      }
      
      public function get startLabel() : String
      {
         return this.§4!j§;
      }
      
      public function set startLabel(param1:String) : void
      {
         this.§4!j§ = param1;
         this.§;!p§();
      }
      
      public function get defaultStartLabel() : String
      {
         return this.§+Q§;
      }
      
      public function get §[;§() : String
      {
         return this.§%j§;
      }
      
      public function set §[;§(param1:String) : void
      {
         this.§%j§ = param1;
      }
      
      public function get §'e§() : String
      {
         return this.§]W§;
      }
      
      public function set §'e§(param1:String) : void
      {
         this.§]W§ = param1;
      }
      
      public function get type() : String
      {
         return this.§1!p§;
      }
      
      public function set type(param1:String) : void
      {
         this.§1!p§ = param1;
         this.§;!p§();
      }
      
      protected function §;!p§() : void
      {
         this.§+Q§ = "";
         if(this.§1!p§ == §7!W§ || this.§4!j§ == "")
         {
            return;
         }
         switch(this.§1!p§)
         {
            case §>!u§:
               this.§+Q§ = §'"$§.§%!C§();
               break;
            case §+"4§:
               this.§+Q§ = §'"$§.§9!y§();
               break;
            case §"g§:
               this.§+Q§ = §'"$§.§?!i§();
         }
      }
      
      public function clone() : §^!o§
      {
         return new §^!o§(this.§4!j§,this.§%j§,this.§]W§,this.§1!p§,this.loop);
      }
   }
}
