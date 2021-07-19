package §%!r§
{
   public class §3!'§ implements §%",§
   {
       
      
      private var §82§:Vector.<§1`§>;
      
      private var §,!A§:§%",§;
      
      public function §3!'§(param1:§%",§)
      {
         super();
         this.§,!A§ = param1;
         this.§82§ = new Vector.<§1`§>();
      }
      
      public function set §&!R§(param1:§%",§) : void
      {
         this.§,!A§ = param1;
      }
      
      public function get §&!R§() : §%",§
      {
         return this.§,!A§;
      }
      
      public function addLocalizationTarget(param1:§1`§) : void
      {
         this.§82§.push(param1);
      }
      
      public function removeLocalizationTarget(param1:§1`§) : void
      {
         if(this.§82§.indexOf(param1) != -1)
         {
            this.§82§.splice(this.§82§.indexOf(param1),1);
         }
      }
      
      public function setLanguage(param1:String) : void
      {
         var _loc2_:§1`§ = null;
         this.§,!A§.setLanguage(param1);
         for each(_loc2_ in this.§82§)
         {
            _loc2_.updateLocalization();
         }
      }
      
      public function getLocalizedString(param1:String) : String
      {
         return this.§,!A§.getLocalizedString(param1);
      }
   }
}
