package §05§
{
   import §6]§.§,"0§;
   import §^!m§.§[v§;
   
   public class §7!W§
   {
       
      
      public function §7!W§()
      {
         super();
      }
      
      public static function get §#!m§() : String
      {
         return "";
      }
      
      public static function §'6§(param1:String, param2:Function) : void
      {
         §,"0§.log("Rating level");
         var _loc3_:String = §#!m§ + "/level/rate/" + param1;
         §[v§.sendRequest(_loc3_,"","POST",param2,§?"4§,"application/json");
      }
      
      public static function §?"4§() : void
      {
         §,"0§.log("Rating FAIL");
      }
      
      public static function §!!5§(param1:String, param2:int) : void
      {
         var _loc3_:String = §#!m§ + "/level/completion/" + param1 + "/" + param2;
         §[v§.sendRequest(_loc3_,"","POST",§2" §,§,!+§,"application/json");
      }
      
      public static function §2" §(param1:String) : void
      {
         §,"0§.log("onLevelCompletion success! " + param1);
         var _loc2_:Object = JSON.parse(param1);
         §?s§.doJsCall("onLevelCompleted",_loc2_);
      }
      
      public static function §,!+§() : void
      {
         §,"0§.log("Rating FAIL");
      }
      
      public static function loadLevel(param1:String, param2:Function, param3:Function) : void
      {
         §[v§.sendRequest(§#!m§ + "/level/load/" + param1,"","POST",param2,param3,"application/json");
      }
      
      public static function §4" §(param1:String, param2:Object, param3:Function, param4:Function) : void
      {
         var _loc5_:* = §#!m§ + "/level/save/";
         if(param1 != null)
         {
            _loc5_ += param1;
         }
         §[v§.sendRequest(_loc5_,JSON.stringify(param2),"POST",param3,param4,"application/json");
      }
      
      public static function §0l§(param1:String, param2:Number, param3:Number, param4:Function, param5:Function) : void
      {
         var _loc6_:String = §#!m§ + "/levels/" + param1;
         §[v§.sendRequest(_loc6_,"","POST",param4,param5,"text/plain");
      }
   }
}
