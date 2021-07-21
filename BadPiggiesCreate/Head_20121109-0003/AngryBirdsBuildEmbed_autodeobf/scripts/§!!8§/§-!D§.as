package §!!8§
{
   import §=V§.§,m§;
   import flash.external.ExternalInterface;
   import flash.system.Security;
   
   public class §-!D§ extends §,m§
   {
      
      public static var §8!c§:String;
       
      
      public function §-!D§()
      {
         super();
      }
      
      public static function init(param1:String) : void
      {
         §8!c§ = param1;
         Security.allowDomain("*");
      }
      
      public static function §?5§(param1:String, ... rest) : *
      {
         return §,m§.performCall(§8!c§,[param1,rest]);
      }
      
      public static function §<!C§(param1:String, param2:Function) : void
      {
         ExternalInterface.addCallback(param1,param2);
      }
   }
}
