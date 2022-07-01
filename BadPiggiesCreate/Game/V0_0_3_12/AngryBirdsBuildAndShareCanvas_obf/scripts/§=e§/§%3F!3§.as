package §=e§
{
   import §"p§.§@8§;
   import §[8§.§0!<§;
   
   public class §?!3§
   {
       
      
      public function §?!3§()
      {
         super();
      }
      
      public static function get §&"$§() : String
      {
         return "";
      }
      
      public static function §^q§(param1:String, param2:Function) : void
      {
         §@8§.log("Rating level");
         var _loc3_:String = §&"$§ + "/level/rate/" + param1;
         §0!<§.sendRequest(_loc3_,"","POST",param2,§%!>§,"application/json");
      }
      
      public static function §%!>§() : void
      {
         §@8§.log("Rating FAIL");
      }
      
      public static function §^!p§(param1:String, param2:int) : void
      {
         var _loc3_:String = §&"$§ + "/level/completion/" + param1 + "/" + param2;
         §0!<§.sendRequest(_loc3_,"","POST",§%p§,§"!#§,"application/json");
      }
      
      public static function §%p§(param1:String) : void
      {
         §@8§.log("onLevelCompletion success! " + param1);
         var _loc2_:Object = JSON.parse(param1);
         §1!@§.doJsCall("onLevelCompleted",_loc2_);
      }
      
      public static function §"!#§() : void
      {
         §@8§.log("Rating FAIL");
      }
      
      public static function loadLevel(param1:String, param2:Function, param3:Function) : void
      {
         §0!<§.sendRequest(§&"$§ + "/level/load/" + param1,"","POST",param2,param3,"application/json");
      }
      
      public static function §6!e§(param1:String, param2:Object, param3:Function, param4:Function) : void
      {
         var _loc5_:* = §&"$§ + "/level/save/";
         if(param1 != null)
         {
            _loc5_ += param1;
         }
         §0!<§.sendRequest(_loc5_,JSON.stringify(param2),"POST",param3,param4,"application/json");
      }
      
      public static function §8!x§(param1:String, param2:Number, param3:Number, param4:Function, param5:Function) : void
      {
         var _loc6_:String = §&"$§ + "/levels/" + param1;
         §0!<§.sendRequest(_loc6_,"","POST",param4,param5,"text/plain");
      }
   }
}
