package § ,§
{
   public class §>u§ implements §&!s§
   {
       
      
      private var §=r§:Vector.<§ !F§>;
      
      private var §!!H§:§&!s§;
      
      public function §>u§(param1:§&!s§)
      {
         super();
         this.§!!H§ = param1;
         this.§=r§ = new Vector.<§ !F§>();
      }
      
      public function set §3!n§(param1:§&!s§) : void
      {
         this.§!!H§ = param1;
      }
      
      public function get §3!n§() : §&!s§
      {
         return this.§!!H§;
      }
      
      public function addLocalizationTarget(param1:§ !F§) : void
      {
         this.§=r§.push(param1);
      }
      
      public function removeLocalizationTarget(param1:§ !F§) : void
      {
         if(this.§=r§.indexOf(param1) != -1)
         {
            this.§=r§.splice(this.§=r§.indexOf(param1),1);
         }
      }
      
      public function setLanguage(param1:String) : void
      {
         var _loc2_:§ !F§ = null;
         this.§!!H§.setLanguage(param1);
         for each(_loc2_ in this.§=r§)
         {
            _loc2_.updateLocalization();
         }
      }
      
      public function getLocalizedString(param1:String) : String
      {
         return this.§!!H§.getLocalizedString(param1);
      }
   }
}
