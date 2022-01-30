package §8"'§
{
   import §2!9§.§#"3§;
   import flash.external.ExternalInterface;
   import flash.system.Security;
   
   public class §?!`§ extends §#"3§
   {
      
      public static var §[!+§:String;
       
      
      public function §?!`§()
      {
         super();
      }
      
      public static function init(param1:String) : void
      {
         §[!+§ = param1;
         Security.allowDomain("*");
      }
      
      public static function doJsCall(param1:String, ... rest) : *
      {
         return §#"3§.performCall(§[!+§,[param1,rest]);
      }
      
      public static function registerMethod(param1:String, param2:Function) : void
      {
         ExternalInterface.addCallback(param1,param2);
      }
   }
}
