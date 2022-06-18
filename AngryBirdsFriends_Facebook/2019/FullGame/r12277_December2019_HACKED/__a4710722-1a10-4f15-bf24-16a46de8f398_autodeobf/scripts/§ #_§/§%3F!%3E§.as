package § #_§
{
   public class §?!>§ implements §]"K§
   {
       
      
      private var §;#Q§:Vector.<§'0§>;
      
      private var §4<§:§]"K§;
      
      public function §?!>§(param1:§]"K§)
      {
         super();
         this.§4<§ = param1;
         this.§;#Q§ = new Vector.<§'0§>();
      }
      
      public function set §-W§(param1:§]"K§) : void
      {
         this.§4<§ = param1;
      }
      
      public function get §-W§() : §]"K§
      {
         return this.§4<§;
      }
      
      public function addLocalizationTarget(param1:§'0§) : void
      {
         this.§;#Q§.push(param1);
      }
      
      public function removeLocalizationTarget(param1:§'0§) : void
      {
         if(this.§;#Q§.indexOf(param1) != -1)
         {
            this.§;#Q§.splice(this.§;#Q§.indexOf(param1),1);
         }
      }
      
      public function §8x§(param1:String) : void
      {
         var _loc2_:§'0§ = null;
         this.§4<§.§8x§(param1);
         for each(_loc2_ in this.§;#Q§)
         {
            _loc2_.§"9§();
         }
      }
      
      public function §@#`§(param1:String) : String
      {
         return "<b>" + this.getLocalizedString(param1) + "</b>";
      }
      
      public function getLocalizedString(param1:String) : String
      {
         return this.§4<§.getLocalizedString(param1);
      }
   }
}
