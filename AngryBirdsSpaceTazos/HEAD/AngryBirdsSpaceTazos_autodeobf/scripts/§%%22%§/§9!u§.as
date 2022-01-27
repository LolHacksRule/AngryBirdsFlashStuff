package §%"%§
{
   import flash.utils.Dictionary;
   
   public class §9!u§ extends §]D§
   {
       
      
      protected var §1T§:Dictionary;
      
      public function §9!u§(param1:String = "en")
      {
         super(param1);
         this.§1T§ = new Dictionary();
         this.§1T§[param1] = new Dictionary();
      }
      
      override public function getLocalizedString(param1:String) : String
      {
         var _loc2_:String = "";
         if(this.§1T§[§+Q§][param1])
         {
            _loc2_ = this.§1T§[§+Q§][param1];
         }
         return _loc2_;
      }
   }
}
