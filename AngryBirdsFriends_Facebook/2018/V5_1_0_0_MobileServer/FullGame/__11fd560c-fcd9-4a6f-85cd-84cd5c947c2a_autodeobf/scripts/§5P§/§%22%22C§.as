package §5P§
{
   public class §""C§ implements §'$"§
   {
       
      
      private var §-"M§:Vector.<§6#j§>;
      
      private var §&!6§:§'$"§;
      
      public function §""C§(param1:§'$"§)
      {
         super();
         this.§&!6§ = param1;
         this.§-"M§ = new Vector.<§6#j§>();
      }
      
      public function set §7X§(param1:§'$"§) : void
      {
         this.§&!6§ = param1;
      }
      
      public function get §7X§() : §'$"§
      {
         return this.§&!6§;
      }
      
      public function addLocalizationTarget(param1:§6#j§) : void
      {
         this.§-"M§.push(param1);
      }
      
      public function removeLocalizationTarget(param1:§6#j§) : void
      {
         if(this.§-"M§.indexOf(param1) != -1)
         {
            this.§-"M§.splice(this.§-"M§.indexOf(param1),1);
         }
      }
      
      public function §0#3§(param1:String) : void
      {
         var _loc2_:§6#j§ = null;
         this.§&!6§.§0#3§(param1);
         for each(_loc2_ in this.§-"M§)
         {
            _loc2_.§3"!§();
         }
      }
      
      public function §5!5§(param1:String) : String
      {
         return "<b>" + this.getLocalizedString(param1) + "</b>";
      }
      
      public function getLocalizedString(param1:String) : String
      {
         return this.§&!6§.getLocalizedString(param1);
      }
   }
}
