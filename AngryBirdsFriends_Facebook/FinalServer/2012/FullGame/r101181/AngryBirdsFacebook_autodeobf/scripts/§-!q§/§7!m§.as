package §-!q§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §4!e§.§^!D§;
   import §[!K§.§4#§;
   
   public class §7!m§ extends §4#§
   {
       
      
      protected var §;]§:Boolean = false;
      
      public function §7!m§(param1:Boolean = false, param2:String = "stateTournamentLevelEndFail")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.init();
            loop0:
            while(true)
            {
               §6w§ = new §7!A§(this);
               addr89:
               if(_loc1_ && _loc2_)
               {
                  continue;
               }
               §]4§.push((§6w§.getItemByName("Button_Replay") as §^!D§).x);
               loop5:
               while(true)
               {
                  §]4§.push((§6w§.getItemByName("Button_MightyEagle") as §^!D§).x);
                  loop6:
                  while(true)
                  {
                     if(!_loc1_)
                     {
                        if(_loc2_)
                        {
                           addr50:
                           if(!(_loc1_ && _loc1_))
                           {
                              continue;
                           }
                           addr130:
                           while(true)
                           {
                              §6w§.init(§ "A§.§4[§.Views.View_TournamentBrandedLevelEndFail[0]);
                              addr123:
                              while(true)
                              {
                                 §6w§.getItemByName("Button_Fullscreen").setVisibility(false);
                                 addr113:
                                 while(true)
                                 {
                                    §]4§.push((§6w§.getItemByName("Button_Menu") as §^!D§).x);
                                    break loop6;
                                 }
                              }
                              §§goto(addr50);
                           }
                        }
                        break;
                     }
                     continue loop5;
                  }
                  while(true)
                  {
                     if(_loc2_)
                     {
                        §§goto(addr89);
                     }
                     else
                     {
                        §§goto(addr123);
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr130);
      }
   }
}
