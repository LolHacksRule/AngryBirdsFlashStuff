package §8!E§
{
   import §"a§.§6#!§;
   import §+D§.§ #^§;
   import §+D§.§^"m§;
   import §,"N§.§@>§;
   import §1!i§.§;7§;
   import §5t§.§`"+§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §;!W§.§7"]§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §<w§.§6#'§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §^#>§.§;x§;
   import §`"%§.§"!4§;
   import com.angrybirds.§,!q§;
   import flash.display.MovieClip;
   
   public class §true § extends §7"]§
   {
      
      public static const §#!X§:int = 50;
      
      protected static const §@"6§:String = "MightyEagleButtonVisible";
      
      protected static const §5"T§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §1!>§:String = "MightyEagleButtonHide";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §true §))
         {
            §#!X§ = 50;
            while(true)
            {
               §@"6§ = "MightyEagleButtonVisible";
               while(!_loc1_)
               {
                  §5"T§ = "MightyEagleButtonPrepareHide";
                  do
                  {
                     §1!>§ = "MightyEagleButtonHide";
                  }
                  while(!(_loc2_ || _loc2_));
                  
                  if(_loc2_)
                  {
                     return;
                     addr52:
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      protected var § F§:§6#!§;
      
      protected var §0"-§:§;7§;
      
      protected var §%8§:§[#R§;
      
      protected var §@"u§:String;
      
      protected var §9"3§:§^"m§;
      
      protected var §9"n§:§^"m§;
      
      protected var §5#H§:§^"m§;
      
      protected var §[!S§:§^"m§;
      
      protected var §0#,§:MovieClip;
      
      protected var §,-§:Boolean = false;
      
      public function §true §(param1:§ #^§, param2:§+"2§, param3:§6#!§, param4:§@>§, param5:§5"H§)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param3)
         {
            this.§0"-§ = new §;7§();
            while(true)
            {
               super(param1,param2,param4,param5);
               §§goto(addr70);
            }
         }
         addr70:
         while(true)
         {
            this.§ F§ = param3;
            if(!(_loc6_ && param3))
            {
               if(!_loc6_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function isEagleUsed() : Boolean
      {
         return this.§,-§;
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §=#=§.setVisibility(false);
            loop0:
            while(true)
            {
               this.§9"3§ = §^"m§(§=#=§.getItemByName("Button_MightyEagle"));
               while(true)
               {
                  this.§9"n§ = §^"m§(§=#=§.getItemByName("Button_Pause"));
                  addr80:
                  while(_loc1_)
                  {
                     this.§5#H§ = §^"m§(§=#=§.getItemByName("Button_Restart"));
                     while(true)
                     {
                        this.§[!S§ = §^"m§(§=#=§.getItemByName("Button_FullScreen"));
                        addr58:
                        while(!_loc2_)
                        {
                           if(_loc1_)
                           {
                              continue;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§0#,§ = §=#=§.getItemByName("Container_MightyEagle").mClip;
            if(_loc1_ || this)
            {
               if(_loc1_)
               {
                  break;
               }
               §§goto(addr80);
            }
            §§goto(addr58);
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.disable(false);
         }
      }
      
      override public function enable(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.enable(param1);
            loop0:
            while(true)
            {
               §=#=§.setVisibility(true);
               loop1:
               while(true)
               {
                  §=#=§.addEventListener(§6#'§.§+!>§,this.onUIInteraction);
                  loop2:
                  while(true)
                  {
                     this.§0"-§.§3"Q§(0);
                     loop3:
                     while(true)
                     {
                        this.§0r§(0);
                        continue loop1;
                        addr63:
                        addr56:
                        do
                        {
                           if(_loc3_ && _loc2_)
                           {
                              continue loop3;
                           }
                           §§push(this.§9"3§);
                           if(_loc2_ || _loc2_)
                           {
                              if(!§§pop())
                              {
                                 return;
                              }
                              addr19:
                              if(_loc2_ || _loc2_)
                              {
                                 addr41:
                                 if(_loc2_ || _loc3_)
                                 {
                                    if(_loc2_)
                                    {
                                       addr52:
                                       this.§9"3§.setVisibility(true);
                                       continue;
                                    }
                                    addr103:
                                    while(_loc2_)
                                    {
                                       this.§@"u§ = §@"6§;
                                    }
                                    continue loop2;
                                 }
                                 while(_loc2_)
                                 {
                                    this.§%8§ = null;
                                    continue loop0;
                                    §§goto(addr41);
                                 }
                                 continue loop1;
                              }
                              continue;
                           }
                           §§goto(addr52);
                        }
                        while(!_loc2_);
                        
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                        §§goto(addr19);
                     }
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      override public function disable(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super.disable(param1);
            loop0:
            while(true)
            {
               §=#=§.setVisibility(false);
               while(true)
               {
                  §=#=§.removeEventListener(§6#'§.§+!>§,this.onUIInteraction);
                  addr125:
                  while(true)
                  {
                     this.§9"n§.setComponentVisualState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     addr107:
                     while(true)
                     {
                        this.§5#H§.setComponentVisualState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
                  loop6:
                  while(!(_loc3_ && _loc3_))
                  {
                     §§push(this.§%8§);
                     loop7:
                     while(true)
                     {
                        §§pop().stop();
                        while(_loc2_)
                        {
                           this.§%8§ = null;
                           if(_loc3_ && _loc3_)
                           {
                              continue;
                           }
                           if(!_loc2_)
                           {
                              continue loop6;
                           }
                           if(!_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 §§goto(addr24);
                              }
                              continue loop0;
                           }
                           §§goto(addr107);
                        }
                        loop5:
                        while(true)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              if(!_loc2_)
                              {
                                 break;
                              }
                              §§push(this.§%8§);
                              if(!(_loc3_ && _loc3_))
                              {
                                 if(§§pop() != null)
                                 {
                                    continue loop6;
                                 }
                                 addr24:
                              }
                              continue loop7;
                              return;
                           }
                           addr100:
                           while(true)
                           {
                              this.§`!U§();
                              continue loop5;
                           }
                        }
                        §§goto(addr125);
                     }
                  }
               }
            }
         }
         §§goto(addr100);
      }
      
      protected function §@x§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§4#;§.singleton);
            if(!(_loc1_ && this))
            {
               §§push(§§pop().dataModel);
               if(!(_loc1_ && this))
               {
                  §§push(§§pop().userProgress);
                  if(_loc2_)
                  {
                     §§push(§§pop().§0#9§);
                     if(!_loc1_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc1_)
                        {
                           if(§§pop())
                           {
                              if(_loc2_)
                              {
                                 §§pop();
                                 if(!_loc1_)
                                 {
                                    addr76:
                                    §§push(§4#;§.singleton.dataModel.userProgress.§=!d§(§+!b§.currentLevel));
                                    if(!_loc1_)
                                    {
                                       addr82:
                                       if(§§pop())
                                       {
                                       }
                                    }
                                    §§goto(addr82);
                                 }
                                 return;
                              }
                           }
                        }
                     }
                     §§goto(addr82);
                  }
               }
            }
         }
         §§goto(addr76);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§0r§(param1);
            loop0:
            while(true)
            {
               §§push(this.§@"u§);
               loop1:
               while(true)
               {
                  §§push(§@"6§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop() == §§pop());
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        loop4:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§,!q§.§9!,§);
                                    while(true)
                                    {
                                       §§push(§§pop().objects.isPigsAlive());
                                       if(!_loc3_)
                                       {
                                          §§push(!§§pop());
                                          while(true)
                                          {
                                          }
                                          addr180:
                                       }
                                       addr181:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             addr182:
                                             while(true)
                                             {
                                                this.§=!f§();
                                                addr184:
                                                while(true)
                                                {
                                                }
                                             }
                                             addr182:
                                          }
                                          addr136:
                                          while(true)
                                          {
                                             §§push(this.§@"u§);
                                             continue loop1;
                                          }
                                       }
                                       addr135:
                                       §§push(§,!q§.§9!,§);
                                       if(!_loc2_)
                                       {
                                          continue;
                                       }
                                       §§push(§§pop().slingshot.mSlingShotState == §;x§.§?R§);
                                       if(!(_loc3_ && param1))
                                       {
                                          if(_loc2_)
                                          {
                                             loop16:
                                             while(§§pop())
                                             {
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   if(_loc2_)
                                                   {
                                                      this.§ !E§();
                                                      addr60:
                                                      if(_loc2_ || param1)
                                                      {
                                                         continue loop0;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(!(_loc3_ && this))
                                                      {
                                                         if(_loc3_ && this)
                                                         {
                                                            continue loop6;
                                                         }
                                                         §§goto(addr135);
                                                      }
                                                      loop18:
                                                      while(true)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            §§push(this.§@"u§);
                                                            if(_loc3_ && _loc3_)
                                                            {
                                                               continue loop1;
                                                            }
                                                            §§push(§5"T§);
                                                            if(!_loc2_)
                                                            {
                                                               while(!(_loc3_ && this))
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(_loc2_)
                                                                  {
                                                                     if(!(_loc2_ || this))
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     §§goto(addr165);
                                                                     §§push(§§pop());
                                                                  }
                                                                  §§goto(addr168);
                                                               }
                                                               continue loop2;
                                                               addr147:
                                                            }
                                                            §§push(§§pop() == §§pop());
                                                            if(_loc2_)
                                                            {
                                                               addr91:
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc3_ && param1)
                                                                     {
                                                                        while(_loc2_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              continue loop18;
                                                                           }
                                                                           continue loop13;
                                                                        }
                                                                        continue loop4;
                                                                        addr165:
                                                                     }
                                                                     if(!§§pop())
                                                                     {
                                                                        continue loop16;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                        §§pop();
                                                                        §§goto(addr121);
                                                                     }
                                                                     §§goto(addr182);
                                                                     §§goto(addr168);
                                                                  }
                                                               }
                                                               §§goto(addr181);
                                                            }
                                                            §§goto(addr118);
                                                            §§goto(addr168);
                                                         }
                                                         §§goto(addr182);
                                                      }
                                                      addr121:
                                                   }
                                                   §§goto(addr184);
                                                }
                                                §§goto(addr60);
                                             }
                                             addr24:
                                             return;
                                          }
                                          §§goto(addr168);
                                       }
                                       §§goto(addr118);
                                    }
                                 }
                              }
                           }
                           §§goto(addr180);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr182);
      }
      
      protected function §2"b§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§0#,§.scaleX = this.§0#,§.scaleY = 1;
         }
      }
      
      public function §`!U§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§9"3§);
            loop0:
            while(true)
            {
               §§push(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
               addr75:
               while(true)
               {
                  §§pop().setComponentVisualState(§§pop());
                  continue loop0;
               }
            }
         }
      }
      
      protected function §=!f§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§@"u§ = §5"T§;
         }
      }
      
      protected function § !E§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§9"3§);
            loop0:
            while(true)
            {
               §§push(§1"z§.COMPONENT_STATE_DISABLED);
               addr147:
               while(true)
               {
                  §§pop().setComponentState(§§pop());
                  continue loop0;
               }
            }
         }
         loop3:
         while(true)
         {
            §§push(this.§%8§);
            while(true)
            {
               if(§§pop() == null)
               {
                  while(true)
                  {
                     this.§%8§ = §-#C§.§%!E§.§^!H§(this.§0#,§,{
                        "scaleX":1,
                        "scaleY":1
                     },null,0.5);
                     addr114:
                     while(!(_loc1_ && this))
                     {
                     }
                     §§goto(addr148);
                  }
                  addr100:
               }
               while(true)
               {
                  this.§@"u§ = §1!>§;
                  addr63:
                  while(_loc2_ || _loc1_)
                  {
                     if(_loc2_ || this)
                     {
                        continue loop3;
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr114);
               }
               continue loop3;
               addr46:
               loop9:
               for(; !(_loc1_ && _loc2_); §§push(this.§%8§),if(_loc2_ || _loc1_)
               {
                  §§pop().play();
                  if(_loc1_)
                  {
                     §§goto(addr56);
                  }
                  return;
               })
               {
                  §§pop().onComplete = this.§3!`§;
                  while(!_loc1_)
                  {
                     continue loop9;
                  }
                  §§goto(addr63);
               }
            }
         }
      }
      
      protected function §3!`§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§%8§ = §-#C§.§%!E§.§^!H§(this.§0#,§,{
               "scaleX":0,
               "scaleY":0
            },null,0.5);
            while(true)
            {
               this.§%8§.play();
               while(_loc1_ || _loc1_)
               {
                  this.§@"u§ = §1!>§;
                  if(_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr44:
               }
            }
         }
         §§goto(addr44);
      }
      
      protected function §0r§(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§ F§.getScore(10));
         if(_loc6_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = §4#J§.userProgress.getScoreForLevel(§+!b§.currentLevel);
         §§push(this.§0"-§.getValue());
         if(!(_loc5_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:*;
         §§push(_loc4_ = §§pop());
         if(_loc6_)
         {
            if(§§pop() < _loc2_)
            {
               if(!(_loc5_ && this))
               {
                  addr82:
                  _loc4_ = int(Math.min(_loc2_,this.§0"-§.getValue() + param1 * §#!X§));
                  if(_loc5_ && this)
                  {
                  }
                  §§goto(addr104);
               }
               this.§0"-§.§3"Q§(_loc4_);
            }
            addr104:
            return;
         }
         §§goto(addr82);
      }
      
      protected function §0!$§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§4#;§.singleton.dataModel.userProgress.getEagleScoreForLevel(§+!b§.currentLevel));
         if(_loc2_ || _loc1_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
      }
      
      protected function useMightyEagle() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §,!q§.§9!,§.useMightyEagle();
         }
         while(true)
         {
            this.§0!$§();
            while(_loc2_)
            {
               this.§,-§ = true;
               if(!(_loc1_ && this))
               {
                  return;
               }
            }
         }
      }
      
      protected function onUIInteraction(param1:§6#'§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            if(!§]"u§)
            {
               loop0:
               while(true)
               {
                  if(param1.§^"r§ is §^"m§)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(param1.§@#8§);
                        loop2:
                        while(true)
                        {
                           §§push(§&#X§.LISTENER_EVENT_MOUSE_DOWN);
                           while(§§pop() != §§pop())
                           {
                              §§push(param1.§@#8§);
                              if(!_loc3_)
                              {
                                 continue loop2;
                              }
                              §§push(§&#X§.LISTENER_EVENT_MOUSE_UP);
                              if(!_loc3_)
                              {
                                 continue;
                              }
                              if(§§pop() == §§pop())
                              {
                                 if(!(_loc3_ || this))
                                 {
                                    break loop1;
                                 }
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 if(_loc3_)
                                 {
                                    §`"+§.§<"o§();
                                    break loop1;
                                 }
                                 continue loop1;
                              }
                              var _loc2_:* = param1.§=!k§;
                              if(!_loc4_)
                              {
                                 if("PAUSE" === _loc2_)
                                 {
                                    if(_loc3_ || _loc2_)
                                    {
                                       §§push(0);
                                       if(_loc4_)
                                       {
                                       }
                                       §§goto(addr252);
                                    }
                                    else
                                    {
                                       §§goto(addr208);
                                    }
                                 }
                                 else
                                 {
                                    if("RESTART_LEVEL" === _loc2_)
                                    {
                                       if(_loc3_)
                                       {
                                          addr208:
                                          §§push(1);
                                          if(!_loc3_)
                                          {
                                             addr247:
                                          }
                                          §§goto(addr252);
                                       }
                                       else
                                       {
                                          addr229:
                                          §§push(3);
                                          if(_loc3_ || this)
                                          {
                                             §§goto(addr247);
                                          }
                                       }
                                    }
                                    else
                                    {
                                       if("MIGHTY_EAGLE" === _loc2_)
                                       {
                                          if(_loc3_ || this)
                                          {
                                             §§push(2);
                                             if(_loc4_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr229);
                                          }
                                       }
                                       else if("FULLSCREEN_BUTTON" === _loc2_)
                                       {
                                          §§goto(addr229);
                                       }
                                       else
                                       {
                                          §§push(4);
                                       }
                                       §§goto(addr229);
                                    }
                                    §§goto(addr229);
                                 }
                                 addr252:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       dispatchEvent(new §"!4§(§"!4§.§!#B§));
                                       break;
                                       addr110:
                                    case 1:
                                       dispatchEvent(new §"!4§(§"!4§.§@L§,getLevelLoadStateName()));
                                       addr54:
                                       break;
                                       addr100:
                                    case 2:
                                       addr59:
                                       §§push(§4#;§.singleton.dataModel);
                                       if(_loc3_)
                                       {
                                          §§push(§§pop().userProgress);
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop().§=!d§(§+!b§.currentLevel));
                                             if(!_loc4_)
                                             {
                                                if(§§pop())
                                                {
                                                   addr76:
                                                   if(§4#;§.singleton.dataModel.userProgress.§0#9§)
                                                   {
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            this.useMightyEagle();
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr110);
                                                         }
                                                      }
                                                      addr88:
                                                   }
                                                }
                                                break;
                                             }
                                          }
                                       }
                                       §§goto(addr76);
                                    case 3:
                                       §§push(§4#;§.singleton);
                                       if(_loc3_)
                                       {
                                          if(_loc3_ || _loc2_)
                                          {
                                             §§pop().§5"q§();
                                             if(_loc3_)
                                             {
                                                if(_loc3_)
                                                {
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         if(true)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr100);
                                                      }
                                                      §§goto(addr54);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr76);
                                                   }
                                                }
                                                §§goto(addr88);
                                             }
                                             break;
                                          }
                                          §§goto(addr59);
                                       }
                                       §§goto(addr76);
                                 }
                                 return;
                              }
                              §§goto(addr229);
                           }
                           if(!(_loc3_ || _loc3_))
                           {
                              §§goto(addr179);
                           }
                           while(true)
                           {
                              §`"+§.§^U§();
                              addr174:
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop0;
                                 }
                              }
                           }
                        }
                     }
                     if(!(_loc3_ || param1))
                     {
                        §§goto(addr174);
                     }
                  }
                  §§goto(addr101);
               }
            }
            addr179:
            return;
         }
         §§goto(addr172);
      }
   }
}
