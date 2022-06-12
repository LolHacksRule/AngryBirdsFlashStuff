package §-!q§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §'!s§.§%?§;
   import §2!i§.§'M§;
   import §[!K§.§-!@§;
   
   public class § a§ extends §-!@§
   {
       
      
      public function § a§(param1:Boolean = false, param2:String = "stateTournamentLevelEnd")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
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
            while(true)
            {
               §6w§ = new §7!A§(this);
               while(!(_loc2_ && this))
               {
                  §6w§.getItemByName("Button_Fullscreen").setVisibility(false);
                  loop4:
                  for(; _loc1_; §6w§.getItemByName("Button_Watch_Replay").setVisibility(false),if(!_loc2_)
                  {
                     return;
                  })
                  {
                     if(!_loc2_)
                     {
                        if(!_loc2_)
                        {
                           continue;
                        }
                        addr92:
                        while(true)
                        {
                           §6w§.init(§ "A§.§4[§.Views.View_TournamentBrandedLevelEnd[0]);
                        }
                     }
                     while(true)
                     {
                        §2r§();
                        break loop4;
                     }
                  }
               }
            }
         }
         §§goto(addr92);
      }
      
      override protected function setScoreData() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.setScoreData();
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.activate();
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
         if(_loc5_ || param3)
         {
            if("HALLOWEENSHOPPRESSED" === _loc4_)
            {
               addr70:
               §§push(0);
               if(_loc6_ && param3)
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
                  §%?§.§ ]§("levelend-win");
                  if(!(_loc6_ && param3))
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr70);
      }
   }
}
