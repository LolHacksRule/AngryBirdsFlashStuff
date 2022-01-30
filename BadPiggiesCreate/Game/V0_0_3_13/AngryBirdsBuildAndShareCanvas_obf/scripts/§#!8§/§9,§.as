package §#!8§
{
   import §&W§.§7L§;
   import §5!8§.§1y§;
   
   public class §9,§
   {
       
      
      public function §9,§()
      {
         super();
      }
      
      public static function get §0!N§() : String
      {
         return "";
      }
      
      public static function §>" §(param1:String, param2:Function) : void
      {
         §7L§.log("Rating level");
         var _loc3_:String = §0!N§ + "/level/rate/" + param1;
         §1y§.sendRequest(_loc3_,"","POST",param2,§"N§,"application/json");
      }
      
      public static function §"N§() : void
      {
         §7L§.log("Rating FAIL");
      }
      
      public static function §!!>§(param1:String, param2:int) : void
      {
         var _loc3_:String = §0!N§ + "/level/completion/" + param1 + "/" + param2;
         §1y§.sendRequest(_loc3_,"","POST",§6!"§,§3!M§,"application/json");
      }
      
      public static function §6!"§(param1:String) : void
      {
         §7L§.log("onLevelCompletion success! " + param1);
         var _loc2_:Object = JSON.parse(param1);
         §&!'§.doJsCall("onLevelCompleted",_loc2_);
      }
      
      public static function §3!M§() : void
      {
         §7L§.log("Rating FAIL");
      }
      
      public static function loadLevel(param1:String, param2:Function, param3:Function) : void
      {
         §1y§.sendRequest(§0!N§ + "/level/load/" + param1,"","POST",param2,param3,"application/json");
      }
      
      public static function §8!k§(param1:String, param2:Object, param3:Function, param4:Function) : void
      {
         var _loc5_:* = §0!N§ + "/level/save/";
         if(param1 != null)
         {
            _loc5_ += param1;
         }
         §1y§.sendRequest(_loc5_,JSON.stringify(param2),"POST",param3,param4,"application/json");
      }
      
      public static function §;!T§(param1:String, param2:Number, param3:Number, param4:Function, param5:Function) : void
      {
         var _loc6_:String = §0!N§ + "/levels/" + param1;
         §1y§.sendRequest(_loc6_,"","POST",param4,param5,"text/plain");
      }
   }
}
