package §1!c§
{
   import §%!B§.§0![§;
   import §&!y§.§14§;
   import §'"!§.§+§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §1`§.§7I§;
   import §1`§.§9%§;
   import §4[§.§4Z§;
   import §4[§.LoginHandlerEvent;
   
   public class §%!<§ extends §7X§
   {
      
      public static const §8"%§:String = "LoginState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §8"%§ = "LoginState";
         }
      }
      
      private var §3!+§:§4Z§;
      
      private var §;!B§:Boolean = false;
      
      public function §%!<§(param1:§0![§, param2:§+f§, param3:§4Z§, param4:Boolean, param5:String = "LoginState")
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && this))
         {
            super(param1,param4,param5,param2);
         }
         do
         {
            this.§3!+§ = param3;
         }
         while(_loc6_ && param3);
         
      }
      
      protected function §'!,§() : XML
      {
         return §7I§.§7!%§.Views.ViewLogin[0];
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.init();
            while(true)
            {
               §^!T§ = new §9%§(this);
               loop1:
               while(!(_loc2_ && this))
               {
                  while(true)
                  {
                     §^!T§.init(this.§'!,§());
                     if(!(_loc2_ && this))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr74);
      }
      
      public function §'l§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §7"6§(param1);
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.activate(param1);
            loop0:
            while(true)
            {
               §§push(§ !4§.§%"7§);
               loop1:
               while(true)
               {
                  §§push(§§pop().§+!J§);
                  loop2:
                  while(true)
                  {
                     §§pop().closeAllPopups(false);
                     addr217:
                     while(true)
                     {
                        §@!S§.§2A§.§`!V§(false);
                        addr200:
                        while(true)
                        {
                           §§push(§ !4§.§%"7§);
                           addr190:
                           while(true)
                           {
                              (§§pop() as AngryBirdsCustom).§+!a§(true);
                              loop6:
                              while(true)
                              {
                                 §§push(§ !4§.§%"7§);
                                 addr161:
                                 while(_loc2_)
                                 {
                                    §§push(§§pop().§+!J§);
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       §§pop().openPopup(new §14§(this.§3!+§,this));
                                       while(!_loc3_)
                                       {
                                          continue loop0;
                                       }
                                       continue loop6;
                                       addr177:
                                    }
                                    continue loop2;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(§ !4§.§%"7§);
            loop10:
            for(; !_loc3_; while(true)
            {
               §§push(§ !4§.§%"7§);
               if(!_loc2_)
               {
                  break;
               }
               §§goto(addr128);
            })
            {
               if(_loc2_)
               {
                  §§push((§§pop() as AngryBirdsCustom).§<=§);
                  while(true)
                  {
                     §§push(true);
                     addr156:
                     addr128:
                     while(true)
                     {
                        §§pop().§9!z§(§§pop());
                        continue loop10;
                     }
                     §§push((§§pop() as AngryBirdsCustom).§<=§);
                     if(!(_loc2_ || param1))
                     {
                        continue;
                     }
                     §§push(true);
                     if(_loc2_)
                     {
                        §§pop().§;!I§(§§pop());
                        while(!_loc3_)
                        {
                           AngryBirdsCustom.§get §();
                           while(true)
                           {
                              §§push(this.§3!+§);
                              while(true)
                              {
                                 if(§§pop().§8"§())
                                 {
                                    if(!_loc3_)
                                    {
                                       if(_loc2_)
                                       {
                                          if(_loc2_)
                                          {
                                             §§push(this.§3!+§);
                                             loop17:
                                             while(true)
                                             {
                                                §§push(LoginHandlerEvent.§8h§);
                                                addr115:
                                                while(true)
                                                {
                                                   §§pop().addEventListener(§§pop(),this.§+!=§);
                                                   addr118:
                                                   while(true)
                                                   {
                                                      §§push(this.§3!+§);
                                                      continue loop17;
                                                   }
                                                }
                                             }
                                          }
                                          break;
                                       }
                                       continue loop10;
                                    }
                                    §§goto(addr118);
                                 }
                                 §§goto(addr19);
                              }
                              §§goto(addr217);
                           }
                        }
                        §§goto(addr177);
                     }
                     else
                     {
                        §§goto(addr156);
                     }
                  }
               }
               else
               {
                  §§goto(addr190);
               }
            }
            §§goto(addr161);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param3))
         {
            super.onUIInteraction(param1,param2,param3);
         }
         loop0:
         while(true)
         {
            var _loc4_:* = param2;
            if(!(_loc6_ && this))
            {
               if("BACK" === _loc4_)
               {
                  addr84:
                  §§push(0);
                  if(!_loc5_)
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
                     § !4§.§%"7§.§+!J§.closeAllPopups();
                     if(!(_loc5_ || param3))
                     {
                        break loop0;
                     }
                     continue;
               }
            }
            §§goto(addr84);
         }
      }
      
      private function §+!=§(param1:LoginHandlerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§3!+§);
            loop0:
            while(true)
            {
               §§push(LoginHandlerEvent.§8h§);
               addr80:
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.§+!=§);
                  continue loop0;
               }
            }
         }
      }
      
      private function §>!w§(param1:LoginHandlerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§3!+§);
            loop0:
            while(true)
            {
               §§push(LoginHandlerEvent.§8h§);
               addr77:
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.§+!=§);
                  continue loop0;
               }
            }
         }
      }
   }
}
