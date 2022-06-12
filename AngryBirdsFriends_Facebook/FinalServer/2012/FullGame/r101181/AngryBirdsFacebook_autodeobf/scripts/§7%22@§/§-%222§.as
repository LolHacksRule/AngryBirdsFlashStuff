package §7"@§
{
   import §2!i§.§'M§;
   import §<a§.§+!B§;
   import §]!A§.;
   import com.AngryBirds.friendsbar.§ K§;
   import flash.events.Event;
   
   public class §-"2§ extends StateCutScene
   {
       
      
      public function §-"2§(param1:Boolean = true, param2:String = "StateCutScene")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            super(param1,param2);
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.activate();
            do
            {
               (§#6§.§ q§ as §3T§).§`!P§(§ K§.§2_§);
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.init();
         }
         do
         {
            §6w§.getItemByName("Button_Fullscreen").setVisibility(false);
         }
         while(_loc1_ && this);
         
      }
      
      override protected function onCutSceneNotAvailable(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.onCutSceneNotAvailable(param1);
         }
         var _loc2_:String = §`"5§();
         if(_loc4_)
         {
            §§push(§+!B§);
            §§push("cutscene-");
            if(!_loc3_)
            {
               §§push(§§pop() + _loc2_);
            }
            §§pop().§ P§(§§pop());
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super.uiInteractionHandler(param1,param2,param3);
         }
         var _loc4_:* = param2;
         if(_loc5_)
         {
            if("showCredits" === _loc4_)
            {
               addr61:
               §§push(0);
               if(!_loc5_)
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
                  mNextState = §9<§.STATE_NAME;
                  if(!_loc6_)
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr61);
      }
   }
}
