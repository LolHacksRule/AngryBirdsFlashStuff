package § "p§
{
   import §+D§.§ #^§;
   import §+D§.§^"m§;
   import §,"N§.§@>§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §;!W§.§[!§;
   import §<w§.§6#'§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §`"%§.§"!4§;
   import com.angrybirds.§,!q§;
   import flash.display.MovieClip;
   
   public class §2!Y§ extends §[!§
   {
      
      public static const §9k§:Number = -250;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
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
      
      public function §2!Y§(param1:§ #^§, param2:§+"2§, param3:§@>§, param4:§5"H§)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super(param1,param2,param3,param4);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §=#=§.setVisibility(false);
            loop0:
            while(true)
            {
               this.§=!6§ = § #^§(§=#=§.getItemByName("Container_PauseMenu"));
               while(true)
               {
                  this.§=!6§.x = §9k§;
                  while(!_loc2_)
                  {
                     this.§<h§ = §=#=§.getItemByName("MovieClip_Bg").mClip;
                     loop3:
                     while(_loc1_ || _loc1_)
                     {
                        while(true)
                        {
                           this.§<"6§ = §^"m§(this.§=!6§.getItemByName("Button_Resume"));
                           loop5:
                           while(true)
                           {
                              this.§^W§ = §^"m§(this.§=!6§.getItemByName("Button_Menu"));
                              while(true)
                              {
                                 if(_loc1_)
                                 {
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop5;
                              }
                              continue loop3;
                           }
                        }
                        return;
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr90);
      }
      
      override protected function refresh() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
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
         if(!_loc2_)
         {
            this.disable(false);
         }
      }
      
      override public function disable(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§8!@§(param1);
         }
         do
         {
            super.disable(param1);
         }
         while(_loc2_);
         
      }
      
      override public function enable(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super.enable(param1);
            while(true)
            {
               this.refresh();
               while(!_loc3_)
               {
                  this.§3!q§(param1);
                  while(!(_loc3_ && param1))
                  {
                     §,!q§.§9!,§.background.stopAmbientSound();
                     if(_loc2_ || this)
                     {
                        return;
                        addr50:
                     }
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      private function §8!m§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§@!`§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§@!`§);
                     addr75:
                     while(true)
                     {
                        §§pop().stop();
                        do
                        {
                           this.§@!`§ = null;
                        }
                        while(_loc1_ && _loc1_);
                        
                        if(_loc2_ || _loc1_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr73:
               }
               return;
            }
            §§goto(addr75);
         }
         §§goto(addr73);
      }
      
      protected function §3!q§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §=#=§.setVisibility(true);
            while(true)
            {
               this.§8!m§();
               loop1:
               for(; !(_loc2_ && _loc3_); if(!(_loc3_ || param1))
               {
                  continue;
               },§§goto(addr63))
               {
                  §,!q§.pause();
                  while(true)
                  {
                     this.§;"]§(false);
                     loop3:
                     for(; _loc3_; if(_loc2_ && param1)
                     {
                        continue;
                     },§§goto(addr104),§§push(this.§@!`§))
                     {
                        if(!param1)
                        {
                           this.§=!6§.x = 0;
                           loop4:
                           while(!(_loc2_ && this))
                           {
                              this.§<h§.alpha = 1;
                              loop5:
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    if(!(_loc3_ || param1))
                                    {
                                       break;
                                    }
                                    if(_loc3_ || _loc2_)
                                    {
                                       continue loop1;
                                    }
                                    continue loop3;
                                 }
                                 continue loop4;
                                 addr63:
                                 while(true)
                                 {
                                    this.§ "6§();
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§goto(addr20);
                                    }
                                    continue loop5;
                                 }
                              }
                              addr107:
                              §§push(this.§@!`§);
                              if(!(_loc3_ || _loc2_))
                              {
                                 addr104:
                                 §§pop().onComplete = this.§ "6§;
                                 §§goto(addr107);
                              }
                              §§pop().play();
                              break;
                           }
                        }
                        if(!(_loc2_ && _loc2_))
                        {
                           this.§@!`§ = §-#C§.§%!E§.§^$§(§-#C§.§%!E§.§^!H§(this.§=!6§,{"x":0},null,0.25),§-#C§.§%!E§.§^!H§(this.§<h§,{"alpha":1},null,0.25));
                        }
                        continue;
                        addr20:
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      protected function § "6§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§8!m§();
         }
         do
         {
            §=#=§.addEventListener(§6#'§.§+!>§,this.onUIInteraction);
            do
            {
               this.§;"]§(true);
            }
            while(!_loc1_);
            
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      protected function §;"]§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§<"6§.setEnabled(param1);
         }
         do
         {
            this.§^"^§.setEnabled(param1);
            do
            {
               this.§^W§.setEnabled(param1);
            }
            while(!(_loc3_ || _loc3_));
            
         }
         while(!_loc3_);
         
      }
      
      protected function §0"v§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§<"6§.setComponentVisualState(param1);
            do
            {
               this.§^"^§.setComponentVisualState(param1);
               do
               {
                  this.§^W§.setComponentVisualState(param1);
               }
               while(!(_loc2_ || _loc3_));
               
            }
            while(_loc3_ && this);
            
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
               do
               {
                  if(param1)
                  {
                     if(!_loc3_)
                     {
                        while(true)
                        {
                           this.§@!`§ = §-#C§.§%!E§.§^$§(§-#C§.§%!E§.§^!H§(this.§=!6§,{"x":§9k§},null,0.25),§-#C§.§%!E§.§^!H§(this.§<h§,{"alpha":0},null,0.25));
                        }
                        addr102:
                     }
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                        §§push(this.§@!`§);
                        while(true)
                        {
                           §§pop().onComplete = this.§;!§;
                        }
                     }
                     addr127:
                  }
                  else
                  {
                     this.§=!6§.x = §9k§;
                     loop2:
                     while(true)
                     {
                        this.§<h§.alpha = 0;
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              if(!(_loc2_ || _loc3_))
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                  }
                  while(true)
                  {
                     if(!(_loc3_ && this))
                     {
                        §§push(this.§@!`§);
                        if(!_loc3_)
                        {
                           §§pop().play();
                           continue loop1;
                        }
                        continue;
                     }
                     §§goto(addr127);
                  }
                  continue loop0;
               }
               while(!_loc2_);
               
               §§goto(addr19);
            }
         }
         §§goto(addr102);
      }
      
      protected function §;!§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §=#=§.setVisibility(false);
            while(true)
            {
               this.§8!m§();
               while(!(_loc2_ && this))
               {
                  dispatchEvent(new §"!4§(§"!4§.§ z§));
                  while(!(_loc2_ && _loc2_))
                  {
                     §,!q§.resume();
                     if(!_loc1_)
                     {
                        continue;
                     }
                     return;
                     addr43:
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      protected function onUIInteraction(param1:§6#'§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            if(§]"u§)
            {
               if(!_loc3_)
               {
                  return;
               }
               addr91:
            }
            var _loc2_:* = param1.§=!k§;
            if(!(_loc3_ && param1))
            {
               if("RESTART_LEVEL" === _loc2_)
               {
                  if(_loc4_ || param1)
                  {
                     §§push(0);
                     if(_loc4_ || _loc3_)
                     {
                     }
                  }
                  else
                  {
                     addr134:
                     §§push(1);
                     if(_loc4_ || param1)
                     {
                     }
                  }
               }
               else
               {
                  if("RESUME_LEVEL" === _loc2_)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        §§goto(addr134);
                     }
                  }
                  else if("MENU" !== _loc2_)
                  {
                     addr164:
                     switch(§§pop())
                     {
                        case 0:
                           dispatchEvent(new §"!4§(§"!4§.§@L§,getLevelLoadStateName()));
                           addr47:
                           break;
                           addr85:
                        case 1:
                           dispatchEvent(new §"!4§(§"!4§.RESUME_LEVEL));
                           addr56:
                           if(_loc4_ || _loc2_)
                           {
                              break;
                           }
                           §§goto(addr85);
                           break;
                        case 2:
                           dispatchEvent(new §"!4§(§"!4§.§@L§,getLevelSelectionStateName()));
                           if(_loc4_ || param1)
                           {
                              if(_loc4_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 §§goto(addr56);
                              }
                              §§goto(addr47);
                           }
                     }
                     return;
                     §§push(3);
                  }
                  §§goto(addr164);
                  if(!_loc4_)
                  {
                  }
               }
               §§goto(addr164);
            }
            §§goto(addr134);
         }
         §§goto(addr91);
      }
   }
}
