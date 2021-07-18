package §;0§
{
   public class §6h§ implements §,g§
   {
       
      
      private var §<!D§:Vector.<§ !s§>;
      
      private var §#!M§:§,g§;
      
      public function §6h§(param1:§,g§)
      {
         super();
         this.§#!M§ = param1;
         this.§<!D§ = new Vector.<§ !s§>();
      }
      
      public function set §=!R§(param1:§,g§) : void
      {
         this.§#!M§ = param1;
      }
      
      public function get §=!R§() : §,g§
      {
         return this.§#!M§;
      }
      
      public function addLocalizationTarget(param1:§ !s§) : void
      {
         this.§<!D§.push(param1);
      }
      
      public function removeLocalizationTarget(param1:§ !s§) : void
      {
         if(this.§<!D§.indexOf(param1) != -1)
         {
            this.§<!D§.splice(this.§<!D§.indexOf(param1),1);
         }
      }
      
      public function setLanguage(param1:String) : void
      {
         var _loc2_:§ !s§ = null;
         this.§#!M§.setLanguage(param1);
         for each(_loc2_ in this.§<!D§)
         {
            _loc2_.updateLocalization();
         }
      }
      
      public function §^W§(param1:String) : String
      {
         return "<b>" + this.getLocalizedString(param1) + "</b>";
      }
      
      public function getLocalizedString(param1:String) : String
      {
         return this.§#!M§.getLocalizedString(param1);
      }
   }
}
