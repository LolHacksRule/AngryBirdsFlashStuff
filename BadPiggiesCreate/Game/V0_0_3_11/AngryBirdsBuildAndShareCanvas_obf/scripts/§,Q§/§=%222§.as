package §,Q§
{
   import §6!N§.§=x§;
   import flash.external.ExternalInterface;
   import flash.system.Security;
   
   public class §="2§ extends §=x§
   {
      
      public static var § !c§:String;
       
      
      public function §="2§()
      {
         super();
      }
      
      public static function init(param1:String) : void
      {
         § !c§ = param1;
         Security.allowDomain("*");
      }
      
      public static function doJsCall(param1:String, ... rest) : *
      {
         return §=x§.performCall(§ !c§,[param1,rest]);
      }
      
      public static function registerMethod(param1:String, param2:Function) : void
      {
         ExternalInterface.addCallback(param1,param2);
      }
   }
}
