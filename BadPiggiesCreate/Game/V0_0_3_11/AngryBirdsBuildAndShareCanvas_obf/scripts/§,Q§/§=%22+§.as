package §,Q§
{
   import §45§.§8H§;
   import §;X§.§ do§;
   
   public class §="+§
   {
       
      
      public function §="+§()
      {
         super();
      }
      
      public static function get §3§() : String
      {
         return "";
      }
      
      public static function §5§(param1:String, param2:Function) : void
      {
         § do§.log("Rating level");
         var _loc3_:String = §3§ + "/level/rate/" + param1;
         §8H§.sendRequest(_loc3_,"","POST",param2,§]-§,"application/json");
      }
      
      public static function §]-§() : void
      {
         § do§.log("Rating FAIL");
      }
      
      public static function § if§(param1:String, param2:int) : void
      {
         var _loc3_:String = §3§ + "/level/completion/" + param1 + "/" + param2;
         §8H§.sendRequest(_loc3_,"","POST",§>>§,§%!7§,"application/json");
      }
      
      public static function §>>§(param1:String) : void
      {
         § do§.log("onLevelCompletion success! " + param1);
         var _loc2_:Object = JSON.parse(param1);
         §="2§.doJsCall("onLevelCompleted",_loc2_);
      }
      
      public static function §%!7§() : void
      {
         § do§.log("Rating FAIL");
      }
      
      public static function loadLevel(param1:String, param2:Function, param3:Function) : void
      {
         §8H§.sendRequest(§3§ + "/level/load/" + param1,"","POST",param2,param3,"application/json");
      }
      
      public static function §>!9§(param1:String, param2:Object, param3:Function, param4:Function) : void
      {
         var _loc5_:* = §3§ + "/level/save/";
         if(param1 != null)
         {
            _loc5_ += param1;
         }
         §8H§.sendRequest(_loc5_,JSON.stringify(param2),"POST",param3,param4,"application/json");
      }
      
      public static function §4J§(param1:String, param2:Number, param3:Number, param4:Function, param5:Function) : void
      {
         var _loc6_:String = §3§ + "/levels/" + param1;
         §8H§.sendRequest(_loc6_,"","POST",param4,param5,"text/plain");
      }
   }
}
