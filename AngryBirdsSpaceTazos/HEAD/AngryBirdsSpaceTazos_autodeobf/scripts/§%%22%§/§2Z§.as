package §%"%§
{
   public class §2Z§ implements §#"A§
   {
       
      
      private var §3!l§:Vector.<§@3§>;
      
      private var §>"<§:§#"A§;
      
      public function §2Z§(param1:§#"A§)
      {
         super();
         this.§>"<§ = param1;
         this.§3!l§ = new Vector.<§@3§>();
      }
      
      public function set §[!v§(param1:§#"A§) : void
      {
         this.§>"<§ = param1;
      }
      
      public function get §[!v§() : §#"A§
      {
         return this.§>"<§;
      }
      
      public function addLocalizationTarget(param1:§@3§) : void
      {
         this.§3!l§.push(param1);
      }
      
      public function removeLocalizationTarget(param1:§@3§) : void
      {
         if(this.§3!l§.indexOf(param1) != -1)
         {
            this.§3!l§.splice(this.§3!l§.indexOf(param1),1);
         }
      }
      
      public function setLanguage(param1:String) : void
      {
         var _loc2_:§@3§ = null;
         this.§>"<§.setLanguage(param1);
         for each(_loc2_ in this.§3!l§)
         {
            _loc2_.updateLocalization();
         }
      }
      
      public function getLocalizedString(param1:String) : String
      {
         return this.§>"<§.getLocalizedString(param1);
      }
   }
}
