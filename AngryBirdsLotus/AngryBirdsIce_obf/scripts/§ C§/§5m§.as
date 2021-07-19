package § C§
{
   import §!Y§.§[o§;
   import §2]§.§set §;
   import §3"§.§0$§;
   import §3"§.§8+§;
   import §3O§.§@6§;
   import §`W§.§-[§;
   
   public class §5m§ extends §]O§
   {
       
      
      private var §1T§:int = 0;
      
      public function §5m§(param1:Boolean = false, param2:int = 0, param3:String = "LevelEndStateRio")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param1,param3);
            do
            {
               this.§1T§ = param2;
            }
            while(_loc4_ && param2);
            
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.init();
         }
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         if(_loc4_)
         {
            this.§1T§ = AngryBirdsFP11.§64§.§5!4§(§0$§.§[C§);
         }
         while(true)
         {
            while(true)
            {
               super.activate();
               do
               {
                  §[o§.§='§.background.§1!>§();
               }
               while(_loc3_);
               
               if(_loc3_)
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               var _loc1_:§8+§ = §0$§.§2Q§(§0$§.§[C§);
               if(_loc1_)
               {
                  loop3:
                  while(true)
                  {
                     §§push(_loc1_.§%!%§());
                     loop4:
                     while(true)
                     {
                        §§push(int(§§pop()));
                        loop5:
                        while(true)
                        {
                           _loc2_ = §§pop();
                           loop6:
                           while(true)
                           {
                              if(§[o§.§='§.slingshot)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    loop8:
                                    while(_loc4_ || _loc3_)
                                    {
                                       §§push(§[o§.§='§.slingshot.§1!5§());
                                       while(true)
                                       {
                                          §§push(int(§§pop() + §§pop()));
                                          addr200:
                                          while(_loc4_)
                                          {
                                             _loc2_ = §§pop();
                                          }
                                          continue loop5;
                                          addr138:
                                          §§push(0);
                                          if(_loc3_ && _loc1_)
                                          {
                                             continue;
                                          }
                                          if(§§pop() > §§pop())
                                          {
                                             loop17:
                                             while(_loc4_ || _loc2_)
                                             {
                                                §,R§.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(true);
                                                while(!_loc3_)
                                                {
                                                   §,R§.getItemByName("TextField_ScoreToBeat").setVisibility(true);
                                                   while(true)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         addr123:
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            §,R§.setText(this.§1T§.toString(),"TextField_ScoreToBeat");
                                                            addr52:
                                                            return;
                                                            addr114:
                                                         }
                                                         break;
                                                      }
                                                      continue loop17;
                                                      §§goto(addr161);
                                                   }
                                                   addr161:
                                                   while(true)
                                                   {
                                                      addr131:
                                                      while(true)
                                                      {
                                                         §§push(this.§1T§);
                                                         if(!_loc3_)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            §§goto(addr138);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr200);
                                                         }
                                                      }
                                                   }
                                                }
                                                continue loop7;
                                             }
                                             continue loop6;
                                          }
                                          §,R§.getItemByName("MovieClip_ScoreToBeatTitle").setVisibility(false);
                                          for(; _loc4_; §,R§.getItemByName("TextField_ScoreToBeat").setVisibility(false),if(!(_loc4_ || _loc1_))
                                          {
                                             continue;
                                          },§§goto(addr52))
                                          {
                                             if(_loc4_ || _loc2_)
                                             {
                                                if(!(_loc3_ && this))
                                                {
                                                   if(_loc4_)
                                                   {
                                                      continue;
                                                   }
                                                   continue loop3;
                                                }
                                                §§goto(addr159);
                                             }
                                             §§goto(addr121);
                                          }
                                          §§goto(addr114);
                                       }
                                    }
                                    continue loop4;
                                 }
                              }
                              while(true)
                              {
                                 this.§1T§ = Math.min(this.§1T§,_loc2_);
                                 §§goto(addr170);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr131);
            }
         }
      }
      
      override protected function initButtonDefaultPositions() : void
      {
      }
      
      override protected function getViewXML() : XML
      {
         return §set §.§&!1§.Views.View_LevelEndEmbedRio[0];
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.deActivate();
         }
      }
      
      override protected function showButtonsCutScene() : void
      {
      }
      
      override protected function showButtonsNormal() : void
      {
      }
      
      override protected function setMightyEagleFeather() : void
      {
      }
      
      override protected function setScoreStars(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            if(§&i§)
            {
               if(_loc4_ || param1)
               {
                  AngryBirdsFP11.§64§.§,! §(§0$§.§[C§,param1);
               }
            }
         }
      }
      
      override protected function onBadgeLanded() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(§&i§)
            {
               if(!(_loc1_ && this))
               {
                  addr69:
                  §@6§.playSound("Hiscore_Badge",§,!+§);
               }
               do
               {
                  §-0§();
               }
               while(_loc1_ && this);
               
            }
            return;
         }
         §§goto(addr69);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-[§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param2);
         loop0:
         while(true)
         {
            var _loc4_:* = §§pop();
            if(!(_loc6_ && param1))
            {
               §§push("NEXT_LEVEL");
               if(_loc5_)
               {
                  §§push(_loc4_);
                  if(!_loc6_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc6_ && param1))
                        {
                           addr133:
                           §§push(0);
                           if(!_loc5_)
                           {
                           }
                        }
                        else
                        {
                           addr163:
                           §§push(2);
                           if(!_loc6_)
                           {
                              addr166:
                           }
                        }
                        addr171:
                        switch(§§pop())
                        {
                           case 0:
                              §§push(§0$§.§?W§());
                              if(!_loc6_)
                              {
                                 if(§§pop() == null)
                                 {
                                    addr102:
                                    §0$§.§;4§(§0$§.§5D§("1-1"));
                                 }
                                 else
                                 {
                                    §7!6§.§2v§();
                                 }
                                 mNextState = §7!6§.§?B§;
                                 break loop0;
                              }
                              continue;
                              addr87:
                              break;
                           case 1:
                              §7!6§.§<!G§();
                              if(!(_loc6_ && param3))
                              {
                                 mNextState = §7!6§.§?B§;
                                 break;
                              }
                              break loop0;
                           case 2:
                              mNextState = §>!9§.§?B§;
                              break loop0;
                              addr52:
                           default:
                              super.uiInteractionHandler(param1,param2,param3);
                              if(!_loc6_)
                              {
                                 if(!_loc6_)
                                 {
                                    if(!(_loc6_ && this))
                                    {
                                       if(_loc5_ || param1)
                                       {
                                          if(false)
                                          {
                                             break;
                                          }
                                          break loop0;
                                       }
                                       §§goto(addr102);
                                    }
                                    §§goto(addr87);
                                 }
                                 else
                                 {
                                    §§goto(addr52);
                                 }
                              }
                        }
                        break;
                     }
                     §§push("REPLAY");
                     if(_loc5_)
                     {
                        §§push(_loc4_);
                        if(!_loc6_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc5_)
                              {
                                 §§push(1);
                                 if(!_loc5_)
                                 {
                                    §§goto(addr166);
                                 }
                              }
                              else
                              {
                                 §§goto(addr163);
                              }
                           }
                           else
                           {
                              addr162:
                              if("MENU" === _loc4_)
                              {
                                 §§goto(addr163);
                              }
                              else
                              {
                                 §§push(3);
                              }
                           }
                           §§goto(addr171);
                        }
                     }
                     §§goto(addr162);
                     §§goto(addr163);
                  }
               }
               §§goto(addr162);
            }
            §§goto(addr133);
         }
      }
      
      override protected function setButtonStates(param1:String) : void
      {
      }
      
      override protected function hideBestScoreTexts() : void
      {
      }
      
      override protected function setScoreData() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.setScoreData();
            while(§&i§)
            {
               if(!(_loc2_ && this))
               {
                  if(_loc1_)
                  {
                     (§[o§.§&6§ as §^y§).§8M§(§0$§.§[C§);
                     addr52:
                     break;
                  }
                  continue;
               }
               §§goto(addr52);
            }
            return;
         }
         §§goto(addr52);
      }
   }
}
