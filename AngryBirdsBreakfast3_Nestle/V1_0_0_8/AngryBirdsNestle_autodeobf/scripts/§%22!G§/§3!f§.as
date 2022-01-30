package §"!G§
{
   public class §3!f§ implements §!!5§
   {
       
      
      private var §^"#§:Vector.<§'"!§>;
      
      private var §>!X§:§!!5§;
      
      public function §3!f§(param1:§!!5§)
      {
         super();
         this.§>!X§ = param1;
         this.§^"#§ = new Vector.<§'"!§>();
      }
      
      public function set §"""§(param1:§!!5§) : void
      {
         this.§>!X§ = param1;
      }
      
      public function get §"""§() : §!!5§
      {
         return this.§>!X§;
      }
      
      public function addLocalizationTarget(param1:§'"!§) : void
      {
         this.§^"#§.push(param1);
      }
      
      public function removeLocalizationTarget(param1:§'"!§) : void
      {
         if(this.§^"#§.indexOf(param1) != -1)
         {
            this.§^"#§.splice(this.§^"#§.indexOf(param1),1);
         }
      }
      
      public function setLanguage(param1:String) : void
      {
         var _loc2_:§'"!§ = null;
         this.§>!X§.setLanguage(param1);
         for each(_loc2_ in this.§^"#§)
         {
            _loc2_.updateLocalization();
         }
      }
      
      public function §"!6§(param1:String) : String
      {
         return "<b>" + this.getLocalizedString(param1) + "</b>";
      }
      
      public function getLocalizedString(param1:String) : String
      {
         return this.§>!X§.getLocalizedString(param1);
      }
   }
}
