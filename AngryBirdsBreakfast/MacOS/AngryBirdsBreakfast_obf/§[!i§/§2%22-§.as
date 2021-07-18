package §[!i§
{
   import §"n§.§!!G§;
   import §,L§.§%J§;
   import §,L§.§6!W§;
   import §,L§.§;[§;
   import §0"$§.§;§;
   import §1T§.§'!c§;
   import §48§.§1!<§;
   import §48§.§]l§;
   import §;!§.§@!C§;
   import each.§8!N§;
   
   public class §2"-§ extends §@"§
   {
      
      private static var §5!M§:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §5!M§ = §5"!§;
         }
      }
      
      private var §3"$§:§@!C§;
      
      protected var §'2§:Array;
      
      private const §0D§:int = 6;
      
      private const § 0§:int = 60;
      
      private var §<1§:int = 1;
      
      private var §[M§:int = 60;
      
      private var §;e§:§;[§;
      
      private var §%!k§:Boolean;
      
      public function §2"-§(param1:§@!C§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§'2§ = [];
         }
         loop0:
         do
         {
            §-!w§ = true;
            loop1:
            while(true)
            {
               §@!X§ = false;
               loop2:
               do
               {
                  §0!T§ = true;
                  while(_loc2_)
                  {
                     super(§1!<§.§0!D§,§]l§.DEFAULT,this.§`!K§());
                     while(!(_loc3_ && this))
                     {
                        this.§3"$§ = param1;
                        if(_loc2_ || param1)
                        {
                           continue loop2;
                        }
                     }
                  }
                  continue loop1;
               }
               while(_loc3_ && this);
               
               continue loop0;
            }
         }
         while(!(_loc2_ || this));
         
      }
      
      protected function §`!K§() : XML
      {
         var _loc1_:XML = §8!N§.§?!c§(§5!M§);
         return §4!=§.§'!u§(_loc1_);
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.init();
            loop0:
            while(true)
            {
               §-!w§ = true;
               while(true)
               {
                  this.updateTextFields();
                  loop2:
                  while(_loc1_ || this)
                  {
                     while(true)
                     {
                        this.§+!q§();
                        do
                        {
                           this.§?_§();
                           do
                           {
                              this.§%!k§ = true;
                              do
                              {
                                 this.§;e§ = §@'§.getItemByName("MovieClip_LevelEndFailedPig");
                                 do
                                 {
                                    §#u§.cacheAsBitmap = true;
                                 }
                                 while(!(_loc1_ || this));
                                 
                              }
                              while(!(_loc1_ || this));
                              
                           }
                           while(_loc2_);
                           
                        }
                        while(!_loc1_);
                        
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr110);
      }
      
      protected function §+!q§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§'2§);
            while(true)
            {
               §§pop().push((§@'§.getItemByName("Button_Menu") as §;§).x);
               addr33:
               if(_loc2_ && _loc1_)
               {
                  continue;
               }
               §§pop().push((§@'§.getItemByName("Button_NextLevel") as §;§).x);
               if(!(_loc2_ && this))
               {
                  if(!(_loc1_ || _loc2_))
                  {
                     while(true)
                     {
                        §§push(this.§'2§);
                        while(true)
                        {
                           §§pop().push((§@'§.getItemByName("Button_Replay") as §;§).x);
                           addr82:
                           while(true)
                           {
                              §§push(this.§'2§);
                              if(!(_loc1_ || _loc1_))
                              {
                                 break;
                              }
                              §§goto(addr33);
                           }
                        }
                     }
                     addr102:
                  }
                  return;
               }
               §§goto(addr82);
            }
         }
         §§goto(addr102);
      }
      
      protected function §?_§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§3"$§.§@!R§.getNextLevelId());
         if(!(_loc2_ && _loc2_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!_loc2_)
         {
            §§push(_loc1_);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               addr220:
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop4:
                        while(!§§pop())
                        {
                           (§@'§.getItemByName("Button_NextLevel") as §;§).setVisibility(true);
                           loop5:
                           while(true)
                           {
                              (§@'§.getItemByName("Button_Menu") as §;§).x = this.§'2§[0];
                              while(!_loc2_)
                              {
                                 if(!(_loc3_ || this))
                                 {
                                    addr140:
                                    if(_loc2_)
                                    {
                                       (§@'§.getItemByName("Button_Menu") as §;§).x = this.§'2§[0] + 40;
                                       §§goto(addr140);
                                       addr183:
                                    }
                                 }
                                 (§@'§.getItemByName("Button_Replay") as §;§).x = this.§'2§[1];
                                 while(!_loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(_loc3_)
                                       {
                                          (§@'§.getItemByName("Button_NextLevel") as §;§).x = this.§'2§[2];
                                          if(_loc3_)
                                          {
                                             if(_loc3_)
                                             {
                                                §§goto(addr33);
                                             }
                                             break loop4;
                                          }
                                          continue;
                                          continue;
                                       }
                                       loop8:
                                       while(true)
                                       {
                                          if(_loc2_ && _loc1_)
                                          {
                                             continue loop0;
                                          }
                                          §§push(!(§6!!§.singleton as §4!=§).§?!b§.§]!g§(_loc1_));
                                          if(!_loc2_)
                                          {
                                             if(_loc3_ || _loc3_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc2_ && this))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         continue loop8;
                                                      }
                                                      continue loop4;
                                                   }
                                                   continue loop2;
                                                }
                                                addr190:
                                             }
                                          }
                                          if(_loc2_)
                                          {
                                             continue;
                                          }
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          addr222:
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop0;
                                          }
                                       }
                                       if(_loc3_ || _loc1_)
                                       {
                                          continue loop4;
                                       }
                                       continue loop1;
                                    }
                                    continue loop5;
                                 }
                                 continue;
                                 (§@'§.getItemByName("Button_Replay") as §;§).x = this.§'2§[2] - 40;
                                 break;
                              }
                              addr33:
                              return;
                           }
                        }
                        (§@'§.getItemByName("Button_NextLevel") as §;§).setVisibility(false);
                        §§goto(addr183);
                     }
                     §§goto(addr222);
                  }
               }
            }
            addr219:
         }
         while(true)
         {
            §§push(_loc1_);
            if(!_loc2_)
            {
               §§goto(addr190);
               §§push(Boolean(§§pop()));
            }
            else
            {
               §§goto(addr219);
            }
            §§goto(addr220);
         }
      }
      
      protected function §2!§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            (§@'§.getItemByName("Button_Menu") as §;§).setComponentVisualState(param1);
            while(true)
            {
               (§@'§.getItemByName("Button_Replay") as §;§).setComponentVisualState(param1);
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     (§@'§.getItemByName("Button_NextLevel") as §;§).setComponentVisualState(param1);
                     if(!_loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr64);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!_loc5_)
         {
            if("NEXT_LEVEL" === _loc4_)
            {
               if(_loc6_)
               {
                  addr166:
                  §§push(0);
                  if(_loc5_ && param3)
                  {
                  }
                  §§goto(addr215);
               }
               else
               {
                  §§goto(addr185);
               }
            }
            else
            {
               if("REPLAY" === _loc4_)
               {
                  if(_loc6_ || param2)
                  {
                     addr185:
                     §§push(1);
                     if(_loc6_ || param2)
                     {
                     }
                  }
               }
               else if("MENU" !== _loc4_)
               {
                  addr215:
                  loop7:
                  switch(§§pop())
                  {
                     case 0:
                        §-!w§ = false;
                        loop0:
                        while(true)
                        {
                           close();
                           addr147:
                           while(true)
                           {
                              §§push(this.§3"$§);
                              addr135:
                              while(true)
                              {
                                 §§pop().§[H§();
                                 continue loop0;
                              }
                           }
                        }
                        break;
                     case 1:
                        §-!w§ = false;
                        addr124:
                        if(_loc6_ || param3)
                        {
                           close();
                           addr100:
                           if(!(_loc5_ && param2))
                           {
                              addr90:
                              §§push(this.§3"$§);
                              if(_loc6_)
                              {
                                 addr95:
                                 §§pop().§=!V§(this.§3"$§.§8!w§());
                                 break;
                                 addr96:
                                 addr94:
                              }
                              else
                              {
                                 §§goto(addr135);
                              }
                           }
                           §§goto(addr147);
                        }
                        §§goto(addr136);
                     case 2:
                        §'!c§.§&j§();
                        loop4:
                        while(true)
                        {
                           §-!w§ = false;
                           loop5:
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 continue loop4;
                              }
                              if(!_loc5_)
                              {
                                 if(_loc6_ || this)
                                 {
                                    while(true)
                                    {
                                       close();
                                       if(_loc5_ && this)
                                       {
                                          break loop7;
                                       }
                                       continue loop5;
                                    }
                                    break loop7;
                                    addr47:
                                 }
                                 §§goto(addr124);
                              }
                              §§goto(addr96);
                           }
                           §§goto(addr136);
                        }
                  }
                  return;
                  §§push(3);
               }
               §§goto(addr215);
               if(_loc6_)
               {
                  §§goto(addr210);
               }
            }
            §§goto(addr215);
         }
         §§goto(addr166);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§2!§(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
            while(true)
            {
               this.§%!k§ = false;
               while(!(_loc2_ && _loc2_))
               {
                  super.dispose();
                  if(_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr43:
               }
            }
         }
         §§goto(addr43);
      }
      
      override public function updateLocalization() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.updateLocalization();
         }
         do
         {
            this.updateTextFields();
         }
         while(_loc1_);
         
      }
      
      override public function updateTextFields() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §!!G§.§2Z§.updateTextFields(§@'§,"StateEndFail");
         }
      }
      
      private function §^![§(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(this.§;e§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.§[M§ -= param1;
                     if(_loc4_)
                     {
                        §§push(this.§[M§);
                        if(_loc4_ || param1)
                        {
                           §§push(0);
                           if(!(_loc5_ && _loc2_))
                           {
                              if(§§pop() <= §§pop())
                              {
                                 if(_loc4_ || _loc3_)
                                 {
                                    if(_loc5_)
                                    {
                                       continue;
                                    }
                                    if(!_loc4_)
                                    {
                                       §§goto(addr82);
                                    }
                                    this.§[M§ = this.§ 0§;
                                    if(!_loc5_)
                                    {
                                       if(false)
                                       {
                                          continue;
                                       }
                                       var _loc2_:*;
                                       §§push((_loc2_ = this).§<1§);
                                       if(_loc4_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc3_:* = §§pop();
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          _loc2_.§<1§ = _loc3_;
                                       }
                                       if(_loc4_ || _loc2_)
                                       {
                                          break;
                                       }
                                       addr148:
                                       this.§<1§ = 1;
                                    }
                                    loop1:
                                    while(true)
                                    {
                                       addr116:
                                       while(true)
                                       {
                                          §§push(this.§;e§);
                                          continue loop1;
                                       }
                                    }
                                    addr151:
                                 }
                                 §§goto(addr148);
                              }
                              §§goto(addr113);
                           }
                           addr145:
                           if(§§pop() > §§pop())
                           {
                              if(!_loc5_)
                              {
                                 §§goto(addr148);
                              }
                              §§goto(addr151);
                           }
                           §§goto(addr116);
                        }
                        addr143:
                        §§goto(addr145);
                        §§push(this.§0D§);
                     }
                     break;
                  }
                  §§goto(addr143);
                  §§push(this.§<1§);
               }
               §§goto(addr82);
            }
            §§goto(addr119);
         }
         addr82:
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§^![§(param1);
         }
      }
   }
}
