package §!!8§
{
   import § !r§.§`![§;
   import §&!0§.§]!;§;
   
   public class §"!i§
   {
       
      
      public function §"!i§()
      {
         super();
      }
      
      public static function get §,!K§() : String
      {
         return "";
      }
      
      public static function §@!Y§(param1:String, param2:Function) : void
      {
         §`![§.log("Rating level");
         var _loc3_:String = §,!K§ + "/level/rate/" + param1;
         §]!;§.sendRequest(_loc3_,"","POST",param2,§8!q§,"application/json");
      }
      
      public static function §8!q§() : void
      {
         §`![§.log("Rating FAIL");
      }
      
      public static function §8S§(param1:String, param2:int) : void
      {
         var _loc3_:String = §,!K§ + "/level/completion/" + param1 + "/" + param2;
         §]!;§.sendRequest(_loc3_,"","POST",§`r§,§-l§,"application/json");
      }
      
      public static function §`r§(param1:String) : void
      {
         §`![§.log("onLevelCompletion success! " + param1);
         var _loc2_:Object = JSON.parse(param1);
         §-!D§.§?5§("onLevelCompleted",_loc2_);
      }
      
      public static function §-l§() : void
      {
         §`![§.log("Rating FAIL");
      }
      
      public static function loadLevel(param1:String, param2:Function, param3:Function) : void
      {
         §]!;§.sendRequest(§,!K§ + "/level/load/" + param1,"","POST",param2,param3,"application/json");
      }
      
      public static function §;^§(param1:String, param2:Object, param3:Function, param4:Function) : void
      {
         var _loc5_:* = §,!K§ + "/level/save/";
         if(param1 != null)
         {
            _loc5_ += param1;
         }
         §]!;§.sendRequest(_loc5_,JSON.stringify(param2),"POST",param3,param4,"application/json");
      }
      
      public static function §]!p§(param1:String, param2:Number, param3:Number, param4:Function, param5:Function) : void
      {
         var _loc6_:String = §,!K§ + "/levels/" + param1;
         §]!;§.sendRequest(_loc6_,"","POST",param4,param5,"text/plain");
      }
   }
}
