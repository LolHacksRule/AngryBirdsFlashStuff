package §3"G§
{
   public class §16§ implements §#!I§
   {
       
      
      private var §<#>§:Vector.<§1!N§>;
      
      private var §@! §:§#!I§;
      
      public function §16§(param1:§#!I§)
      {
         super();
         this.§@! § = param1;
         this.§<#>§ = new Vector.<§1!N§>();
      }
      
      public function set §&#T§(param1:§#!I§) : void
      {
         this.§@! § = param1;
      }
      
      public function get §&#T§() : §#!I§
      {
         return this.§@! §;
      }
      
      public function addLocalizationTarget(param1:§1!N§) : void
      {
         this.§<#>§.push(param1);
      }
      
      public function removeLocalizationTarget(param1:§1!N§) : void
      {
         if(this.§<#>§.indexOf(param1) != -1)
         {
            this.§<#>§.splice(this.§<#>§.indexOf(param1),1);
         }
      }
      
      public function §+$%§(param1:String) : void
      {
         var _loc2_:§1!N§ = null;
         this.§@! §.§+$%§(param1);
         for each(_loc2_ in this.§<#>§)
         {
            _loc2_.§#0§();
         }
      }
      
      public function §&H§(param1:String) : String
      {
         return "<b>" + this.getLocalizedString(param1) + "</b>";
      }
      
      public function getLocalizedString(param1:String) : String
      {
         return this.§@! §.getLocalizedString(param1);
      }
   }
}
