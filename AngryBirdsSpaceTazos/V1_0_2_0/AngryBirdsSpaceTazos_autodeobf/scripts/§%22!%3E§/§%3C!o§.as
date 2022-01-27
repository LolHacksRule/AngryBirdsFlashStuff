package §"!>§
{
   public class §<!o§ implements §6w§
   {
       
      
      private var §34§:Vector.<§,"§>;
      
      private var §!!+§:§6w§;
      
      public function §<!o§(param1:§6w§)
      {
         super();
         this.§!!+§ = param1;
         this.§34§ = new Vector.<§,"§>();
      }
      
      public function set §=7§(param1:§6w§) : void
      {
         this.§!!+§ = param1;
      }
      
      public function get §=7§() : §6w§
      {
         return this.§!!+§;
      }
      
      public function addLocalizationTarget(param1:§,"§) : void
      {
         this.§34§.push(param1);
      }
      
      public function removeLocalizationTarget(param1:§,"§) : void
      {
         if(this.§34§.indexOf(param1) != -1)
         {
            this.§34§.splice(this.§34§.indexOf(param1),1);
         }
      }
      
      public function setLanguage(param1:String) : void
      {
         var _loc2_:§,"§ = null;
         this.§!!+§.setLanguage(param1);
         for each(_loc2_ in this.§34§)
         {
            _loc2_.updateLocalization();
         }
      }
      
      public function getLocalizedString(param1:String) : String
      {
         return this.§!!+§.getLocalizedString(param1);
      }
   }
}
