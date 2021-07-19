package §@!v§
{
   public class §24§ extends §?t§
   {
       
      
      public function §24§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function sendRequest(param1:String, param2:String, param3:String = "POST", param4:Function = null, param5:Function = null, param6:String = null) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param3)
         {
            new §24§().§<!S§(param1,param2,param3,param4,param5,param6);
         }
      }
      
      override protected function readResponse(param1:Object) : Object
      {
         return param1;
      }
   }
}
