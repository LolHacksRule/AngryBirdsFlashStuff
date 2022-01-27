package §"!>§
{
   import flash.utils.Dictionary;
   
   public class §5?§ extends §?"$§
   {
       
      
      protected var §5!S§:Dictionary;
      
      public function §5?§(param1:String = "en")
      {
         super(param1);
         this.§5!S§ = new Dictionary();
         this.§5!S§[param1] = new Dictionary();
      }
      
      override public function getLocalizedString(param1:String) : String
      {
         var _loc2_:String = "";
         if(this.§5!S§[§&`§][param1])
         {
            _loc2_ = this.§5!S§[§&`§][param1];
         }
         return _loc2_;
      }
   }
}
