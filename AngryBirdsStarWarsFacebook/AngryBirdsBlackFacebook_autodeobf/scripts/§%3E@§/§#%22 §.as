package §>@§
{
   import flash.utils.Dictionary;
   
   public class §#" § extends §`"8§
   {
       
      
      protected var §-"n§:Dictionary;
      
      public function §#" §(param1:String = "en")
      {
         super(param1);
         this.§-"n§ = new Dictionary();
         this.§-"n§[param1] = new Dictionary();
      }
      
      override public function getLocalizedString(param1:String) : String
      {
         var _loc2_:String = "";
         if(this.§-"n§[§!O§][param1])
         {
            _loc2_ = this.§-"n§[§!O§][param1];
         }
         return _loc2_;
      }
   }
}
