package §%_§
{
   import §=!M§.§9!P§;
   import §@!v§.§24§;
   
   public class §5"8§
   {
       
      
      public function §5"8§()
      {
         super();
      }
      
      public static function get §`!t§() : String
      {
         return "";
      }
      
      public static function §5j§(param1:String, param2:Function) : void
      {
         §9!P§.log("Rating level");
         var _loc3_:String = §`!t§ + "/level/rate/" + param1;
         §24§.sendRequest(_loc3_,"","POST",param2,§ !X§,"application/json");
      }
      
      public static function § !X§() : void
      {
         §9!P§.log("Rating FAIL");
      }
      
      public static function §'!J§(param1:String, param2:int) : void
      {
         var _loc3_:String = §`!t§ + "/level/completion/" + param1 + "/" + param2;
         §24§.sendRequest(_loc3_,"","POST",§ §,§]"1§,"application/json");
      }
      
      public static function § §(param1:String) : void
      {
         §9!P§.log("onLevelCompletion success! " + param1);
         var _loc2_:Object = JSON.parse(param1);
         §4m§.doJsCall("onLevelCompleted",_loc2_);
      }
      
      public static function §]"1§() : void
      {
         §9!P§.log("Rating FAIL");
      }
      
      public static function loadLevel(param1:String, param2:Function, param3:Function) : void
      {
         §24§.sendRequest(§`!t§ + "/level/load/" + param1,"","POST",param2,param3,"application/json");
      }
      
      public static function § !s§(param1:String, param2:Object, param3:Function, param4:Function) : void
      {
         var _loc5_:* = §`!t§ + "/level/save/";
         if(param1 != null)
         {
            _loc5_ += param1;
         }
         §24§.sendRequest(_loc5_,JSON.stringify(param2),"POST",param3,param4,"application/json");
      }
      
      public static function §6]§(param1:String, param2:Number, param3:Number, param4:Function, param5:Function) : void
      {
         var _loc6_:String = §`!t§ + "/levels/" + param1;
         §24§.sendRequest(_loc6_,"","POST",param4,param5,"text/plain");
      }
   }
}
