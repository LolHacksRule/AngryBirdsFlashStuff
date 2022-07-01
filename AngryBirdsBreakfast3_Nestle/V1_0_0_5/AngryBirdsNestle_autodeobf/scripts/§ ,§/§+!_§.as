package § ,§
{
   import flash.utils.Dictionary;
   
   public class §+!_§ extends §]'§
   {
       
      
      protected var §>f§:Dictionary;
      
      public function §+!_§(param1:String = "en")
      {
         super(param1);
         this.§>f§ = new Dictionary();
         this.§>f§[param1] = new Dictionary();
      }
      
      override public function getLocalizedString(param1:String) : String
      {
         var _loc2_:String = "";
         if(this.§>f§[§8!8§][param1])
         {
            _loc2_ = this.§>f§[§8!8§][param1];
         }
         return _loc2_;
      }
   }
}
