package §#!8§
{
   import §3A§.§>1§;
   import flash.external.ExternalInterface;
   import flash.system.Security;
   
   public class §&!'§ extends §>1§
   {
      
      public static var §#I§:String;
       
      
      public function §&!'§()
      {
         super();
      }
      
      public static function init(param1:String) : void
      {
         §#I§ = param1;
         Security.allowDomain("*");
      }
      
      public static function doJsCall(param1:String, ... rest) : *
      {
         return §>1§.performCall(§#I§,[param1,rest]);
      }
      
      public static function registerMethod(param1:String, param2:Function) : void
      {
         ExternalInterface.addCallback(param1,param2);
      }
   }
}
