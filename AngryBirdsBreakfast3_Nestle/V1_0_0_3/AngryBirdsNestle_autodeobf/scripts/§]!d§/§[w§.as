package §]!d§
{
   import flash.utils.Dictionary;
   
   public class §[w§ extends §^3§
   {
       
      
      protected var §4!n§:Dictionary;
      
      public function §[w§(param1:String = "en")
      {
         super(param1);
         this.§4!n§ = new Dictionary();
         this.§4!n§[param1] = new Dictionary();
      }
      
      override public function getLocalizedString(param1:String) : String
      {
         var _loc2_:String = "";
         if(this.§4!n§[§8T§][param1])
         {
            _loc2_ = this.§4!n§[§8T§][param1];
         }
         return _loc2_;
      }
   }
}
