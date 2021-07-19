package §;0§
{
   import flash.utils.Dictionary;
   
   public class §&G§ extends §<!!§
   {
       
      
      protected var §-+§:Dictionary;
      
      public function §&G§(param1:String = "en")
      {
         super(param1);
         this.§-+§ = new Dictionary();
         this.§-+§[param1] = new Dictionary();
      }
      
      override public function getLocalizedString(param1:String) : String
      {
         var _loc2_:String = "";
         if(this.§-+§[§-m§][param1])
         {
            _loc2_ = this.§-+§[§-m§][param1];
         }
         return _loc2_;
      }
   }
}
