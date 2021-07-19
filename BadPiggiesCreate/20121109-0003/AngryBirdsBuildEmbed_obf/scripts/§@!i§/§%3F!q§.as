package §@!i§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §#!4§.§+!S§;
   import §1!F§.§2!i§;
   
   public class §?!q§ extends §2!i§
   {
      
      public static const STATE_NAME:String = "LevelEndFailStatePreview";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            STATE_NAME = "LevelEndFailStatePreview";
         }
      }
      
      public function §?!q§(param1:Boolean = false, param2:String = "LevelEndFailStatePreview")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.init();
            if(_loc2_)
            {
               §§goto(addr38);
            }
            §§goto(addr50);
         }
         addr38:
         §+!$§ = new §2U§(this);
         if(!(_loc1_ && this))
         {
            addr50:
            §+!$§.init(§=!Z§.§;K§.Views.View_LevelEndFailPreview[0]);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!_loc5_)
         {
            if("REPLAY" === _loc4_)
            {
               addr71:
               §§push(0);
               if(_loc5_)
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
                  §@!n§.§!=§(StateLevelPreview.STATE_NAME);
                  if(!(_loc5_ && param1))
                  {
                     mNextState = §@!n§.STATE_NAME;
                     if(_loc5_ && param2)
                     {
                     }
                     break;
                  }
            }
            return;
         }
         §§goto(addr71);
      }
   }
}
