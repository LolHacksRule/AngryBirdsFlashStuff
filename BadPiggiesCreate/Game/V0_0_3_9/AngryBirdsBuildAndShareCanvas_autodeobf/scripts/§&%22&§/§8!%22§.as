package §&"&§
{
   import §%4§.§]8§;
   import flash.external.ExternalInterface;
   import flash.system.Security;
   
   public class §8!"§ extends §]8§
   {
      
      public static var §6z§:String;
       
      
      public function §8!"§()
      {
         super();
      }
      
      public static function init(param1:String) : void
      {
         §6z§ = param1;
         Security.allowDomain("*");
      }
      
      public static function doJsCall(param1:String, ... rest) : *
      {
         return §]8§.performCall(§6z§,[param1,rest]);
      }
      
      public static function registerMethod(param1:String, param2:Function) : void
      {
         ExternalInterface.addCallback(param1,param2);
      }
   }
}
