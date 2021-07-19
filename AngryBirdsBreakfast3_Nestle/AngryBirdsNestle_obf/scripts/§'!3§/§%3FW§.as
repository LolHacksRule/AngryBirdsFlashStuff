package §'!3§
{
   import §'"!§.§+§;
   import §'"!§.§-!g§;
   import §'"!§.§<!7§;
   import §1!c§.§;"2§;
   import §1!i§.§4z§;
   import §1!i§.§`!t§;
   import §24§.§4!H§;
   import §2u§.§]"%§;
   import §4!i§.§@"#§;
   import §[!Z§.§>D§;
   
   public class §?W§ extends §;!o§
   {
      
      private static var §#!B§:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §?W§))
         {
            §#!B§ = §=!w§;
         }
      }
      
      private var §-!j§:§;"2§;
      
      protected var §0t§:Array;
      
      private const §6!v§:int = 6;
      
      private const §;0§:int = 60;
      
      private var §%!z§:int = 1;
      
      private var §]!+§:int = 60;
      
      private var §8!a§:§<!7§;
      
      private var §]"+§:Boolean;
      
      public function §?W§(param1:§;"2§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§0t§ = [];
            while(true)
            {
               §9p§ = true;
               while(!_loc3_)
               {
                  §]G§ = false;
                  while(!(_loc3_ && param1))
                  {
                     §^J§ = true;
                     while(!(_loc3_ && _loc3_))
                     {
                        super(§`!t§.§[F§,§4z§.DEFAULT,this.§'!,§());
                        loop4:
                        while(_loc2_ || this)
                        {
                           while(true)
                           {
                              this.§-!j§ = param1;
                              if(_loc2_ || _loc3_)
                              {
                                 break;
                              }
                              continue loop4;
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      protected function §'!,§() : XML
      {
         var _loc1_:XML = §4!H§.§7o§(§#!B§);
         return AngryBirdsCustom.§9!>§(_loc1_);
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.init();
         }
         while(true)
         {
            §9p§ = true;
            loop1:
            while(true)
            {
               this.updateTextFields();
               loop2:
               do
               {
                  this.§'!N§();
                  while(true)
                  {
                     this.§;!!§();
                     continue loop1;
                     addr60:
                     while(_loc1_ || _loc1_)
                     {
                        this.§8!a§ = §29§.getItemByName("MovieClip_LevelEndFailedPig");
                        if(_loc1_)
                        {
                           addr36:
                           if(!(_loc2_ && this))
                           {
                              continue loop2;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               while(_loc2_);
               
               return;
            }
         }
      }
      
      protected function §'!N§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§0t§);
            while(true)
            {
               §§pop().push((§29§.getItemByName("Button_Menu") as §]"%§).x);
            }
            addr85:
         }
         loop1:
         while(true)
         {
            §§push(this.§0t§);
            loop2:
            while(!_loc2_)
            {
               §§pop().push((§29§.getItemByName("Button_Replay") as §]"%§).x);
               while(_loc1_)
               {
                  continue loop2;
                  §§pop().push((§29§.getItemByName("Button_NextLevel") as §]"%§).x);
                  §§push(this.§0t§);
                  if(_loc2_)
                  {
                     continue loop2;
                  }
                  §§goto(addr33);
                  if(!(_loc2_ && _loc1_))
                  {
                     return;
                  }
               }
               continue loop1;
            }
            §§goto(addr85);
         }
      }
      
      protected function §;!!§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§-!j§.§[!,§.getNextLevelId());
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc1_);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               addr230:
               while(true)
               {
                  §§push(§§pop());
                  addr231:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr232:
                     }
                     else
                     {
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 (§29§.getItemByName("Button_NextLevel") as §]"%§).setVisibility(true);
                                 loop6:
                                 while(true)
                                 {
                                    (§29§.getItemByName("Button_Menu") as §]"%§).x = this.§0t§[0];
                                    while(!_loc2_)
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          (§29§.getItemByName("Button_Replay") as §]"%§).x = this.§0t§[1];
                                          do
                                          {
                                             (§29§.getItemByName("Button_NextLevel") as §]"%§).x = this.§0t§[2];
                                          }
                                          while(_loc2_);
                                          
                                          if(!(_loc3_ || this))
                                          {
                                             continue;
                                          }
                                          if(_loc2_)
                                          {
                                             continue loop6;
                                          }
                                          if(!(_loc2_ && this))
                                          {
                                             §§goto(addr28);
                                          }
                                          continue;
                                       }
                                       loop10:
                                       while(true)
                                       {
                                          §§push(!(§ !4§.§%"7§ as AngryBirdsCustom).§+Y§.§2"+§(_loc1_));
                                          if(!(_loc3_ || this))
                                          {
                                             break;
                                          }
                                          if(!_loc2_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             continue loop4;
                                          }
                                          addr226:
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop10;
                                          }
                                       }
                                       continue loop5;
                                    }
                                    loop9:
                                    while(true)
                                    {
                                       if(!(_loc3_ || _loc3_))
                                       {
                                          continue;
                                       }
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       addr184:
                                       while(true)
                                       {
                                          (§29§.getItemByName("Button_Menu") as §]"%§).x = this.§0t§[0] + 40;
                                          continue loop9;
                                       }
                                    }
                                    if(_loc3_)
                                    {
                                       break loop5;
                                    }
                                    continue loop0;
                                 }
                              }
                              (§29§.getItemByName("Button_NextLevel") as §]"%§).setVisibility(false);
                              §§goto(addr184);
                           }
                           addr28:
                           return;
                        }
                        addr175:
                     }
                  }
               }
            }
            addr229:
         }
         while(true)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc2_ && _loc1_))
               {
                  if(_loc2_ && _loc1_)
                  {
                     continue;
                  }
                  if(!_loc2_)
                  {
                     §§push(§§pop());
                     if(!(_loc2_ && _loc1_))
                     {
                        if(§§pop())
                        {
                           §§goto(addr226);
                        }
                     }
                     else
                     {
                        §§goto(addr231);
                     }
                     §§goto(addr175);
                  }
                  else
                  {
                     §§goto(addr230);
                  }
               }
               §§goto(addr226);
            }
            else
            {
               §§goto(addr229);
            }
         }
      }
      
      protected function § !y§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            (§29§.getItemByName("Button_Menu") as §]"%§).setComponentVisualState(param1);
            while(true)
            {
               (§29§.getItemByName("Button_Replay") as §]"%§).setComponentVisualState(param1);
               while(!(_loc2_ && _loc2_))
               {
                  (§29§.getItemByName("Button_NextLevel") as §]"%§).setComponentVisualState(param1);
                  if(!(_loc3_ || _loc2_))
                  {
                     continue;
                  }
                  return;
                  addr54:
               }
            }
         }
         §§goto(addr54);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!_loc6_)
         {
            if("NEXT_LEVEL" === _loc4_)
            {
               if(_loc5_)
               {
                  §§push(0);
                  if(_loc6_)
                  {
                  }
                  §§goto(addr199);
               }
               else
               {
                  §§goto(addr169);
               }
            }
            else
            {
               if("REPLAY" === _loc4_)
               {
                  if(_loc5_)
                  {
                     addr169:
                     §§push(1);
                     if(_loc6_ && param1)
                     {
                        addr194:
                     }
                  }
               }
               else if("MENU" !== _loc4_)
               {
                  addr199:
                  loop2:
                  switch(§§pop())
                  {
                     case 0:
                        §9p§ = false;
                        close();
                        addr136:
                        this.§-!j§.§,"#§();
                        break;
                        addr141:
                        addr147:
                        addr137:
                     case 1:
                        §9p§ = false;
                        close();
                        addr118:
                        this.§-!j§.§'l§(this.§-!j§.§9!"§());
                        if(_loc5_)
                        {
                           break;
                        }
                        §§goto(addr141);
                        break;
                        addr132:
                        addr125:
                        addr117:
                        addr115:
                     case 2:
                        §>D§.§>!%§();
                        loop0:
                        for(; !(_loc6_ && param3); if(_loc6_ && param3)
                        {
                           continue;
                        },if(_loc5_ || param2)
                        {
                           if(!(_loc6_ && param2))
                           {
                              §§push(this.§-!j§);
                              if(!(_loc6_ && param1))
                              {
                                 if(_loc5_)
                                 {
                                    §§push(this.§-!j§);
                                    if(!(_loc6_ && param3))
                                    {
                                       §§push(§§pop().§'!#§());
                                       if(_loc5_ || param1)
                                       {
                                          §§goto(addr46);
                                       }
                                       §§goto(addr118);
                                    }
                                    §§goto(addr117);
                                 }
                                 §§goto(addr136);
                              }
                              §§goto(addr115);
                           }
                           §§goto(addr147);
                        },§§goto(addr137))
                        {
                           if(_loc5_)
                           {
                              §9p§ = false;
                              if(_loc5_)
                              {
                                 if(!_loc6_)
                                 {
                                    while(true)
                                    {
                                       close();
                                       if(_loc6_)
                                       {
                                          break loop2;
                                       }
                                       continue loop0;
                                       addr46:
                                       §§pop().§'l§(§§pop());
                                       if(!_loc5_)
                                       {
                                          break loop2;
                                       }
                                       if(true)
                                       {
                                          break loop2;
                                       }
                                    }
                                    break loop2;
                                 }
                                 §§goto(addr132);
                              }
                              break loop2;
                           }
                           §§goto(addr125);
                        }
                        §§goto(addr118);
                  }
                  return;
                  §§push(3);
               }
               §§goto(addr199);
               if(_loc5_)
               {
                  §§goto(addr194);
               }
            }
            §§goto(addr199);
         }
         §§goto(addr169);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§ !y§(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         do
         {
            this.§]"+§ = false;
            do
            {
               super.dispose();
            }
            while(!(_loc1_ || _loc2_));
            
         }
         while(_loc2_);
         
      }
      
      override public function updateLocalization() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.updateLocalization();
            do
            {
               this.updateTextFields();
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      override public function updateTextFields() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §@"#§.§,2§.updateTextFields(§29§,"StateEndFail");
         }
      }
      
      private function §!"!§(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(this.§8!a§);
            if(!(_loc5_ && this))
            {
               if(!§§pop())
               {
                  if(!(_loc5_ && this))
                  {
                     return;
                  }
                  §§push(this.§%!z§);
                  addr111:
               }
               else
               {
                  loop0:
                  while(true)
                  {
                     this.§]!+§ -= param1;
                     if(_loc4_)
                     {
                        §§push(this.§]!+§);
                        if(_loc4_)
                        {
                           §§push(0);
                           if(_loc4_ || param1)
                           {
                              if(§§pop() <= §§pop())
                              {
                                 if(_loc4_)
                                 {
                                    if(!(_loc4_ || this))
                                    {
                                       continue;
                                    }
                                    this.§]!+§ = this.§;0§;
                                    if(_loc4_ || _loc3_)
                                    {
                                       if(false)
                                       {
                                          continue;
                                       }
                                       var _loc2_:*;
                                       §§push((_loc2_ = this).§%!z§);
                                       if(_loc4_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc3_:* = §§pop();
                                       if(!_loc5_)
                                       {
                                          _loc2_.§%!z§ = _loc3_;
                                       }
                                       if(!_loc5_)
                                       {
                                          §§goto(addr111);
                                       }
                                       loop3:
                                       while(true)
                                       {
                                          addr116:
                                          while(true)
                                          {
                                             §§push(this.§8!a§);
                                             addr119:
                                             while(true)
                                             {
                                                §§pop().goToFrame(this.§%!z§,false);
                                                if(!_loc4_)
                                                {
                                                   continue loop3;
                                                }
                                                if(_loc4_ || param1)
                                                {
                                                   break loop0;
                                                }
                                             }
                                             continue loop3;
                                          }
                                       }
                                       addr151:
                                    }
                                 }
                                 while(true)
                                 {
                                    this.§%!z§ = 1;
                                    §§goto(addr151);
                                    §§goto(addr125);
                                 }
                                 addr148:
                              }
                              §§goto(addr113);
                           }
                           addr147:
                           if(§§pop() > §§pop())
                           {
                              §§goto(addr148);
                           }
                           §§goto(addr116);
                        }
                     }
                     break;
                  }
                  addr113:
                  return;
                  addr132:
               }
               §§goto(addr147);
               §§push(this.§6!v§);
            }
            §§goto(addr119);
         }
         §§goto(addr132);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§!"!§(param1);
         }
      }
   }
}
