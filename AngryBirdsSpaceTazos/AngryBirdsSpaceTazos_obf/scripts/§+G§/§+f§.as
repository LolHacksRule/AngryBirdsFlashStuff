package §+G§
{
   import §!?§.§=!_§;
   import §%!r§.§3!'§;
   import §+u§.§`v§;
   import §,"&§.§9q§;
   import §77§.§ ",§;
   import §77§.§@_§;
   import §<W§.§]"+§;
   import §=u§.§!D§;
   import §=u§.§5!9§;
   import §^8§.§#h§;
   import §`!j§.§9"!§;
   import flash.display.MovieClip;
   
   public class §+f§ extends §`v§
   {
      
      public static const §&!Q§:Number = -250;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §&!Q§ = -250;
         }
      }
      
      protected var §0"F§:§5!9§ = null;
      
      protected var §,#§:§ ",§;
      
      protected var §5y§:MovieClip;
      
      protected var §;!@§:§@_§;
      
      protected var §-!a§:§@_§;
      
      protected var §0E§:§@_§;
      
      public function §+f§(param1:§ ",§, param2:§9"!§, param3:§=!_§, param4:§3!'§)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super(param1,param2,param3,param4);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §,!w§.setVisibility(false);
         }
         loop0:
         while(true)
         {
            this.§,#§ = § ",§(§,!w§.getItemByName("Container_PauseMenu"));
            loop1:
            while(true)
            {
               this.§,#§.x = §&!Q§;
               loop2:
               while(true)
               {
                  this.§5y§ = §,!w§.getItemByName("MovieClip_Bg").mClip;
                  loop3:
                  while(_loc1_)
                  {
                     this.§;!@§ = §@_§(this.§,#§.getItemByName("Button_Resume"));
                     while(_loc1_)
                     {
                        continue loop1;
                        this.§-!a§ = §@_§(this.§,#§.getItemByName("Button_Menu"));
                        do
                        {
                           this.§0E§ = §@_§(this.§,#§.getItemByName("Button_Replay"));
                        }
                        while(_loc2_ && _loc2_);
                        
                        if(!_loc2_)
                        {
                           if(!_loc2_)
                           {
                              return;
                           }
                           continue loop3;
                        }
                     }
                     continue loop2;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      override protected function refresh() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(§6u§.currentLevelNumericName != null)
            {
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
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
            this.§,D§(param1);
         }
         do
         {
            super.disable(param1);
         }
         while(_loc3_);
         
      }
      
      override public function enable(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.enable(param1);
         }
         loop0:
         do
         {
            this.refresh();
            while(true)
            {
               this.§>@§(param1);
               while(_loc3_ || _loc3_)
               {
                  §9q§.§>!L§.background.stopAmbientSound();
                  if(_loc3_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!_loc3_);
         
      }
      
      private function §=a§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§0"F§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || this)
                  {
                     addr70:
                     this.§0"F§.stop();
                     do
                     {
                        this.§0"F§ = null;
                     }
                     while(!(_loc2_ || _loc2_));
                     
                     addr71:
                  }
                  §§goto(addr71);
               }
               return;
            }
         }
         §§goto(addr70);
      }
      
      protected function §>@§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §,!w§.setVisibility(true);
            loop0:
            while(true)
            {
               this.§=a§();
               loop1:
               while(true)
               {
                  §9q§.pause();
                  loop2:
                  while(true)
                  {
                     this.§!"%§(false);
                     loop3:
                     while(!_loc3_)
                     {
                        if(param1)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              this.§0"F§ = §!D§.§[!1§.§"!D§(§!D§.§[!1§.§1"<§(this.§,#§,{"x":0},null,0.25),§!D§.§[!1§.§1"<§(this.§5y§,{"alpha":1},null,0.25));
                           }
                           §§push(this.§0"F§);
                           while(true)
                           {
                              §§pop().onComplete = this.§#!t§;
                              addr100:
                              §§push(this.§0"F§);
                              if(_loc3_)
                              {
                                 continue;
                              }
                              §§pop().play();
                              addr24:
                              return;
                              addr91:
                           }
                           continue loop2;
                           addr136:
                           addr95:
                        }
                        else
                        {
                           this.§,#§.x = 0;
                           loop4:
                           while(_loc2_ || _loc3_)
                           {
                              if(_loc2_)
                              {
                                 continue loop0;
                              }
                              continue loop3;
                              while(true)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    if(_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr136);
                                    }
                                    break;
                                 }
                                 continue loop4;
                              }
                              §§goto(addr91);
                           }
                        }
                        while(true)
                        {
                           if(_loc3_)
                           {
                              continue loop2;
                           }
                           §§goto(addr100);
                           §§goto(addr95);
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr55);
      }
      
      protected function §#!t§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§=a§();
            while(true)
            {
               §,!w§.addEventListener(§]"+§.§`!C§,this.onUIInteraction);
               loop1:
               while(_loc2_ || _loc1_)
               {
                  while(true)
                  {
                     this.§!"%§(true);
                     if(!_loc1_)
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
      
      protected function §!"%§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§;!@§.setEnabled(param1);
         }
         while(true)
         {
            this.§0E§.setEnabled(param1);
            while(!(_loc2_ && this))
            {
               this.§-!a§.setEnabled(param1);
               if(!(_loc2_ && _loc3_))
               {
                  return;
               }
            }
         }
      }
      
      protected function §-!'§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§;!@§.setComponentVisualState(param1);
         }
         do
         {
            this.§0E§.setComponentVisualState(param1);
            do
            {
               this.§-!a§.setComponentVisualState(param1);
            }
            while(_loc3_);
            
         }
         while(!_loc2_);
         
      }
      
      protected function §,D§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §,!w§.removeEventListener(§]"+§.§`!C§,this.onUIInteraction);
            while(true)
            {
               this.§=a§();
               addr92:
               if(!(_loc3_ || this))
               {
                  continue;
               }
               §§push(this.§0"F§);
               if(_loc3_ || _loc3_)
               {
                  addr65:
                  loop4:
                  while(_loc2_)
                  {
                     while(_loc3_ || this)
                     {
                        §§goto(addr92);
                     }
                     loop1:
                     while(true)
                     {
                        if(param1)
                        {
                           if(!_loc2_)
                           {
                              this.§0"F§ = §!D§.§[!1§.§"!D§(§!D§.§[!1§.§1"<§(this.§,#§,{"x":§&!Q§},null,0.25),§!D§.§[!1§.§1"<§(this.§5y§,{"alpha":0},null,0.25));
                           }
                        }
                        else
                        {
                           this.§,#§.x = §&!Q§;
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 this.§5y§.alpha = 0;
                                 while(!_loc2_)
                                 {
                                    this.§1C§();
                                    if(_loc3_)
                                    {
                                       if(!(_loc2_ && param1))
                                       {
                                          break loop1;
                                       }
                                       §§goto(addr65);
                                       continue loop4;
                                    }
                                 }
                                 continue;
                              }
                           }
                           while(true)
                           {
                              §§pop().onComplete = this.§1C§;
                              continue loop1;
                           }
                           addr82:
                        }
                     }
                     addr85:
                     return;
                  }
                  §§pop().play();
                  §§goto(addr20);
               }
               §§goto(addr82);
            }
         }
         §§goto(addr144);
      }
      
      protected function §1C§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §,!w§.setVisibility(false);
            loop0:
            while(true)
            {
               this.§=a§();
               while(true)
               {
                  dispatchEvent(new §#h§(§#h§.§ C§));
                  loop2:
                  while(!(_loc2_ && _loc1_))
                  {
                     continue loop0;
                     while(true)
                     {
                        §9q§.resume();
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      protected function onUIInteraction(param1:§]"+§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(§>!-§)
            {
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr84);
               }
            }
            var _loc2_:* = param1.§9X§;
            if(_loc3_)
            {
               if("RESTART_LEVEL" === _loc2_)
               {
                  if(!_loc4_)
                  {
                     §§push(0);
                     if(!_loc3_)
                     {
                        addr116:
                     }
                  }
                  else
                  {
                     addr120:
                     §§push(2);
                     if(!(_loc4_ && param1))
                     {
                        addr138:
                     }
                  }
                  §§goto(addr143);
               }
               else
               {
                  if("RESUME_LEVEL" !== _loc2_)
                  {
                     if("MENU" === _loc2_)
                     {
                        §§goto(addr120);
                     }
                     else
                     {
                        §§push(3);
                     }
                     addr143:
                     switch(§§pop())
                     {
                        case 0:
                           dispatchEvent(new §#h§(§#h§.§&C§,§`!e§()));
                           addr43:
                           break;
                           addr64:
                        case 1:
                           dispatchEvent(new §#h§(§#h§.RESUME_LEVEL));
                           break;
                           addr52:
                        case 2:
                           dispatchEvent(new §#h§(§#h§.§&C§,§?!I§()));
                           if(_loc3_ || _loc3_)
                           {
                              if(!_loc4_)
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
                                    §§goto(addr64);
                                 }
                                 §§goto(addr43);
                              }
                              else
                              {
                                 §§goto(addr52);
                              }
                           }
                     }
                     return;
                  }
                  if(_loc3_)
                  {
                     addr108:
                     §§push(1);
                     if(_loc3_ || param1)
                     {
                        §§goto(addr116);
                     }
                     else
                     {
                        §§goto(addr138);
                     }
                  }
                  else
                  {
                     §§goto(addr120);
                  }
                  §§goto(addr143);
               }
               §§goto(addr120);
            }
            §§goto(addr108);
         }
         addr84:
      }
   }
}
