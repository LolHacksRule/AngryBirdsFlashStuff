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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function init(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §8!c§ = param1;
            if(!(_loc3_ && _loc2_))
            {
               Security.allowDomain("*");
            }
         }
      }
      
      public static function §?5§(param1:String, ... rest) : *
      {
         return §,m§.performCall(§8!c§,[param1,rest]);
      }
      
      public static function §<!C§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            ExternalInterface.addCallback(param1,param2);
         }
      }
   }
}
