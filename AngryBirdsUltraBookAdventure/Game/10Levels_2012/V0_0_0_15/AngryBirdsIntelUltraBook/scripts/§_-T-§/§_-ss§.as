package §_-T-§
{
   import §_-MN§.§_-wU§;
   import §_-ad§.StateCutScene;
   import §_-ad§.§_-7A§;
   import §_-eS§.§_-OY§;
   import §_-qO§.§ in§;
   import com.angrybirds.friendsbar.§_-ri§;
   import flash.events.Event;
   
   public class §_-ss§ extends StateCutScene
   {
       
      
      public function §_-ss§(param1:Boolean = true, param2:String = "StateCutScene")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            super(param1,param2);
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.activate();
            do
            {
               (§ in§.§_-HY§ as §_-rG§).§_-KA§(§_-ri§.§_-02b§);
            }
            while(_loc2_);
            
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.init();
         }
         while(true)
         {
            §_-s0§.getItemByName("Button_Fullscreen").setVisibility(false);
            while(_loc2_)
            {
               §_-s0§.getItemByName("Button_Fullscreen").setVisibility(false);
               if(_loc2_)
               {
                  return;
               }
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
         var _loc2_:String = §_-al§();
         if(!_loc4_)
         {
            §§push(§_-OY§);
            §§push("cutscene-");
            if(!_loc4_)
            {
               §§push(§§pop() + _loc2_);
            }
            §§pop().§_-ta§(§§pop());
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            super.uiInteractionHandler(param1,param2,param3);
         }
         var _loc4_:* = param2;
         if(!_loc6_)
         {
            if("showCredits" === _loc4_)
            {
               addr66:
               §§push(0);
               if(_loc6_)
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
                  mNextState = §_-7A§.§_-pk§;
                  if(_loc5_)
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr66);
      }
   }
}
