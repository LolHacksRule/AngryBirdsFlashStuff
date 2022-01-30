package §;!b§
{
   import flash.utils.Dictionary;
   
   public class §;!]§ extends §7V§
   {
       
      
      protected var §-G§:Dictionary;
      
      public function §;!]§(param1:String = "en")
      {
         super(param1);
         this.§-G§ = new Dictionary();
         this.§-G§[param1] = new Dictionary();
      }
      
      override public function getLocalizedString(param1:String) : String
      {
         var _loc2_:String = "";
         if(this.§-G§[§,!,§][param1])
         {
            _loc2_ = this.§-G§[§,!,§][param1];
         }
         return _loc2_;
      }
   }
}
