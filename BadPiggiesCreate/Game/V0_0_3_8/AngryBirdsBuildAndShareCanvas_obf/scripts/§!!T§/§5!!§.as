package §!!T§
{
   import §%!k§.§^!h§;
   import §4u§.§<!L§;
   
   public class §5!!§
   {
       
      
      public function §5!!§()
      {
         super();
      }
      
      public static function get §%?§() : String
      {
         return "";
      }
      
      public static function §;!2§(param1:String, param2:Function) : void
      {
         §<!L§.log("Rating level");
         var _loc3_:String = §%?§ + "/level/rate/" + param1;
         §^!h§.sendRequest(_loc3_,"","POST",param2,§;R§,"application/json");
      }
      
      public static function §;R§() : void
      {
         §<!L§.log("Rating FAIL");
      }
      
      public static function §-"1§(param1:String, param2:int) : void
      {
         var _loc3_:String = §%?§ + "/level/completion/" + param1 + "/" + param2;
         §^!h§.sendRequest(_loc3_,"","POST",§1!6§,§^!m§,"application/json");
      }
      
      public static function §1!6§(param1:String) : void
      {
         §<!L§.log("onLevelCompletion success! " + param1);
         var _loc2_:Object = JSON.parse(param1);
         §"!S§.doJsCall("onLevelCompleted",_loc2_);
      }
      
      public static function §^!m§() : void
      {
         §<!L§.log("Rating FAIL");
      }
      
      public static function loadLevel(param1:String, param2:Function, param3:Function) : void
      {
         §^!h§.sendRequest(§%?§ + "/level/load/" + param1,"","POST",param2,param3,"application/json");
      }
      
      public static function §"!L§(param1:String, param2:Object, param3:Function, param4:Function) : void
      {
         var _loc5_:* = §%?§ + "/level/save/";
         if(param1 != null)
         {
            _loc5_ += param1;
         }
         §^!h§.sendRequest(_loc5_,JSON.stringify(param2),"POST",param3,param4,"application/json");
      }
      
      public static function §+!7§(param1:String, param2:Number, param3:Number, param4:Function, param5:Function) : void
      {
         var _loc6_:String = §%?§ + "/levels/" + param1;
         §^!h§.sendRequest(_loc6_,"","POST",param4,param5,"text/plain");
      }
   }
}
