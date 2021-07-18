package §,M§
{
   import flash.utils.Dictionary;
   
   public class §8"&§ extends §!"7§
   {
       
      
      protected var §0r§:Dictionary;
      
      public function §8"&§(param1:String = "en")
      {
         super(param1);
         this.§0r§ = new Dictionary();
         this.§0r§[param1] = new Dictionary();
      }
      
      override public function getLocalizedString(param1:String) : String
      {
         var _loc2_:String = "";
         if(this.§0r§[§3!`§][param1])
         {
            _loc2_ = this.§0r§[§3!`§][param1];
         }
         return _loc2_;
      }
   }
}
