package §'!3§
{
   import §'"!§.§+§;
   import §1!c§.§'8§;
   import §1!c§.§;D§;
   import §1!i§.§4z§;
   import §1!i§.§`!t§;
   import §24§.§4!H§;
   import §2u§.§7!&§;
   import §2u§.§]"%§;
   import §;g§.§0!o§;
   import §;g§.§]W§;
   import §[!Z§.§>D§;
   
   public class §8f§ extends §;!o§
   {
      
      private static var §%"-§:Class;
      
      private static const §%n§:Number = 250;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §%"-§ = §+a§;
         }
         do
         {
            §%n§ = 250;
         }
         while(_loc1_ && _loc1_);
         
      }
      
      private var §5"3§:§]W§ = null;
      
      private var §-P§:Number;
      
      private var §?!!§:String;
      
      public function §8f§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §9p§ = true;
         }
         loop0:
         while(true)
         {
            §]G§ = false;
            while(true)
            {
               super(§`!t§.§!!2§,§4z§.DEFAULT,this.§'!,§());
               while(!(_loc2_ && _loc3_))
               {
                  continue loop0;
                  this.§?!!§ = param1;
                  if(_loc3_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      protected function §'!,§() : XML
      {
         var _loc1_:XML = §4!H§.§7o§(§%"-§);
         return AngryBirdsCustom.§9!>§(_loc1_);
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.init();
            while(true)
            {
               this.§-P§ = §29§.getItemByName("Container_PauseMenu").x;
               loop1:
               while(true)
               {
                  (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§2!J§(false);
                  loop2:
                  while(this.§?!!§)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        continue loop1;
                     }
                     addr62:
                     while(true)
                     {
                        if(_loc2_)
                        {
                           break loop2;
                        }
                        continue loop2;
                     }
                  }
                  return;
               }
            }
         }
         while(true)
         {
            (§29§.getItemByName("TextField_LevelName") as §7!&§).setText(this.§?!!§);
            §§goto(addr62);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!_loc5_)
         {
            if("RESTART_LEVEL" === _loc4_)
            {
               if(_loc6_)
               {
                  §§push(0);
                  if(!_loc6_)
                  {
                     addr144:
                  }
               }
               else
               {
                  addr148:
                  §§push(2);
                  if(!_loc6_)
                  {
                  }
               }
               §§goto(addr166);
            }
            else
            {
               if("RESUME_LEVEL" !== _loc4_)
               {
                  if("MENU" === _loc4_)
                  {
                     §§goto(addr148);
                  }
                  else
                  {
                     §§push(3);
                  }
                  addr166:
                  loop5:
                  switch(§§pop())
                  {
                     case 0:
                        §9p§ = false;
                        while(true)
                        {
                           close();
                           if(_loc5_)
                           {
                              break loop5;
                           }
                           if(!_loc5_)
                           {
                              §'8§.§@!!§();
                              addr90:
                              § !4§.§%"7§.§7"6§(§'8§.§8"%§);
                              break loop5;
                              addr91:
                              addr95:
                              addr88:
                           }
                        }
                        break;
                     case 1:
                        this.§7!u§();
                        break;
                        addr74:
                     case 2:
                        §>D§.§>!%§();
                        loop1:
                        while(true)
                        {
                           if(!(_loc5_ && this))
                           {
                              §§push(§ !4§.§%"7§);
                              if(_loc6_ || this)
                              {
                                 §§push(§;D§.§8"%§);
                                 if(!_loc5_)
                                 {
                                    §§pop().§7"6§(§§pop());
                                    loop2:
                                    while(true)
                                    {
                                       loop3:
                                       while(true)
                                       {
                                          §9p§ = false;
                                          while(true)
                                          {
                                             if(!_loc5_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      break loop2;
                                                   }
                                                   close();
                                                   if(_loc5_)
                                                   {
                                                      break loop5;
                                                   }
                                                   if(!_loc5_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         break;
                                                      }
                                                      if(true)
                                                      {
                                                         break loop3;
                                                      }
                                                      continue loop3;
                                                   }
                                                   continue;
                                                }
                                                continue loop1;
                                             }
                                             continue loop2;
                                          }
                                          §§goto(addr91);
                                       }
                                       break loop5;
                                    }
                                    §§goto(addr95);
                                 }
                                 §§goto(addr90);
                              }
                              §§goto(addr88);
                           }
                           else
                           {
                              §§goto(addr74);
                           }
                        }
                  }
                  return;
               }
               if(_loc6_ || this)
               {
                  addr136:
                  §§push(1);
                  if(_loc6_ || this)
                  {
                     §§goto(addr144);
                  }
               }
               else
               {
                  §§goto(addr148);
               }
               §§goto(addr166);
            }
            §§goto(addr148);
         }
         §§goto(addr136);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §]G§ = false;
            while(true)
            {
               super.show(param1);
               §§goto(addr61);
            }
         }
         addr61:
         while(true)
         {
            this.§function§();
            if(!_loc2_)
            {
               if(_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §function§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §29§.getItemByName("Container_PauseMenu").x = this.§-P§ - §%n§;
         }
         while(true)
         {
            this.§7!]§(false);
            while(!_loc2_)
            {
               §§push(this.§5"3§);
               loop2:
               while(true)
               {
                  if(§§pop() != null)
                  {
                     if(_loc1_)
                     {
                        if(!_loc1_)
                        {
                           break;
                        }
                        §§push(this.§5"3§);
                        while(true)
                        {
                           §§pop().stop();
                        }
                        addr86:
                     }
                     while(true)
                     {
                     }
                     addr87:
                  }
                  while(true)
                  {
                     this.§5"3§ = §0!o§.§,2§.§4!t§(§29§.getItemByName("Container_PauseMenu"),{"x":this.§-P§},null,0.25,§0!o§.§ !E§);
                     while(true)
                     {
                        §§push(this.§5"3§);
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 §§pop().onComplete = this.§>!r§;
                                 continue;
                              }
                              continue loop2;
                           }
                           §§goto(addr86);
                        }
                        §§goto(addr87);
                     }
                  }
                  return;
               }
            }
         }
      }
      
      private function §>!r§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§7!]§(true);
         }
      }
      
      private function §7!]§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            (§29§.getItemByName("Button_Resume") as §]"%§).setEnabled(param1);
         }
         do
         {
            (§29§.getItemByName("Button_Replay") as §]"%§).setEnabled(param1);
            do
            {
               (§29§.getItemByName("Button_Menu") as §]"%§).setEnabled(param1);
            }
            while(_loc2_);
            
         }
         while(!(_loc3_ || _loc2_));
         
      }
      
      private function §7!u§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§5"3§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  addr125:
                  while(true)
                  {
                     §§push(this.§5"3§);
                     addr127:
                     while(true)
                     {
                        §§pop().stop();
                        addr128:
                        while(true)
                        {
                        }
                     }
                  }
                  addr125:
               }
               while(true)
               {
                  this.§5"3§ = §0!o§.§,2§.§4!t§(§29§.getItemByName("Container_PauseMenu"),{"x":this.§-P§ - §%n§},null,0.2,§0!o§.§1[§);
                  addr101:
                  while(!(_loc1_ && _loc1_))
                  {
                     if(!_loc1_)
                     {
                        §§push(this.§5"3§);
                        if(_loc2_)
                        {
                           continue loop0;
                        }
                     }
                     else
                     {
                        §§goto(addr125);
                     }
                     §§goto(addr127);
                  }
                  §§goto(addr128);
               }
            }
         }
         §§goto(addr125);
      }
   }
}
