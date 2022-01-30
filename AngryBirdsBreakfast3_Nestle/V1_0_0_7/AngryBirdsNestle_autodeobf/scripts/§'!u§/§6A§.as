package §'!u§
{
   import flash.utils.Dictionary;
   
   public class §6A§ extends §1!!§
   {
       
      
      protected var § e§:Dictionary;
      
      public function §6A§(param1:String = "en")
      {
         super(param1);
         this.§ e§ = new Dictionary();
         this.§ e§[param1] = new Dictionary();
      }
      
      override public function getLocalizedString(param1:String) : String
      {
         var _loc2_:String = "";
         if(this.§ e§[§7>§][param1])
         {
            _loc2_ = this.§ e§[§7>§][param1];
         }
         return _loc2_;
      }
   }
}
