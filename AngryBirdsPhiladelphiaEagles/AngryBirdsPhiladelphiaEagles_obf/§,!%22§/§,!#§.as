package §,!"§
{
   import §"U§.§[Q§;
   import §'!O§.§'!#§;
   import §6v§.§`M§;
   import §8!B§.§#! §;
   import §?#§.§1!;§;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import §`K§.§ L§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §,!#§ extends §'!#§
   {
      
      public static const §-A§:String = "CreditsState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §-A§ = "CreditsState";
         }
      }
      
      protected var §4!I§:§1!;§ = null;
      
      private var §"q§:Boolean;
      
      private var §<>§:Number;
      
      private var §,!L§:Number;
      
      private var §'W§:Number;
      
      private var §-!!§:Number;
      
      private var §^X§:Number;
      
      public function §,!#§(param1:Boolean = false, param2:String = "CreditsState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.init();
            while(true)
            {
               §0q§ = new §`o§(this);
               while(true)
               {
                  §0q§.init(§`Z§.§5c§.Views.View_Credits[0]);
                  §§goto(addr77);
               }
            }
         }
         addr77:
         while(true)
         {
            this.§4!I§ = new §1!;§(§#! §.§`'§);
            if(!(_loc1_ && this))
            {
               if(!_loc1_)
               {
                  if(_loc2_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         super.activate();
         this.§^X§ = (§0q§.getItemByName("Container_Credits") as §[Q§).height + §#! §.§5!9§ * §#! §.§+!E§;
         §§push(this);
         §§push(this.§^X§);
         if(_loc4_ || _loc3_)
         {
            §§push(-§§pop());
         }
         §§pop().§-!!§ = §§pop();
         §#! §.§`'§.§^!6§(true);
         loop0:
         while(true)
         {
            §#! §.resume();
            do
            {
               §#! §.§;]§(this.§4!I§);
            }
            while(_loc3_ && _loc2_);
            
            this.§4!I§.init();
            loop2:
            while(true)
            {
               this.§[5§();
               while(true)
               {
                  if(!(_loc3_ && _loc1_))
                  {
                     continue loop0;
                  }
                  continue loop2;
                  loop5:
                  while(!(_loc3_ && _loc3_))
                  {
                     this.§,!L§ = 0;
                     if(!_loc4_)
                     {
                        continue;
                     }
                     addr24:
                     if(false)
                     {
                        while(true)
                        {
                           this.§<>§ = 0;
                           continue loop5;
                           §§goto(addr24);
                        }
                        addr172:
                        §§push(§ L§.§;!+§);
                        if(_loc4_)
                        {
                           §§push(§§pop());
                        }
                        addr26:
                     }
                     else
                     {
                        §§goto(addr172);
                     }
                     var _loc1_:* = §§pop();
                     §§push(_loc1_);
                     if(!_loc3_)
                     {
                        §§push(§§pop().slice(_loc1_.search("Server:"),_loc1_.length));
                     }
                     var _loc2_:* = §§pop();
                     if(_loc4_ || _loc3_)
                     {
                        §§push(_loc1_);
                        if(!_loc3_)
                        {
                           §§push(§§pop().slice(0,_loc1_.search("Server:")));
                        }
                        _loc1_ = §§pop();
                        §0q§.setText(_loc1_,"TextField_Version_Number");
                        addr247:
                     }
                     §0q§.setText(_loc2_,"TextField_Version_Number_Server");
                     if(_loc4_ || _loc3_)
                     {
                        if(_loc3_ && _loc1_)
                        {
                           §§goto(addr247);
                        }
                        return;
                     }
                     addr236:
                     §§goto(addr236);
                  }
               }
               continue loop0;
            }
         }
      }
      
      protected function §[5§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            AngryBirdsFP11.§[5§();
         }
      }
      
      private function §!!C§(param1:MouseEvent) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(§0q§.stage.mouseX < §0q§.stage.width - 180)
            {
               if(!(_loc3_ && this))
               {
                  addr59:
                  §§push(true);
                  if(_loc2_ || _loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr68:
                  return false;
               }
               return §§pop();
            }
            §§goto(addr68);
         }
         §§goto(addr59);
      }
      
      private function §-B§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§"q§);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§!!C§(param1));
                     §§goto(addr169);
                  }
                  addr166:
               }
               return;
            }
            addr169:
            while(§§pop())
            {
               §§push(this.§'W§);
               if(!(_loc3_ && param1))
               {
                  §§push(§§pop() - §0q§.stage.mouseY);
               }
               loop1:
               while(true)
               {
                  §§push(0);
                  addr112:
                  while(true)
                  {
                     if(§§pop() > §§pop())
                     {
                        if(_loc2_ || param1)
                        {
                           if(_loc3_ && _loc3_)
                           {
                              continue loop3;
                           }
                           §§push(this);
                           §§push(this.§'W§);
                           if(_loc2_ || this)
                           {
                              §§push(§§pop() - §0q§.stage.mouseY);
                           }
                           §§pop().§<>§ = §§pop();
                        }
                        this.§'W§ = §0q§.stage.mouseY;
                        break;
                        addr152:
                     }
                     continue loop1;
                  }
               }
               continue loop3;
            }
            this.§"q§ = false;
            return;
         }
         §§goto(addr166);
      }
      
      private function §1!5§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§!!C§(param1));
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr72:
                     if(!§#! §.isPaused)
                     {
                        if(_loc2_ || this)
                        {
                        }
                        do
                        {
                           this.§'W§ = §0q§.stage.mouseY;
                        }
                        while(_loc3_);
                        
                        addr24:
                        return;
                        addr83:
                     }
                     §§goto(addr24);
                  }
                  this.§"q§ = true;
                  §§goto(addr83);
               }
               §§goto(addr24);
            }
            §§goto(addr72);
         }
         §§goto(addr24);
      }
      
      private function §+5§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§"q§ = false;
         }
      }
      
      private function §+S§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§"q§ = false;
         }
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(this.§!!C§(param1))
            {
               if(_loc3_)
               {
                  addr75:
                  if(param1.delta < 0)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        this.§,!L§ = 16;
                     }
                  }
                  else
                  {
                     if(param1.delta > 0)
                     {
                        if(!_loc2_)
                        {
                           if(!(_loc2_ && param1))
                           {
                              this.§,!L§ = -16;
                           }
                           else
                           {
                              addr25:
                              return;
                              addr89:
                           }
                        }
                     }
                     §§goto(addr25);
                  }
                  §§goto(addr25);
               }
               §§goto(addr89);
            }
            §§goto(addr25);
         }
         §§goto(addr75);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(_loc2_);
            if(!(_loc4_ && _loc2_))
            {
               if(§§pop() == §'!#§.STATE_STATUS_RUNNING)
               {
                  if(!§#! §.isPaused)
                  {
                     §#! §.controller.update(param1);
                     loop0:
                     while(true)
                     {
                        (§0q§.getItemByName("Container_Credits") as §[Q§).setVisibility(true);
                        while(true)
                        {
                           this.readyToShowCredits();
                           do
                           {
                              (§0q§.getItemByName("Container_Credits") as §[Q§).y = Math.floor(-this.§-!!§);
                           }
                           while(!(_loc3_ || _loc3_));
                           
                           this.§@5§(param1);
                           if(!(_loc3_ || param1))
                           {
                              break;
                           }
                           addr39:
                           if(!(_loc4_ && _loc2_))
                           {
                              if(!_loc4_)
                              {
                                 §§goto(addr48);
                              }
                              continue loop0;
                           }
                        }
                        §§goto(addr137);
                     }
                  }
                  while(mNextState.length > 0)
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                     §§goto(addr39);
                  }
                  return §'!#§.STATE_STATUS_RUNNING;
               }
               §§goto(addr137);
            }
            addr137:
            return _loc2_;
         }
         addr48:
         return §'!#§.STATE_STATUS_COMPLETED;
      }
      
      protected function readyToShowCredits() : void
      {
      }
      
      private function §@5§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this);
            §§push(this.§-!!§);
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop() + this.§<>§);
            }
            §§pop().§-!!§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this);
               §§push(this.§-!!§);
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop() + this.§,!L§);
               }
               §§pop().§-!!§ = §§pop();
               loop1:
               while(true)
               {
                  §§push(this.§"q§);
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(!§§pop());
                     if(!_loc2_)
                     {
                        addr193:
                        if(§§pop())
                        {
                           loop2:
                           while(true)
                           {
                              §§pop();
                              addr196:
                              while(true)
                              {
                                 §§push(Math.abs(this.§,!L§) < param1 / 15);
                                 addr163:
                                 while(!_loc2_)
                                 {
                                 }
                                 continue loop2;
                              }
                           }
                           addr195:
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(this);
                                 §§push(this.§-!!§);
                                 if(!_loc2_)
                                 {
                                    §§push(param1);
                                    if(!_loc2_)
                                    {
                                       §§push(§§pop() / 15);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§pop().§-!!§ = §§pop();
                                 while(true)
                                 {
                                    addr116:
                                    if(_loc2_ && param1)
                                    {
                                       continue;
                                    }
                                    §§push(this);
                                    §§push(-AngryBirdsFP11.§8!4§);
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§push(§§pop() * §#! §.§+!E§);
                                    }
                                    §§pop().§-!!§ = §§pop();
                                    addr51:
                                    §§push(this.§"q§);
                                    if(_loc3_)
                                    {
                                       if(§§pop())
                                       {
                                          return;
                                       }
                                       if(_loc2_ && param1)
                                       {
                                          §§goto(addr51);
                                          addr153:
                                       }
                                       §§push(this);
                                       §§push(this.§<>§);
                                       if(_loc3_ || this)
                                       {
                                          §§push(§§pop() * 0.9);
                                       }
                                       §§pop().§<>§ = §§pop();
                                       if(_loc3_ || this)
                                       {
                                          if(_loc3_)
                                          {
                                             continue loop0;
                                          }
                                          continue loop1;
                                       }
                                       continue loop4;
                                       addr25:
                                    }
                                    §§goto(addr163);
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(this.§-!!§);
                              loop7:
                              while(true)
                              {
                                 §§push(-AngryBirdsFP11.§8!4§);
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§pop() * §#! §.§+!E§);
                                    while(true)
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          §§push(this.§-!!§);
                                          if(!_loc2_)
                                          {
                                             §§push(this.§^X§);
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                if(!_loc2_)
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      §§goto(addr116);
                                                   }
                                                   break;
                                                }
                                                continue loop8;
                                             }
                                             continue;
                                          }
                                          continue loop7;
                                       }
                                       this.§-!!§ = this.§^X§;
                                       §§goto(addr153);
                                    }
                                    §§goto(addr51);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr195);
                  }
                  §§goto(addr193);
               }
            }
         }
         §§goto(addr196);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §0q§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§-B§);
            loop0:
            while(true)
            {
               §0q§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§1!5§);
               §0q§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§+5§);
               loop1:
               while(true)
               {
                  §0q§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                  do
                  {
                     if(_loc2_ || _loc1_)
                     {
                        continue;
                     }
                     continue loop1;
                  }
                  while(§0q§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§+S§), !(_loc2_ || _loc1_));
                  
                  addr71:
                  while(true)
                  {
                     (§0q§.getItemByName("Container_Credits") as §[Q§).visible = false;
                     while(!_loc1_)
                     {
                        super.deActivate();
                        if(!_loc1_)
                        {
                           return;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_ || this)
         {
            §§push("CREDITS_CLOSE_BUTTON");
            if(_loc6_ || param3)
            {
               §§push(_loc4_);
               if(!(_loc5_ && this))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc6_)
                     {
                        §§push(0);
                        if(_loc5_)
                        {
                        }
                     }
                     else
                     {
                        addr90:
                        §§push(1);
                        if(_loc5_)
                        {
                        }
                     }
                     §§goto(addr98);
                  }
                  else
                  {
                     addr88:
                     §§push("FULLSCREEN_BUTTON");
                     §§push(_loc4_);
                  }
                  §§goto(addr90);
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr90);
               }
               else
               {
                  §§push(2);
               }
               addr98:
               switch(§§pop())
               {
                  case 0:
                     mNextState = §8j§.§-A§;
                     if(_loc6_)
                     {
                        break;
                     }
                     addr32:
                     break;
                  case 1:
                     AngryBirdsFP11.§`y§.§,,§();
                     if(_loc6_)
                     {
                        §§goto(addr32);
                     }
               }
               return;
            }
            §§goto(addr88);
         }
         §§goto(addr90);
      }
   }
}
