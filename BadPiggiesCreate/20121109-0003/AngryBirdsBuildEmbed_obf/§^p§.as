package
{
   import § !A§.§"!8§;
   import § !r§.§3!X§;
   import §-!0§.§1^§;
   import §1!F§.§%!A§;
   import §1!F§.§0!u§;
   import §1!F§.§26§;
   import §1!F§.§3S§;
   import §1!F§.§6!$§;
   import §1!F§.§?! §;
   import flash.events.Event;
   
   public class §^p§ extends §#!?§
   {
      
      protected static var §^>§:Class;
      
      protected static var §%&§:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §^>§ = §9!X§;
            if(!_loc2_)
            {
               addr28:
               §%&§ = §%'§;
            }
            return;
         }
         §§goto(addr28);
      }
      
      private var § m§:String = "";
      
      public function §^p§(param1:§"!8§, param2:int, param3:int)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            super(param1,param2,param3);
         }
      }
      
      override protected function getAssetMap() : XML
      {
         return §3!X§.§3<§(§^>§);
      }
      
      override protected function getUIData() : XML
      {
         return §3!X§.§3<§(§%&§);
      }
      
      override protected function initStates() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            § Y§(new §3S§(false));
            if(_loc1_ || _loc2_)
            {
               § Y§(new §6!$§(false));
               if(!_loc1_)
               {
               }
               §§goto(addr86);
            }
            § Y§(new §?! §(false));
            if(_loc1_)
            {
               § Y§(new §%!A§(false));
               if(_loc1_ || _loc1_)
               {
               }
               §§goto(addr86);
            }
            § Y§(new §0!u§(false));
         }
         addr86:
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §7!p§ = true;
            if(!(_loc2_ && _loc2_))
            {
               §1^§.§ ]§ = stage.loaderInfo.parameters.levelDataUrl;
               if(!(_loc2_ && this))
               {
                  if(!§1^§.§ ]§)
                  {
                     if(!_loc2_)
                     {
                        addr67:
                        §1^§.§ ]§ = "http://head.angrybirds-build.appspot.com/level/public/9a71019f-d717-4910-bfb5-ca2bbd6c6c7e";
                        if(_loc2_)
                        {
                        }
                        §§goto(addr76);
                     }
                  }
                  §8!W§(§26§.STATE_NAME);
                  §§goto(addr76);
               }
               addr76:
               return;
            }
         }
         §§goto(addr67);
      }
      
      override public function onInstanceStarting(param1:String) : void
      {
      }
   }
}
