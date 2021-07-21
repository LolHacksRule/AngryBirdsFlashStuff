package §%_§
{
   import §9";§.§#!c§;
   import flash.external.ExternalInterface;
   import flash.system.Security;
   
   public class §4m§ extends §#!c§
   {
      
      public static var §#"#§:String;
       
      
      public function §4m§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
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
            §#"#§ = param1;
            do
            {
               Security.allowDomain("*");
            }
            while(_loc3_ && _loc2_);
            
         }
      }
      
      public static function doJsCall(param1:String, ... rest) : *
      {
         return §#!c§.performCall(§#"#§,[param1,rest]);
      }
      
      public static function registerMethod(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            ExternalInterface.addCallback(param1,param2);
         }
      }
   }
}
