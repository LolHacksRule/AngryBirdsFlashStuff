package §0o§
{
   import § !k§.§6!5§;
   import § !k§.StateCutScene;
   import §&!h§.§]V§;
   import §5i§.§4!]§;
   import §=R§.§7!"§;
   import com.angrybirds.friendsbar.§&E§;
   import flash.events.Event;
   
   public class §#!H§ extends StateCutScene
   {
       
      
      public function §#!H§(param1:Boolean = true, param2:String = "StateCutScene")
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
               (§4!]§.§7!G§ as §[!m§).§ P§(§&E§.§"!0§);
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
               §`-§.getItemByName("Button_Fullscreen").setVisibility(false);
               §§goto(addr70);
            }
         }
         addr70:
         while(true)
         {
            §`-§.getItemByName("Button_Fullscreen").setVisibility(false);
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
         var _loc2_:String = §-!-§();
         if(_loc3_)
         {
            §§push(§]V§);
            §§push("cutscene-");
            if(_loc3_ || param1)
            {
               §§push(§§pop() + _loc2_);
            }
            §§pop().§4!^§(§§pop());
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!"§) : void
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
                  mNextState = §6!5§.§3F§;
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
