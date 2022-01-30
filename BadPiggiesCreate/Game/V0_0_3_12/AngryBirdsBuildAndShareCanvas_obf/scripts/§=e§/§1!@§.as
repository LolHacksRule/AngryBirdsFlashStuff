package §=e§
{
   import §6<§.§&`§;
   import flash.external.ExternalInterface;
   import flash.system.Security;
   
   public class §1!@§ extends §&`§
   {
      
      public static var § !@§:String;
       
      
      public function §1!@§()
      {
         super();
      }
      
      public static function init(param1:String) : void
      {
         § !@§ = param1;
         Security.allowDomain("*");
      }
      
      public static function doJsCall(param1:String, ... rest) : *
      {
         return §&`§.performCall(§ !@§,[param1,rest]);
      }
      
      public static function registerMethod(param1:String, param2:Function) : void
      {
         ExternalInterface.addCallback(param1,param2);
      }
   }
}
