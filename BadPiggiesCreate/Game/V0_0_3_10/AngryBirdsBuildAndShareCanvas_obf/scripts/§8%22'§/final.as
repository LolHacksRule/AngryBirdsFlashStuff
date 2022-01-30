package §8"'§
{
   import § i§.§<<§;
   import §9!G§.§]!e§;
   
   public class final
   {
       
      
      public function final()
      {
         super();
      }
      
      public static function get §@L§() : String
      {
         return "";
      }
      
      public static function §0!"§(param1:String, param2:Function) : void
      {
         §]!e§.log("Rating level");
         var _loc3_:String = §@L§ + "/level/rate/" + param1;
         §<<§.sendRequest(_loc3_,"","POST",param2,§>!x§,"application/json");
      }
      
      public static function §>!x§() : void
      {
         §]!e§.log("Rating FAIL");
      }
      
      public static function §8-§(param1:String, param2:int) : void
      {
         var _loc3_:String = §@L§ + "/level/completion/" + param1 + "/" + param2;
         §<<§.sendRequest(_loc3_,"","POST",§?i§,§2!^§,"application/json");
      }
      
      public static function §?i§(param1:String) : void
      {
         §]!e§.log("onLevelCompletion success! " + param1);
         var _loc2_:Object = JSON.parse(param1);
         §?!`§.doJsCall("onLevelCompleted",_loc2_);
      }
      
      public static function §2!^§() : void
      {
         §]!e§.log("Rating FAIL");
      }
      
      public static function loadLevel(param1:String, param2:Function, param3:Function) : void
      {
         §<<§.sendRequest(§@L§ + "/level/load/" + param1,"","POST",param2,param3,"application/json");
      }
      
      public static function §"O§(param1:String, param2:Object, param3:Function, param4:Function) : void
      {
         var _loc5_:* = §@L§ + "/level/save/";
         if(param1 != null)
         {
            _loc5_ += param1;
         }
         §<<§.sendRequest(_loc5_,JSON.stringify(param2),"POST",param3,param4,"application/json");
      }
      
      public static function §[!W§(param1:String, param2:Number, param3:Number, param4:Function, param5:Function) : void
      {
         var _loc6_:String = §@L§ + "/levels/" + param1;
         §<<§.sendRequest(_loc6_,"","POST",param4,param5,"text/plain");
      }
   }
}
