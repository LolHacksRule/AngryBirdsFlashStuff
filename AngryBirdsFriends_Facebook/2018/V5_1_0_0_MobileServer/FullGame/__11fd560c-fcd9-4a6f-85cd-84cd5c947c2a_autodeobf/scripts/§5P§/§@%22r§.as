package §5P§
{
   import flash.utils.Dictionary;
   
   public class §@"r§ extends §'!G§
   {
       
      
      protected var §0`§:Dictionary;
      
      public function §@"r§(param1:String = "en")
      {
         super(param1);
         this.§0`§ = new Dictionary();
         this.§0`§[param1] = new Dictionary();
      }
      
      override public function getLocalizedString(param1:String) : String
      {
         var _loc2_:String = "";
         if(this.§0`§[§9#m§][param1])
         {
            _loc2_ = this.§0`§[§9#m§][param1];
         }
         return _loc2_;
      }
   }
}
