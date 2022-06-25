package §`!#§
{
   import §2!U§.§<&§;
   import §2!U§.StateCutScene;
   import §;!y§.§,!s§;
   import §<-§.§!!K§;
   import §@!&§.§'!o§;
   import com.angrybirds.friendsbar.§-V§;
   import flash.events.Event;
   
   public class §1!D§ extends StateCutScene
   {
       
      
      public function §1!D§(param1:Boolean = true, param2:String = "StateCutScene")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.activate();
            do
            {
               (§,!s§.§]!J§ as §<t§).§'!0§(§-V§.§6!;§);
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.init();
         }
         do
         {
            §'!Q§.getItemByName("Button_Fullscreen").setVisibility(false);
            do
            {
               §'!Q§.getItemByName("Button_Fullscreen").setVisibility(false);
            }
            while(!_loc1_);
            
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      override protected function onCutSceneNotAvailable(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.onCutSceneNotAvailable(param1);
         }
         var _loc2_:String = §8!Y§();
         if(_loc3_)
         {
            §§push(§!!K§);
            §§push("cutscene-");
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() + _loc2_);
            }
            §§pop().§<J§(§§pop());
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            super.uiInteractionHandler(param1,param2,param3);
         }
         var _loc4_:* = param2;
         if(!_loc5_)
         {
            if("showCredits" === _loc4_)
            {
               addr72:
               §§push(0);
               if(_loc6_ || param1)
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
                  mNextState = §<&§.§'!q§;
                  if(_loc6_ || param1)
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr72);
      }
   }
}
