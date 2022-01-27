package §'+§
{
   public class §="B§ implements §`"E§
   {
       
      
      private var §'=§:Vector.<§+!9§>;
      
      private var §4"k§:§`"E§;
      
      public function §="B§(param1:§`"E§)
      {
         super();
         this.§4"k§ = param1;
         this.§'=§ = new Vector.<§+!9§>();
      }
      
      public function set localizationMapping(param1:§`"E§) : void
      {
         this.§4"k§ = param1;
      }
      
      public function get localizationMapping() : §`"E§
      {
         return this.§4"k§;
      }
      
      public function addLocalizationTarget(param1:§+!9§) : void
      {
         this.§'=§.push(param1);
      }
      
      public function removeLocalizationTarget(param1:§+!9§) : void
      {
         if(this.§'=§.indexOf(param1) != -1)
         {
            this.§'=§.splice(this.§'=§.indexOf(param1),1);
         }
      }
      
      public function §1V§(param1:String) : void
      {
         var _loc2_:§+!9§ = null;
         this.§4"k§.§1V§(param1);
         for each(_loc2_ in this.§'=§)
         {
            _loc2_.§7!R§();
         }
      }
      
      public function §&!5§(param1:String) : String
      {
         return "<b>" + this.getLocalizedString(param1) + "</b>";
      }
      
      public function getLocalizedString(param1:String) : String
      {
         return this.§4"k§.getLocalizedString(param1);
      }
   }
}
