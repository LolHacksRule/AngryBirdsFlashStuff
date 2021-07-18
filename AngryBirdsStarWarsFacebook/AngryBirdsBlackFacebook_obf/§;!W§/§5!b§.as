package §;!W§
{
   import §+D§.§ #^§;
   import §+D§.§^"m§;
   import §,"N§.§@>§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §<w§.§6#'§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §`"%§.§"!4§;
   import com.angrybirds.§,!q§;
   import flash.display.MovieClip;
   
   public class §5!b§ extends §[!§
   {
      
      public static const §9k§:Number = -250;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §9k§ = -250;
         }
      }
      
      protected var §@!`§:§[#R§ = null;
      
      protected var §=!6§:§ #^§;
      
      protected var §<h§:MovieClip;
      
      protected var §<"6§:§^"m§;
      
      protected var §^W§:§^"m§;
      
      protected var §^"^§:§^"m§;
      
      public function §5!b§(param1:§ #^§, param2:§+"2§, param3:§@>§, param4:§5"H§)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            super(param1,param2,param3,param4);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §=#=§.setVisibility(false);
            loop0:
            while(true)
            {
               this.§=!6§ = § #^§(§=#=§.getItemByName("Container_PauseMenu"));
               while(true)
               {
                  this.§=!6§.x = §9k§;
                  continue loop0;
                  addr41:
                  if(_loc1_ || _loc1_)
                  {
                     return;
                     addr48:
                  }
               }
            }
         }
         loop3:
         while(true)
         {
            this.§<"6§ = §^"m§(this.§=!6§.getItemByName("Button_Resume"));
            loop4:
            while(!_loc2_)
            {
               this.§^W§ = §^"m§(this.§=!6§.getItemByName("Button_Menu"));
               while(_loc1_)
               {
                  this.§^"^§ = §^"m§(this.§=!6§.getItemByName("Button_Replay"));
                  if(_loc2_)
                  {
                     continue;
                  }
                  if(!_loc1_)
                  {
                     continue loop4;
                  }
                  §§goto(addr41);
               }
               continue loop3;
            }
            §§goto(addr96);
         }
         §§goto(addr48);
      }
      
      override protected function refresh() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(§+!b§.currentLevelNumericName != null)
            {
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.disable(false);
         }
      }
      
      override public function disable(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§8!@§(param1);
         }
         do
         {
            super.disable(param1);
         }
         while(_loc3_);
         
      }
      
      override public function enable(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            super.enable(param1);
            while(true)
            {
               this.refresh();
               §§goto(addr65);
            }
         }
         addr65:
         while(true)
         {
            this.§3!q§(param1);
            if(_loc2_ || param1)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §8!m§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§@!`§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr69:
                     this.§@!`§.stop();
                  }
                  do
                  {
                     this.§@!`§ = null;
                  }
                  while(!(_loc1_ || _loc1_));
                  
               }
               return;
            }
         }
         §§goto(addr69);
      }
      
      protected function §3!q§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §=#=§.setVisibility(true);
            loop0:
            while(true)
            {
               this.§8!m§();
               while(true)
               {
                  §,!q§.pause();
                  loop2:
                  while(!(_loc3_ && _loc2_))
                  {
                     this.§;"]§(false);
                     loop3:
                     for(; !_loc3_; while(true)
                     {
                        if(_loc3_ && _loc2_)
                        {
                           continue loop3;
                        }
                        §§goto(addr93);
                        §§push(this.§@!`§);
                     })
                     {
                        loop4:
                        while(true)
                        {
                           if(param1)
                           {
                              if(!_loc3_)
                              {
                                 this.§@!`§ = §-#C§.§%!E§.§^$§(§-#C§.§%!E§.§^!H§(this.§=!6§,{"x":0},null,0.25),§-#C§.§%!E§.§^!H§(this.§<h§,{"alpha":1},null,0.25));
                              }
                              continue loop3;
                           }
                           this.§=!6§.x = 0;
                           while(!(_loc3_ && this))
                           {
                              this.§<h§.alpha = 1;
                              while(_loc2_ || _loc2_)
                              {
                                 this.§ "6§();
                                 if(_loc2_ || this)
                                 {
                                    if(_loc2_)
                                    {
                                       break loop4;
                                    }
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          if(_loc2_)
                                          {
                                             break loop4;
                                          }
                                          continue loop2;
                                       }
                                       continue loop3;
                                       addr74:
                                       §§pop().play();
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(this.§@!`§);
                              if(!_loc2_)
                              {
                                 continue;
                              }
                              §§goto(addr74);
                           }
                        }
                        return;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr141);
      }
      
      protected function § "6§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§8!m§();
            while(true)
            {
               §=#=§.addEventListener(§6#'§.§+!>§,this.onUIInteraction);
               while(!(_loc2_ && this))
               {
                  this.§;"]§(true);
                  if(!(_loc1_ || this))
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
      
      protected function §;"]§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§<"6§.setEnabled(param1);
            while(true)
            {
               this.§^"^§.setEnabled(param1);
               while(!_loc2_)
               {
                  this.§^W§.setEnabled(param1);
                  if(_loc3_)
                  {
                     return;
                     addr41:
                  }
               }
            }
         }
         §§goto(addr41);
      }
      
      protected function §0"v§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§<"6§.setComponentVisualState(param1);
            do
            {
               this.§^"^§.setComponentVisualState(param1);
               do
               {
                  this.§^W§.setComponentVisualState(param1);
               }
               while(_loc2_);
               
            }
            while(!_loc3_);
            
         }
      }
      
      protected function §8!@§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §=#=§.removeEventListener(§6#'§.§+!>§,this.onUIInteraction);
            loop0:
            while(true)
            {
               this.§8!m§();
               loop1:
               while(true)
               {
                  if(param1)
                  {
                     continue loop0;
                  }
                  addr50:
                  this.§=!6§.x = §9k§;
                  while(true)
                  {
                     this.§<h§.alpha = 0;
                     addr38:
                     while(!_loc3_)
                     {
                        if(_loc2_)
                        {
                           continue;
                        }
                        while(true)
                        {
                           §§push(this.§@!`§);
                           loop5:
                           while(true)
                           {
                              §§pop().onComplete = this.§;!§;
                              addr81:
                              while(true)
                              {
                                 if(_loc3_ && _loc2_)
                                 {
                                    break loop5;
                                 }
                                 continue loop5;
                              }
                           }
                           continue loop0;
                           addr99:
                           this.§@!`§ = §-#C§.§%!E§.§^$§(§-#C§.§%!E§.§^!H§(this.§=!6§,{"x":§9k§},null,0.25),§-#C§.§%!E§.§^!H§(this.§<h§,{"alpha":0},null,0.25));
                        }
                     }
                     continue loop1;
                  }
               }
               §§goto(addr19);
            }
         }
         while(true)
         {
            this.§;!§();
            if(!_loc3_)
            {
               if(!_loc3_)
               {
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§goto(addr81);
               }
               §§goto(addr50);
            }
            §§goto(addr38);
         }
         addr19:
      }
      
      protected function §;!§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §=#=§.setVisibility(false);
            loop0:
            while(true)
            {
               this.§8!m§();
               while(true)
               {
                  dispatchEvent(new §"!4§(§"!4§.§ z§));
                  continue loop0;
                  addr44:
                  if(_loc2_ || _loc2_)
                  {
                     return;
                     addr51:
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      protected function onUIInteraction(param1:§6#'§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(§]"u§)
            {
               if(!(_loc4_ && _loc3_))
               {
                  §§goto(addr89);
               }
            }
            var _loc2_:* = param1.§=!k§;
            if(_loc3_ || this)
            {
               if("RESTART_LEVEL" === _loc2_)
               {
                  if(_loc3_ || _loc2_)
                  {
                     §§push(0);
                     if(!_loc3_)
                     {
                        addr131:
                     }
                  }
                  else
                  {
                     addr135:
                     §§push(2);
                     if(!_loc3_)
                     {
                     }
                  }
                  §§goto(addr153);
               }
               else
               {
                  if("RESUME_LEVEL" !== _loc2_)
                  {
                     if("MENU" === _loc2_)
                     {
                        §§goto(addr135);
                     }
                     else
                     {
                        §§push(3);
                     }
                     addr153:
                     switch(§§pop())
                     {
                        case 0:
                           dispatchEvent(new §"!4§(§"!4§.§@L§,getLevelLoadStateName()));
                           addr46:
                           break;
                           addr69:
                        case 1:
                           dispatchEvent(new §"!4§(§"!4§.RESUME_LEVEL));
                           if(_loc3_)
                           {
                              break;
                           }
                           break;
                        case 2:
                           dispatchEvent(new §"!4§(§"!4§.§@L§,getLevelSelectionStateName()));
                           if(_loc3_ || this)
                           {
                              if(!(_loc4_ && this))
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 §§goto(addr69);
                              }
                              §§goto(addr46);
                           }
                     }
                     return;
                  }
                  if(_loc3_ || _loc2_)
                  {
                     addr128:
                     §§push(1);
                     if(!_loc4_)
                     {
                        §§goto(addr131);
                     }
                  }
                  else
                  {
                     §§goto(addr135);
                  }
                  §§goto(addr153);
               }
               §§goto(addr135);
            }
            §§goto(addr128);
         }
         addr89:
      }
   }
}
