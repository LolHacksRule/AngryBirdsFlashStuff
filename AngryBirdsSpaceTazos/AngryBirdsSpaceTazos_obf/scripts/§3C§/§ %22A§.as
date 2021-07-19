package §3C§
{
   import § !Y§.§&$§;
   import §0N§.§0!g§;
   import §3"#§.§<!O§;
   import §5X§.§+!#§;
   import §5X§.§8n§;
   import §5X§.§@!!§;
   import §7!H§.§1#§;
   import §7!H§.§8"6§;
   import §77§.§@_§;
   import §8!_§.§'u§;
   
   public class § "A§ extends §9!;§
   {
      
      private static var §^!t§:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §^!t§ = §["G§;
         }
      }
      
      private var §;!V§:§'u§;
      
      protected var §6!;§:Array;
      
      private const §#!%§:int = 6;
      
      private const §&!E§:int = 60;
      
      private var §#!M§:int = 1;
      
      private var §0c§:int = 60;
      
      private var §,!=§:§8n§;
      
      private var §4!K§:Boolean;
      
      public function § "A§(param1:§'u§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§6!;§ = [];
            loop0:
            while(true)
            {
               §>"2§ = true;
               do
               {
                  §1"$§ = false;
                  continue loop0;
               }
               while(!_loc2_);
               
            }
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
            loop0:
            while(true)
            {
               §>"2§ = true;
               loop1:
               while(true)
               {
                  this.updateTextFields();
                  while(true)
                  {
                     this.§,!,§();
                     loop3:
                     while(_loc1_ || _loc1_)
                     {
                        if(_loc1_)
                        {
                           while(true)
                           {
                              this.§1![§();
                              while(true)
                              {
                                 this.§4!K§ = true;
                                 continue loop1;
                                 addr36:
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    if(!(_loc1_ || _loc1_))
                                    {
                                       continue loop3;
                                    }
                                    §§goto(addr60);
                                    continue loop3;
                                 }
                              }
                           }
                           return;
                           addr60:
                           addr89:
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr89);
      }
      
      protected function §,!,§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§6!;§);
            loop0:
            while(true)
            {
               §§pop().push((§[S§.getItemByName("Button_Menu") as §@_§).x);
               while(true)
               {
                  §§push(this.§6!;§);
                  loop2:
                  while(_loc2_)
                  {
                     §§pop().push((§[S§.getItemByName("Button_Replay") as §@_§).x);
                     while(true)
                     {
                        §§push(this.§6!;§);
                        if(!(_loc1_ && _loc2_))
                        {
                           continue;
                        }
                        continue loop2;
                     }
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr78);
      }
      
      protected function §1![§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§;!V§.§=!+§.getNextLevelId());
         if(_loc3_ || _loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc3_ || this)
         {
            §§push(_loc1_);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop8:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              (§[S§.getItemByName("Button_NextLevel") as §@_§).setVisibility(true);
                              loop9:
                              while(!(_loc2_ && this))
                              {
                                 if(!(_loc3_ || _loc1_))
                                 {
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    (§[S§.getItemByName("Button_Menu") as §@_§).x = this.§6!;§[0];
                                    while(!_loc2_)
                                    {
                                       (§[S§.getItemByName("Button_Replay") as §@_§).x = this.§6!;§[1];
                                       do
                                       {
                                          (§[S§.getItemByName("Button_NextLevel") as §@_§).x = this.§6!;§[2];
                                       }
                                       while(!(_loc3_ || _loc3_));
                                       
                                       if(!(_loc3_ || _loc2_))
                                       {
                                          continue;
                                       }
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          if(!_loc2_)
                                          {
                                             §§goto(addr38);
                                          }
                                          loop14:
                                          while(true)
                                          {
                                             (§[S§.getItemByName("Button_Menu") as §@_§).x = this.§6!;§[0] + 40;
                                             addr206:
                                             loop10:
                                             while(true)
                                             {
                                                (§[S§.getItemByName("Button_NextLevel") as §@_§).setVisibility(false);
                                                continue loop14;
                                                addr165:
                                                while(true)
                                                {
                                                   if(!(_loc2_ && _loc3_))
                                                   {
                                                      break loop10;
                                                   }
                                                   continue loop10;
                                                }
                                             }
                                             if(!_loc2_)
                                             {
                                                break loop8;
                                             }
                                             loop7:
                                             while(true)
                                             {
                                                §§push(!(§ !g§.§;!'§ as §`Y§).§]]§.§]!B§(_loc1_));
                                                if(!(_loc2_ && this))
                                                {
                                                   if(_loc2_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc2_)
                                                            {
                                                               break;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               continue loop8;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               continue loop0;
                                                            }
                                                            addr242:
                                                         }
                                                      }
                                                      continue loop2;
                                                      addr220:
                                                   }
                                                   if(!_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   addr197:
                                                   §§push(Boolean(§§pop()));
                                                   if(!(_loc2_ && this))
                                                   {
                                                      continue loop8;
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      continue loop7;
                                                      §§goto(addr197);
                                                   }
                                                }
                                                §§goto(addr197);
                                             }
                                             continue loop1;
                                          }
                                       }
                                       §§goto(addr165);
                                    }
                                    continue loop9;
                                 }
                              }
                              addr38:
                              return;
                              addr151:
                           }
                           §§goto(addr206);
                        }
                        (§[S§.getItemByName("Button_Replay") as §@_§).x = this.§6!;§[2] - 40;
                        §§goto(addr151);
                     }
                     §§goto(addr242);
                  }
               }
            }
         }
         §§goto(addr137);
      }
      
      protected function §2"6§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            (§[S§.getItemByName("Button_Menu") as §@_§).setComponentVisualState(param1);
            while(true)
            {
               (§[S§.getItemByName("Button_Replay") as §@_§).setComponentVisualState(param1);
               loop1:
               while(_loc3_)
               {
                  while(true)
                  {
                     (§[S§.getItemByName("Button_NextLevel") as §@_§).setComponentVisualState(param1);
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr70);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_ || param3)
         {
            if("NEXT_LEVEL" === _loc4_)
            {
               if(_loc6_)
               {
                  addr171:
                  §§push(0);
                  if(_loc5_)
                  {
                  }
                  §§goto(addr210);
               }
               else
               {
                  §§goto(addr180);
               }
            }
            else
            {
               if("REPLAY" === _loc4_)
               {
                  if(_loc6_)
                  {
                     addr180:
                     §§push(1);
                     if(_loc5_)
                     {
                     }
                  }
               }
               else if("MENU" !== _loc4_)
               {
                  addr210:
                  loop2:
                  switch(§§pop())
                  {
                     case 0:
                        §>"2§ = false;
                        close();
                        addr142:
                        this.§;!V§.§@!§();
                        break;
                        addr147:
                        addr153:
                        addr143:
                     case 1:
                        §>"2§ = false;
                        close();
                        addr124:
                        if(_loc6_ || param2)
                        {
                           addr112:
                           this.§;!V§.§+"$§(this.§;!V§.§^!m§());
                           addr111:
                           if(!(_loc5_ && param2))
                           {
                              break;
                           }
                           break;
                        }
                        §§goto(addr147);
                        break;
                        addr138:
                     case 2:
                        §<!O§.§'N§();
                        while(true)
                        {
                           if(!_loc5_)
                           {
                              §>"2§ = false;
                              if(_loc5_)
                              {
                                 break loop2;
                              }
                              continue;
                           }
                           §§goto(addr153);
                        }
                        §§goto(addr142);
                  }
                  return;
                  §§push(3);
               }
               §§goto(addr210);
               if(!(_loc5_ && param2))
               {
                  §§goto(addr205);
               }
            }
            §§goto(addr210);
         }
         §§goto(addr171);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§2"6§(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         while(true)
         {
            this.§4!K§ = false;
            while(_loc1_ || this)
            {
               super.dispose();
               if(_loc1_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      override public function updateLocalization() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.updateLocalization();
            do
            {
               this.updateTextFields();
            }
            while(!_loc2_);
            
         }
      }
      
      override public function updateTextFields() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §&$§.§[!1§.updateTextFields(§[S§,"StateEndFail");
         }
      }
      
      private function §9!a§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(this.§,!=§);
            if(_loc5_ || _loc3_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.§0c§ -= param1;
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(this.§0c§);
                        if(!_loc4_)
                        {
                           §§push(0);
                           if(_loc5_)
                           {
                              if(§§pop() <= §§pop())
                              {
                                 if(!(_loc4_ && param1))
                                 {
                                    if(_loc4_)
                                    {
                                       §§goto(addr86);
                                    }
                                    this.§0c§ = this.§&!E§;
                                    if(_loc5_ || _loc2_)
                                    {
                                       if(false)
                                       {
                                          continue;
                                       }
                                       var _loc2_:*;
                                       §§push((_loc2_ = this).§#!M§);
                                       if(!_loc4_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc3_:* = §§pop();
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          _loc2_.§#!M§ = _loc3_;
                                       }
                                       if(!_loc4_)
                                       {
                                          break;
                                       }
                                       loop3:
                                       while(true)
                                       {
                                          addr122:
                                          loop4:
                                          while(true)
                                          {
                                             §§push(this.§,!=§);
                                             addr125:
                                             while(true)
                                             {
                                                §§pop().goToFrame(this.§#!M§,false);
                                                if(_loc4_)
                                                {
                                                   continue loop3;
                                                }
                                                if(_loc5_ || _loc3_)
                                                {
                                                   break;
                                                }
                                                addr154:
                                                while(true)
                                                {
                                                   this.§#!M§ = 1;
                                                   continue loop3;
                                                }
                                                continue loop4;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              return;
                           }
                           addr153:
                           if(§§pop() > §§pop())
                           {
                              §§goto(addr154);
                           }
                           §§goto(addr122);
                        }
                        addr151:
                        §§goto(addr153);
                        §§push(this.§#!%§);
                     }
                     break;
                  }
                  §§goto(addr151);
                  §§push(this.§#!M§);
                  addr51:
               }
               addr86:
               return;
            }
            §§goto(addr125);
         }
         §§goto(addr51);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§9!a§(param1);
         }
      }
   }
}
