package §=!L§
{
   import §,L§.§6!W§;
   import §0"$§.§"!a§;
   import §1T§.§'!c§;
   import §1T§.§8!Q§;
   import §48§.AbstractPopup;
   import §7!§.§#"0§;
   import §>1§.§2B§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class TutorialPopup extends AbstractPopup
   {
      
      protected static const § W§:String = "bird_tutorial_1";
      
      public static const ID:String = "TutorialPopup";
      
      private static var §%%§:§8!Q§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            § W§ = "bird_tutorial_1";
         }
         do
         {
            ID = "TutorialPopup";
         }
         while(!(_loc1_ || TutorialPopup));
         
      }
      
      protected var §>!>§:MovieClip;
      
      protected var §]!S§:String;
      
      protected var §7!'§:§7M§;
      
      protected var §`!h§:Boolean;
      
      protected var §=!`§:§"!a§;
      
      protected var §,!9§:TextField;
      
      private var §!f§:Boolean = false;
      
      public function TutorialPopup(param1:int, param2:int, param3:MovieClip, param4:String, param5:§7M§, param6:Boolean = true)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super(param1,param2,§#"0§.§+#§.Popups.Popup_Tutorial[0],ID);
            loop0:
            while(true)
            {
               this.§]!S§ = param4;
               loop1:
               while(true)
               {
                  this.§7!'§ = param5;
                  loop2:
                  while(true)
                  {
                     this.§`!h§ = param6;
                     while(!_loc8_)
                     {
                        §%!v§ = true;
                        continue loop2;
                        loop6:
                        while(!(_loc8_ && this))
                        {
                           while(true)
                           {
                              this.§>!>§.name = "MovieClip_TutorialClip";
                              if(!_loc8_)
                              {
                                 addr30:
                                 if(_loc7_ || this)
                                 {
                                    break;
                                 }
                                 addr65:
                                 while(_loc7_ || param3)
                                 {
                                    if(!_loc8_)
                                    {
                                       this.§>!>§.gotoAndStop(1);
                                       continue loop6;
                                    }
                                    continue loop0;
                                    §§goto(addr30);
                                 }
                                 continue loop2;
                              }
                              continue loop6;
                           }
                           return;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      public function get § "!§() : String
      {
         return this.§]!S§;
      }
      
      public function get title() : String
      {
         return this.§7!'§.solve(this.§ "!§);
      }
      
      override protected function init() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.init();
         }
         var _loc1_:MovieClip = §@'§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §@'§.getItemByName("Container_Animation").mClip;
         if(!_loc4_)
         {
            _loc2_.addChild(this.§>!>§);
            while(true)
            {
               this.§,!9§ = TextField(§@'§.getItemByName("MovieClip_Title").mClip.titleContainer.title);
               while(!_loc4_)
               {
                  this.§,!9§.text = this.title;
                  loop2:
                  while(!_loc4_)
                  {
                     this.§=!`§ = §"!a§(§@'§.getItemByName("Container_CloseButton"));
                     while(true)
                     {
                        _loc2_.mask = _loc1_;
                        if(!_loc4_)
                        {
                           if(_loc3_)
                           {
                              break;
                           }
                           continue loop2;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §6!8§();
         }
         loop0:
         while(true)
         {
            §#1§ = new §0R§(param1,§@'§.mClip.stage,1000 / 60);
            do
            {
               if(!(_loc3_ && _loc2_))
               {
                  if(!this.§`!h§)
                  {
                     break;
                  }
                  continue;
               }
               continue loop0;
            }
            while(if(!(_loc3_ && _loc2_))
            {
               §#1§.addEventListener(§0R§.§'!W§,this.§]T§);
            }, !_loc2_);
            
            return;
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(!§%%§)
            {
               while(true)
               {
                  §%%§ = §'!c§.§3!f§(§ W§,§'!c§.§ F§,int.MAX_VALUE);
                  while(true)
                  {
                  }
               }
               addr49:
            }
            do
            {
               super.show(param1);
               if(!_loc2_)
               {
                  continue;
               }
            }
            while(_loc3_);
            
            return;
         }
         §§goto(addr49);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            §§push(§6!!§.singleton.§%![§.§^0§(TutorialPopup.ID));
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop10:
                           while(true)
                           {
                              §§push(§%%§);
                              loop4:
                              while(true)
                              {
                                 §§pop().stop();
                                 while(true)
                                 {
                                    §§push(§%%§);
                                    if(_loc4_)
                                    {
                                       §§pop().§>!C§();
                                       while(true)
                                       {
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             §%%§ = null;
                                             loop7:
                                             while(true)
                                             {
                                                addr29:
                                                while(true)
                                                {
                                                   super.hide(param1);
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      break loop7;
                                                   }
                                                   continue loop7;
                                                }
                                             }
                                             continue;
                                          }
                                          continue loop10;
                                       }
                                       continue loop10;
                                    }
                                    continue loop4;
                                 }
                                 if(!(_loc4_ || _loc3_))
                                 {
                                    loop3:
                                    while(true)
                                    {
                                       §§push(§%%§);
                                       if(_loc3_ && param2)
                                       {
                                          continue loop4;
                                       }
                                       §§push(Boolean(§§pop()));
                                       if(!(_loc3_ && param2))
                                       {
                                          if(!_loc3_)
                                          {
                                             continue loop0;
                                          }
                                          continue loop1;
                                       }
                                       addr140:
                                       while(true)
                                       {
                                          §§pop();
                                          continue loop3;
                                       }
                                    }
                                 }
                                 return;
                              }
                           }
                           addr118:
                        }
                        §§goto(addr29);
                     }
                     addr116:
                  }
                  §§goto(addr140);
               }
            }
         }
         §§goto(addr118);
      }
      
      protected function §]T§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(§#1§)
            {
               while(true)
               {
                  §#1§.removeEventListener(§0R§.§'!W§,this.§]T§);
                  while(true)
                  {
                  }
               }
               addr72:
            }
            do
            {
               this.§`!h§ = false;
               do
               {
                  §§push(this.§=!`§);
                  §§push(this.§`!h§);
                  if(!_loc2_)
                  {
                     §§push(!§§pop());
                  }
                  §§pop().visible = §§pop();
               }
               while(!_loc3_);
               
               if(_loc2_)
               {
                  continue;
               }
            }
            while(_loc2_ && param1);
            
            return;
         }
         §§goto(addr72);
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MovieClip = §@'§.getItemByName("MovieClip_Title").mClip;
         if(_loc4_ || this)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§2B§.§+!_§);
               loop1:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this.§=!`§);
                        addr175:
                        while(true)
                        {
                           §§push(this.§`!h§);
                           addr177:
                           while(true)
                           {
                              §§push(!§§pop());
                              addr178:
                              while(true)
                              {
                                 §§pop().visible = §§pop();
                                 addr179:
                                 while(true)
                                 {
                                    _loc2_.visible = true;
                                    addr156:
                                    while(_loc4_)
                                    {
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(param1);
                     loop9:
                     while(!_loc3_)
                     {
                        §§push(§2B§.§-!S§);
                        continue loop1;
                        loop15:
                        while(true)
                        {
                           §§push(param1);
                           if(_loc4_ || this)
                           {
                              §§push(§2B§.§"<§);
                              if(!_loc3_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    loop16:
                                    while(true)
                                    {
                                       §§push(this.§=!`§);
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          addr91:
                                          §§push(false);
                                          if(_loc4_ || _loc2_)
                                          {
                                             §§pop().visible = §§pop();
                                             while(!_loc3_)
                                             {
                                                _loc2_.visible = false;
                                                if(_loc4_)
                                                {
                                                   continue loop16;
                                                }
                                             }
                                             §§goto(addr179);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                if(_loc4_ || _loc3_)
                                                {
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      §§pop().visible = §§pop();
                                                      while(_loc4_)
                                                      {
                                                         while(true)
                                                         {
                                                            _loc2_.visible = false;
                                                            addr107:
                                                            while(_loc3_ && _loc2_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.§=!`§);
                                                                  break loop16;
                                                               }
                                                            }
                                                            continue loop15;
                                                         }
                                                      }
                                                      §§goto(addr156);
                                                      addr149:
                                                   }
                                                   §§goto(addr177);
                                                }
                                                break;
                                                §§goto(addr91);
                                             }
                                             addr134:
                                          }
                                          §§goto(addr178);
                                       }
                                       break;
                                    }
                                    while(!_loc3_)
                                    {
                                       §§goto(addr134);
                                       §§push(false);
                                    }
                                    §§goto(addr175);
                                 }
                                 break;
                              }
                              continue loop1;
                           }
                           continue loop9;
                        }
                        return;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr151);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            §§push(param2.toUpperCase() == "CLOSE");
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(this.§`!h§);
                        if(!(_loc5_ && param2))
                        {
                           if(_loc5_ && param3)
                           {
                              continue loop1;
                           }
                           if(_loc5_)
                           {
                              continue loop0;
                           }
                           §§push(Boolean(§§pop()));
                           while(true)
                           {
                           }
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc4_ || param2)
                              {
                                 return;
                              }
                              addr89:
                              while(true)
                              {
                              }
                              addr89:
                           }
                           while(true)
                           {
                              super.onUIInteraction(param1,param2,param3);
                              if(_loc4_)
                              {
                                 break;
                              }
                              §§goto(addr89);
                           }
                           if(_loc4_)
                           {
                              break loop2;
                           }
                           continue loop2;
                        }
                     }
                     return;
                  }
               }
               §§goto(addr69);
            }
         }
         §§goto(addr89);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§#1§)
            {
               while(true)
               {
                  §#1§.removeEventListener(§0R§.§'!W§,this.§]T§);
                  addr80:
                  while(true)
                  {
                  }
               }
               addr74:
            }
            loop0:
            while(true)
            {
               this.§>!>§.gotoAndStop(this.§>!>§.totalFrames);
               while(!(_loc1_ && _loc2_))
               {
                  super.dispose();
                  if(_loc1_)
                  {
                     continue;
                  }
                  if(_loc2_ || _loc1_)
                  {
                     break loop0;
                  }
               }
               §§goto(addr80);
            }
            return;
         }
         §§goto(addr74);
      }
   }
}
