package §&"&§
{
   import §5<§.§%^§;
   import §@!;§.§&F§;
   
   public class §3R§
   {
       
      
      public function §3R§()
      {
         super();
      }
      
      public static function get §0!2§() : String
      {
         return "";
      }
      
      public static function §3"!§(param1:String, param2:Function) : void
      {
         §&F§.log("Rating level");
         var _loc3_:String = §0!2§ + "/level/rate/" + param1;
         §%^§.sendRequest(_loc3_,"","POST",param2,§4!q§,"application/json");
      }
      
      public static function §4!q§() : void
      {
         §&F§.log("Rating FAIL");
      }
      
      public static function §4!N§(param1:String, param2:int) : void
      {
         var _loc3_:String = §0!2§ + "/level/completion/" + param1 + "/" + param2;
         §%^§.sendRequest(_loc3_,"","POST",§%!p§,§]!v§,"application/json");
      }
      
      public static function §%!p§(param1:String) : void
      {
         §&F§.log("onLevelCompletion success! " + param1);
         var _loc2_:Object = JSON.parse(param1);
         §8!"§.doJsCall("onLevelCompleted",_loc2_);
      }
      
      public static function §]!v§() : void
      {
         §&F§.log("Rating FAIL");
      }
      
      public static function loadLevel(param1:String, param2:Function, param3:Function) : void
      {
         §%^§.sendRequest(§0!2§ + "/level/load/" + param1,"","POST",param2,param3,"application/json");
      }
      
      public static function §,!f§(param1:String, param2:Object, param3:Function, param4:Function) : void
      {
         var _loc5_:* = §0!2§ + "/level/save/";
         if(param1 != null)
         {
            _loc5_ += param1;
         }
         §%^§.sendRequest(_loc5_,JSON.stringify(param2),"POST",param3,param4,"application/json");
      }
      
      public static function §>"7§(param1:String, param2:Number, param3:Number, param4:Function, param5:Function) : void
      {
         var _loc6_:String = §0!2§ + "/levels/" + param1;
         §%^§.sendRequest(_loc6_,"","POST",param4,param5,"text/plain");
      }
   }
}
