package §"!G§
{
   import flash.utils.Dictionary;
   
   public class §8f§ extends §4""§
   {
       
      
      protected var §1<§:Dictionary;
      
      public function §8f§(param1:String = "en")
      {
         super(param1);
         this.§1<§ = new Dictionary();
         this.§1<§[param1] = new Dictionary();
      }
      
      override public function getLocalizedString(param1:String) : String
      {
         var _loc2_:String = "";
         if(this.§1<§[§^!W§][param1])
         {
            _loc2_ = this.§1<§[§^!W§][param1];
         }
         return _loc2_;
      }
   }
}
