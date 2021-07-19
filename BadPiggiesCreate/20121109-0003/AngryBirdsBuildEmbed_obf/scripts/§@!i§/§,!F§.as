package §@!i§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §#!4§.§+!S§;
   import §1!F§.§"![§;
   
   public class §,!F§ extends §"![§
   {
      
      public static const STATE_NAME:String = "LevelEndStatePreview";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            STATE_NAME = "LevelEndStatePreview";
         }
      }
      
      public function §,!F§(param1:Boolean = false, param2:String = "LevelEndStatePreview")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
            if(_loc1_ || this)
            {
               §+!$§ = new §2U§(this);
               if(_loc1_ || _loc2_)
               {
                  addr49:
                  §+!$§.init(§=!Z§.§;K§.Views.View_LevelEndPreview[0]);
               }
               return;
            }
         }
         §§goto(addr49);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc5_)
         {
            if("REPLAY" === _loc4_)
            {
               addr65:
               §§push(0);
               if(_loc6_ && param2)
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
                  if(!_loc6_)
                  {
                     mNextState = §@!n§.STATE_NAME;
                     if(_loc6_ && this)
                     {
                     }
                     break;
                  }
            }
            return;
         }
         §§goto(addr65);
      }
   }
}
