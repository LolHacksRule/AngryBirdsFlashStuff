package §!!T§
{
   import §]!h§.§%E§;
   import flash.external.ExternalInterface;
   import flash.system.Security;
   
   public class §"!S§ extends §%E§
   {
      
      public static var §]K§:String;
       
      
      public function §"!S§()
      {
         super();
      }
      
      public static function init(param1:String) : void
      {
         §]K§ = param1;
         Security.allowDomain("*");
      }
      
      public static function doJsCall(param1:String, ... rest) : *
      {
         return §%E§.performCall(§]K§,[param1,rest]);
      }
      
      public static function registerMethod(param1:String, param2:Function) : void
      {
         ExternalInterface.addCallback(param1,param2);
      }
   }
}
