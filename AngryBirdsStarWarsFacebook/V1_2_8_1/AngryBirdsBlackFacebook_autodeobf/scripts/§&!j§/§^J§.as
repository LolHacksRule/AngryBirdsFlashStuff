package §&!j§
{
   import flash.utils.Dictionary;
   
   public class §^J§ extends §9"V§
   {
       
      
      protected var §"!L§:Dictionary;
      
      public function §^J§(param1:String = "en")
      {
         super(param1);
         this.§"!L§ = new Dictionary();
         this.§"!L§[param1] = new Dictionary();
      }
      
      override public function getLocalizedString(param1:String) : String
      {
         var _loc2_:String = "";
         if(this.§"!L§[§"n§][param1])
         {
            _loc2_ = this.§"!L§[§"n§][param1];
         }
         return _loc2_;
      }
   }
}
