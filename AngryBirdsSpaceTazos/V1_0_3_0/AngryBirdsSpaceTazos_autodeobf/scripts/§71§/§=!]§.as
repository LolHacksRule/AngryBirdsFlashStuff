package §71§
{
   import flash.utils.Dictionary;
   
   public class §=!]§ extends §@!s§
   {
       
      
      protected var §7!1§:Dictionary;
      
      public function §=!]§(param1:String = "en")
      {
         super(param1);
         this.§7!1§ = new Dictionary();
         this.§7!1§[param1] = new Dictionary();
      }
      
      override public function getLocalizedString(param1:String) : String
      {
         var _loc2_:String = "";
         if(this.§7!1§[§=!d§][param1])
         {
            _loc2_ = this.§7!1§[§=!d§][param1];
         }
         return _loc2_;
      }
   }
}
