package §'!J§
{
   import §;H§.§9!3§;
   import §;H§.StateCutScene;
   import §>! §.§^!c§;
   import §>7§.§,!c§;
   import §]+§.§@!J§;
   import com.angrybirds.friendsbar.§1!R§;
   import flash.events.Event;
   
   public class §]d§ extends StateCutScene
   {
       
      
      public function §]d§(param1:Boolean = true, param2:String = "StateCutScene")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.activate();
            do
            {
               (§^!c§.§2!w§ as §[!P§).§;e§(§1!R§.§5!8§);
            }
            while(_loc1_);
            
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
            while(true)
            {
               §&!m§.getItemByName("Button_Fullscreen").setVisibility(false);
               §§goto(addr70);
            }
         }
         addr70:
         while(true)
         {
            §&!m§.getItemByName("Button_Fullscreen").setVisibility(false);
            if(!(_loc2_ && _loc2_))
            {
               if(_loc1_ || _loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override protected function onCutSceneNotAvailable(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.onCutSceneNotAvailable(param1);
         }
         var _loc2_:String = §@!P§();
         if(_loc3_)
         {
            §§push(§@!J§);
            §§push("cutscene-");
            if(_loc3_ || param1)
            {
               §§push(§§pop() + _loc2_);
            }
            §§pop().§4t§(§§pop());
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            super.uiInteractionHandler(param1,param2,param3);
         }
         var _loc4_:* = param2;
         if(!(_loc5_ && param2))
         {
            if("showCredits" === _loc4_)
            {
               addr77:
               §§push(0);
               if(_loc5_ && this)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  mNextState = §9!3§.§"!s§;
                  if(!(_loc5_ && param1))
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr77);
      }
   }
}
