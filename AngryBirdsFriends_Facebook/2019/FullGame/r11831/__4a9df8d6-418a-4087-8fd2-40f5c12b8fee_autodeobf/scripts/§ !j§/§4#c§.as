package § !j§
{
   public class §4#c§ implements §=#u§
   {
       
      
      private var §>#2§:Vector.<§1"_§>;
      
      private var §&#u§:§=#u§;
      
      public function §4#c§(param1:§=#u§)
      {
         super();
         this.§&#u§ = param1;
         this.§>#2§ = new Vector.<§1"_§>();
      }
      
      public function set §9"j§(param1:§=#u§) : void
      {
         this.§&#u§ = param1;
      }
      
      public function get §9"j§() : §=#u§
      {
         return this.§&#u§;
      }
      
      public function addLocalizationTarget(param1:§1"_§) : void
      {
         this.§>#2§.push(param1);
      }
      
      public function removeLocalizationTarget(param1:§1"_§) : void
      {
         if(this.§>#2§.indexOf(param1) != -1)
         {
            this.§>#2§.splice(this.§>#2§.indexOf(param1),1);
         }
      }
      
      public function §+K§(param1:String) : void
      {
         var _loc2_:§1"_§ = null;
         this.§&#u§.§+K§(param1);
         for each(_loc2_ in this.§>#2§)
         {
            _loc2_.§1!S§();
         }
      }
      
      public function §>!y§(param1:String) : String
      {
         return "<b>" + this.getLocalizedString(param1) + "</b>";
      }
      
      public function getLocalizedString(param1:String) : String
      {
         return this.§&#u§.getLocalizedString(param1);
      }
   }
}
