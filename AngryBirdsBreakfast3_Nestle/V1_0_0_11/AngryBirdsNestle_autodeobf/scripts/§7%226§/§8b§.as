package §7"6§
{
   import flash.utils.Dictionary;
   
   public class §8b§ extends §@x§
   {
       
      
      protected var §%!L§:Dictionary;
      
      public function §8b§(param1:String = "en")
      {
         super(param1);
         this.§%!L§ = new Dictionary();
         this.§%!L§[param1] = new Dictionary();
      }
      
      override public function getLocalizedString(param1:String) : String
      {
         var _loc2_:String = "";
         if(this.§%!L§[§^!p§][param1])
         {
            _loc2_ = this.§%!L§[§^!p§][param1];
         }
         return _loc2_;
      }
   }
}
