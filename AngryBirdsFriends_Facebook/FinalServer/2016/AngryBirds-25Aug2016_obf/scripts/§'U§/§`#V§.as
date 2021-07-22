package §'U§
{
   import flash.utils.Dictionary;
   
   public class §`#V§ extends §#>§
   {
       
      
      protected var §4"k§:Dictionary;
      
      public function §`#V§(param1:String = "en")
      {
         super(param1);
         this.§4"k§ = new Dictionary();
         this.§4"k§[param1] = new Dictionary();
      }
      
      override public function getLocalizedString(param1:String) : String
      {
         var _loc2_:String = "";
         if(this.§4"k§[§5!,§][param1])
         {
            _loc2_ = this.§4"k§[§5!,§][param1];
         }
         return _loc2_;
      }
   }
}
