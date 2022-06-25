package §40§
{
   import §0X§.§'N§;
   import §9!5§.§!1§;
   import §9!5§.StateCutScene;
   import §9Y§.§6!8§;
   import com.angrybirds.friendsbar.§`Y§;
   import flash.events.Event;
   import §true§.§ _§;
   
   public class §4V§ extends StateCutScene
   {
       
      
      public function §4V§(param1:Boolean = true, param2:String = "StateCutScene")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super(param1,param2);
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.activate();
         }
         do
         {
            (§ _§.§1s§ as §@!9§).§>=§(§`Y§.§9!O§);
         }
         while(_loc2_);
         
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.init();
            do
            {
               §5!P§.getItemByName("Button_Fullscreen").setVisibility(false);
               do
               {
                  §5!P§.getItemByName("Button_Fullscreen").setVisibility(false);
               }
               while(_loc1_);
               
            }
            while(_loc1_);
            
         }
      }
      
      override protected function onCutSceneNotAvailable(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            super.onCutSceneNotAvailable(param1);
         }
         var _loc2_:String = §5j§();
         if(!_loc3_)
         {
            §§push(§'N§);
            §§push("cutscene-");
            if(!_loc3_)
            {
               §§push(§§pop() + _loc2_);
            }
            §§pop().§`!]§(§§pop());
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super.uiInteractionHandler(param1,param2,param3);
         }
         var _loc4_:* = param2;
         if(!(_loc5_ && param2))
         {
            if("showCredits" === _loc4_)
            {
               addr67:
               §§push(0);
               if(_loc5_ && param1)
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
                  mNextState = §!1§.§?h§;
                  if(_loc6_)
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr67);
      }
   }
}
