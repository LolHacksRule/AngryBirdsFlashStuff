package §;!b§
{
   public class §%>§ implements §&!Q§
   {
       
      
      private var §`!'§:Vector.<§#!x§>;
      
      private var §["%§:§&!Q§;
      
      public function §%>§(param1:§&!Q§)
      {
         super();
         this.§["%§ = param1;
         this.§`!'§ = new Vector.<§#!x§>();
      }
      
      public function set §!!s§(param1:§&!Q§) : void
      {
         this.§["%§ = param1;
      }
      
      public function get §!!s§() : §&!Q§
      {
         return this.§["%§;
      }
      
      public function addLocalizationTarget(param1:§#!x§) : void
      {
         this.§`!'§.push(param1);
      }
      
      public function removeLocalizationTarget(param1:§#!x§) : void
      {
         if(this.§`!'§.indexOf(param1) != -1)
         {
            this.§`!'§.splice(this.§`!'§.indexOf(param1),1);
         }
      }
      
      public function setLanguage(param1:String) : void
      {
         var _loc2_:§#!x§ = null;
         this.§["%§.setLanguage(param1);
         for each(_loc2_ in this.§`!'§)
         {
            _loc2_.updateLocalization();
         }
      }
      
      public function getLocalizedString(param1:String) : String
      {
         return this.§["%§.getLocalizedString(param1);
      }
   }
}
