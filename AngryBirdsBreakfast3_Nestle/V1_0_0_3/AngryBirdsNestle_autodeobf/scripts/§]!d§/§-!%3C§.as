package §]!d§
{
   public class §-!<§ implements §#!M§
   {
       
      
      private var §3"&§:Vector.<§8!,§>;
      
      private var §[!+§:§#!M§;
      
      public function §-!<§(param1:§#!M§)
      {
         super();
         this.§[!+§ = param1;
         this.§3"&§ = new Vector.<§8!,§>();
      }
      
      public function set §-!;§(param1:§#!M§) : void
      {
         this.§[!+§ = param1;
      }
      
      public function get §-!;§() : §#!M§
      {
         return this.§[!+§;
      }
      
      public function addLocalizationTarget(param1:§8!,§) : void
      {
         this.§3"&§.push(param1);
      }
      
      public function removeLocalizationTarget(param1:§8!,§) : void
      {
         if(this.§3"&§.indexOf(param1) != -1)
         {
            this.§3"&§.splice(this.§3"&§.indexOf(param1),1);
         }
      }
      
      public function setLanguage(param1:String) : void
      {
         var _loc2_:§8!,§ = null;
         this.§[!+§.setLanguage(param1);
         for each(_loc2_ in this.§3"&§)
         {
            _loc2_.updateLocalization();
         }
      }
      
      public function getLocalizedString(param1:String) : String
      {
         return this.§[!+§.getLocalizedString(param1);
      }
   }
}
