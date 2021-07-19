package §,!"§
{
   import §"U§.§[Q§;
   import §6v§.§`M§;
   import §8!B§.§#! §;
   import §<G§.§@^§;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import §`K§.§ L§;
   
   public class §;!L§ extends §,!#§
   {
       
      
      public function §;!L§(param1:Boolean = false, param2:String = "CreditsState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
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
            §0q§ = new §`o§(this);
            while(true)
            {
               §0q§.init(§`Z§.§5c§.Views.View_Credits[0]);
               §4!I§ = new §@^§(§#! §.§`'§,"BACKGROUND_EAGLES");
               loop1:
               while(_loc1_ || _loc2_)
               {
                  while(true)
                  {
                     §0q§.getItemByName("MovieClip_Loading").setVisibility(true);
                     §&K§ = true;
                     while(_loc1_)
                     {
                        (§0q§.getItemByName("Container_Credits") as §[Q§).x = 125;
                        if(_loc1_)
                        {
                           return;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            super.activate();
         }
         §§push(§ L§.§;!+§);
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc3_)
         {
            §0q§.setText(_loc1_,"TextField_Version_Number_Server");
         }
         §§push(§!D§.§46§.§!5§());
         if(_loc3_ || _loc1_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §0q§.setText(_loc2_,"TextField_Version_Number");
            loop0:
            while(true)
            {
               §0q§.getItemByName("TextField_Version_Number").setVisibility(true);
               while(true)
               {
                  §0q§.getItemByName("TextField_Version_Number_Server").setVisibility(true);
                  loop2:
                  while(_loc3_)
                  {
                     §#! §.§`'§.camera.mCurrentCameraSliderLocation = 500;
                     while(true)
                     {
                        §!D§.§[5§();
                        if(!(_loc4_ && this))
                        {
                           if(_loc3_)
                           {
                              if(!_loc4_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           continue loop2;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr97);
      }
      
      override protected function readyToShowCredits() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §0q§.getItemByName("MovieClip_Loading").setVisibility(false);
         }
         while(true)
         {
            §§push(§#! §.§`'§);
            if(!(_loc2_ && _loc1_))
            {
               §§push(§§pop().slingshot);
               if(_loc1_)
               {
                  if(§§pop() != null)
                  {
                     if(!_loc2_)
                     {
                        §§push(§#! §.§`'§);
                        if(!_loc1_)
                        {
                           addr88:
                           §§push(§§pop().slingshot);
                           break;
                        }
                        addr54:
                        §§push(§§pop().slingshot);
                        if(!(_loc1_ || _loc1_))
                        {
                           break;
                        }
                        §§push(§§pop().sprite);
                        if(_loc1_)
                        {
                           if(§§pop().visible)
                           {
                              if(_loc1_)
                              {
                                 continue;
                              }
                           }
                           §§goto(addr19);
                        }
                        else
                        {
                           addr90:
                        }
                        §§pop().visible = false;
                     }
                  }
                  addr19:
                  return;
               }
               break;
            }
            §§goto(addr54);
         }
         §§goto(addr90);
         §§push(§§pop().sprite);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super.uiInteractionHandler(param1,param2,param3);
         }
         var _loc4_:* = param2;
         if(!(_loc5_ && param3))
         {
            if("CREDITS_CLOSE_BUTTON" === _loc4_)
            {
               addr67:
               §§push(0);
               if(!_loc6_)
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
                  mNextState = §@f§.§-A§;
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
