package §;"§
{
   import §!""§.§]H§;
   import §%!B§.§0![§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §0!q§.§;!-§;
   import §1![§.§`w§;
   import §2u§.§,6§;
   import §2u§.§]"%§;
   import §9!p§.§?!=§;
   import §;g§.§0!o§;
   import §;g§.§]W§;
   import flash.display.MovieClip;
   
   public class §+`§ extends §?!=§
   {
      
      public static const §%n§:Number = -250;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §%n§ = -250;
         }
      }
      
      protected var §5"3§:§]W§ = null;
      
      protected var §`!;§:§,6§;
      
      protected var §#!l§:MovieClip;
      
      protected var §8!n§:§]"%§;
      
      protected var §;r§:§]"%§;
      
      protected var §`§:§]"%§;
      
      public function §+`§(param1:§,6§, param2:§0![§, param3:§`w§, param4:§+f§)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            super(param1,param2,param3,param4);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §!o§.setVisibility(false);
            loop0:
            while(true)
            {
               this.§`!;§ = §,6§(§!o§.getItemByName("Container_PauseMenu"));
               addr118:
               while(true)
               {
                  this.§`!;§.x = §%n§;
                  addr97:
                  while(!_loc1_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§#!l§ = §!o§.getItemByName("MovieClip_Bg").mClip;
            loop4:
            do
            {
               this.§8!n§ = §]"%§(this.§`!;§.getItemByName("Button_Resume"));
               while(_loc2_)
               {
                  this.§;r§ = §]"%§(this.§`!;§.getItemByName("Button_Menu"));
                  for(; !(_loc1_ && this); this.§`§ = §]"%§(this.§`!;§.getItemByName("Button_Replay")),if(!(_loc1_ && this))
                  {
                     continue loop4;
                  })
                  {
                     if(!_loc1_)
                     {
                        continue;
                     }
                     §§goto(addr118);
                  }
               }
               §§goto(addr97);
            }
            while(!_loc2_);
            
            return;
         }
      }
      
      override protected function refresh() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§4a§.currentLevelNumericName != null)
            {
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.disable(false);
         }
      }
      
      override public function disable(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§7!u§(param1);
         }
         do
         {
            super.disable(param1);
         }
         while(!(_loc2_ || this));
         
      }
      
      override public function enable(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super.enable(param1);
            loop0:
            while(true)
            {
               this.refresh();
               while(true)
               {
                  this.§function§(param1);
                  loop2:
                  while(_loc3_)
                  {
                     while(true)
                     {
                        §@!S§.§2A§.background.§0"1§();
                        if(!(_loc2_ && _loc3_))
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
         §§goto(addr75);
      }
      
      private function §3G§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§5"3§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§5"3§);
                     addr59:
                     while(true)
                     {
                        §§pop().stop();
                        do
                        {
                           this.§5"3§ = null;
                        }
                        while(_loc2_);
                        
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr57:
               }
               return;
            }
            §§goto(addr59);
         }
         §§goto(addr57);
      }
      
      protected function §function§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §!o§.setVisibility(true);
            loop0:
            while(true)
            {
               this.§3G§();
               loop1:
               while(true)
               {
                  §@!S§.pause();
                  while(true)
                  {
                     this.§7!]§(false);
                     addr114:
                     if(!(_loc2_ || this))
                     {
                        continue;
                     }
                     if(_loc3_)
                     {
                        continue loop0;
                     }
                     this.§5"3§ = §0!o§.§,2§.§+!p§(§0!o§.§,2§.§4!t§(this.§`!;§,{"x":0},null,0.25),§0!o§.§,2§.§4!t§(this.§#!l§,{"alpha":1},null,0.25));
                     loop8:
                     while(true)
                     {
                        §§push(this.§5"3§);
                        loop9:
                        while(true)
                        {
                           §§pop().onComplete = this.§>!r§;
                           loop7:
                           while(true)
                           {
                              if(!(_loc3_ && this))
                              {
                                 addr103:
                                 if(_loc3_ && _loc3_)
                                 {
                                    break;
                                 }
                                 §§push(this.§5"3§);
                                 if(!_loc3_)
                                 {
                                    addr76:
                                    §§pop().play();
                                    while(!_loc2_)
                                    {
                                       continue loop7;
                                       §§goto(addr76);
                                    }
                                    addr24:
                                    return;
                                    addr77:
                                 }
                                 continue loop9;
                              }
                              continue loop8;
                           }
                           addr153:
                           loop3:
                           while(true)
                           {
                              if(!param1)
                              {
                                 this.§`!;§.x = 0;
                                 while(true)
                                 {
                                    this.§#!l§.alpha = 1;
                                    while(!(_loc3_ && param1))
                                    {
                                       this.§>!r§();
                                       if(_loc3_ && param1)
                                       {
                                          continue;
                                       }
                                       if(_loc2_)
                                       {
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             if(_loc2_)
                                             {
                                                break loop3;
                                             }
                                             continue loop1;
                                          }
                                          §§goto(addr114);
                                       }
                                       else
                                       {
                                          §§goto(addr77);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr114);
                              §§goto(addr103);
                           }
                           §§goto(addr24);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr153);
      }
      
      protected function §>!r§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§3G§();
            do
            {
               §!o§.addEventListener(§]H§.§59§,this.onUIInteraction);
               do
               {
                  this.§7!]§(true);
               }
               while(!(_loc2_ || _loc1_));
               
            }
            while(!_loc2_);
            
         }
      }
      
      protected function §7!]§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§8!n§.setEnabled(param1);
            while(true)
            {
               this.§`§.setEnabled(param1);
               while(_loc2_ || param1)
               {
                  this.§;r§.setEnabled(param1);
                  if(_loc3_ && this)
                  {
                     continue;
                  }
                  return;
                  addr50:
               }
            }
         }
         §§goto(addr50);
      }
      
      protected function §8#§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§8!n§.setComponentVisualState(param1);
            while(true)
            {
               this.§`§.setComponentVisualState(param1);
               loop1:
               while(_loc3_ || param1)
               {
                  while(true)
                  {
                     this.§;r§.setComponentVisualState(param1);
                     if(_loc3_ || this)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr69);
      }
      
      protected function §7!u§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §!o§.removeEventListener(§]H§.§59§,this.onUIInteraction);
            while(true)
            {
               this.§3G§();
               addr43:
               if(_loc2_ && _loc3_)
               {
                  continue;
               }
               §§goto(addr25);
            }
         }
         loop1:
         do
         {
            if(param1)
            {
               continue;
            }
            addr140:
            this.§`!;§.x = §%n§;
            loop2:
            while(true)
            {
               if(!(_loc3_ || _loc3_))
               {
                  continue loop1;
               }
               this.§#!l§.alpha = 0;
               loop3:
               while(true)
               {
                  if(_loc3_ || this)
                  {
                     continue;
                  }
                  addr102:
                  loop6:
                  while(true)
                  {
                     if(_loc2_ && _loc2_)
                     {
                        break loop2;
                        addr109:
                     }
                     §§push(this.§5"3§);
                     if(_loc3_)
                     {
                        addr94:
                        §§pop().play();
                        break loop3;
                     }
                     addr99:
                     while(true)
                     {
                        §§pop().onComplete = this.§]r§;
                        continue loop6;
                        §§goto(addr109);
                     }
                     §§goto(addr94);
                  }
               }
               addr25:
               return;
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               if(_loc3_)
               {
                  §§goto(addr43);
               }
               else
               {
                  §§goto(addr95);
               }
            }
            while(true)
            {
               §§goto(addr99);
               §§goto(addr102);
            }
         }
         while(_loc2_);
         
         this.§5"3§ = §0!o§.§,2§.§+!p§(§0!o§.§,2§.§4!t§(this.§`!;§,{"x":§%n§},null,0.25),§0!o§.§,2§.§4!t§(this.§#!l§,{"alpha":0},null,0.25));
         §§goto(addr140);
      }
      
      protected function §]r§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §!o§.setVisibility(false);
            loop0:
            while(true)
            {
               this.§3G§();
               while(true)
               {
                  dispatchEvent(new §;!-§(§;!-§.§3!w§));
                  loop2:
                  while(!_loc1_)
                  {
                     continue loop0;
                     while(true)
                     {
                        §@!S§.resume();
                        if(!_loc1_)
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
         §§goto(addr66);
      }
      
      protected function onUIInteraction(param1:§]H§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            if(§4R§)
            {
               if(_loc3_)
               {
                  §§goto(addr89);
               }
            }
            var _loc2_:* = param1.§4o§;
            if(_loc3_ || _loc3_)
            {
               if("RESTART_LEVEL" === _loc2_)
               {
                  if(!_loc4_)
                  {
                     addr109:
                     §§push(0);
                     if(_loc4_)
                     {
                        addr131:
                     }
                  }
                  else
                  {
                     addr123:
                     §§push(1);
                     if(_loc3_ || _loc2_)
                     {
                        §§goto(addr131);
                     }
                  }
               }
               else
               {
                  if("RESUME_LEVEL" === _loc2_)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        §§goto(addr123);
                     }
                  }
                  else if("MENU" !== _loc2_)
                  {
                     addr153:
                     switch(§§pop())
                     {
                        case 0:
                           dispatchEvent(new §;!-§(§;!-§.§,d§,§5!B§()));
                           if(!(_loc4_ && this))
                           {
                              addr39:
                              break;
                           }
                           break;
                        case 1:
                           dispatchEvent(new §;!-§(§;!-§.RESUME_LEVEL));
                           if(!(_loc4_ && this))
                           {
                              break;
                           }
                           break;
                        case 2:
                           dispatchEvent(new §;!-§(§;!-§.§,d§,§@f§()));
                           if(!_loc4_)
                           {
                              if(true)
                              {
                                 break;
                              }
                              §§goto(addr39);
                           }
                     }
                     return;
                     §§push(3);
                  }
                  §§goto(addr153);
                  if(_loc4_)
                  {
                  }
               }
               §§goto(addr153);
            }
            §§goto(addr109);
         }
         addr89:
      }
   }
}
