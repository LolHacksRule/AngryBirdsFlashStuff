package §'!s§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §+N§.§@!]§;
   import §]!A§.;
   import flash.events.MouseEvent;
   
   public class §-d§ extends Popup
   {
      
      public static const §+""§:String = "generalError";
      
      public static const §]x§:String = "thirdPartyCookiesDisabled";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §-d§))
         {
            §+""§ = "generalError";
            do
            {
               §]x§ = "thirdPartyCookiesDisabled";
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      public function §-d§(param1:§7!A§, param2:StatePopupManager, param3:String = "generalError")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            super(§ "A§.§4[§.Views.PopupView_Error[0],param1);
            loop0:
            while(true)
            {
               §]"5§ = §97§;
               while(true)
               {
                  mClip.gotoAndStop([§+""§,§]x§].indexOf(param3) + 1);
                  addr87:
                  while(_loc4_ || this)
                  {
                     continue loop0;
                  }
               }
            }
         }
      }
      
      private function §`!a§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            AngryBirdsFP11.§@<§.§#m§();
            do
            {
               §@!]§.§9"'§("window.location.reload");
            }
            while(!_loc2_);
            
         }
      }
   }
}
