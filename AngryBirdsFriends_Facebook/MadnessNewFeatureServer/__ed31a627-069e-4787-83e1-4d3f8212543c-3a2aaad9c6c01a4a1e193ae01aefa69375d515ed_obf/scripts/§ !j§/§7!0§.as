package § !j§
{
   import flash.utils.Dictionary;
   
   public class §7!0§ extends §>!;§
   {
       
      
      protected var §2!9§:Dictionary;
      
      public function §7!0§(param1:String = "en")
      {
         super(param1);
         this.§2!9§ = new Dictionary();
         this.§2!9§[param1] = new Dictionary();
      }
      
      override public function getLocalizedString(param1:String) : String
      {
         var _loc2_:String = "";
         if(this.§2!9§[§ 5§][param1])
         {
            _loc2_ = this.§2!9§[§ 5§][param1];
         }
         return _loc2_;
      }
   }
}
