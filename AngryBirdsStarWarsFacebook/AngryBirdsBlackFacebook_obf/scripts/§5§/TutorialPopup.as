package §5§#7
{
   import §+D§.§ #^§;
   import §7!$§.§&$§;
   import §;"Y§.§&#X§;
   import §="2§.§4!5§;
   import §="2§.§?!r§;
   import §[!m§.AbstractPopup;
   import §]!$§.§6y§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class TutorialPopup extends AbstractPopup
   {
      
      protected static const §'!R§:String = "bird_tutorial_1";
      
      public static const §%!h§:String = "TutorialPopup";
      
      private static var §#!b§:§4!5§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §'!R§ = "bird_tutorial_1";
         }
         do
         {
            §%!h§ = "TutorialPopup";
         }
         while(_loc2_ && _loc1_);
         
      }
      
      protected var §6"E§:MovieClip;
      
      protected var §+E§:String;
      
      protected var § !U§:§3!c§;
      
      protected var §]"M§:Boolean;
      
      protected var §<"§:§ #^§;
      
      protected var §1"5§:TextField;
      
      private var §;!p§:Boolean = false;
      
      public function TutorialPopup(param1:int, param2:int, param3:MovieClip, param4:String, param5:§3!c§, param6:Boolean = true)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super(param1,param2,§&$§.§@8§.Popups.Popup_Tutorial[0],§%!h§);
            loop0:
            while(true)
            {
               this.§+E§ = param4;
               while(true)
               {
                  this.§ !U§ = param5;
                  while(!_loc7_)
                  {
                     this.§]"M§ = param6;
                     while(true)
                     {
                        if(_loc8_ || param1)
                        {
                           while(true)
                           {
                              §+#=§ = true;
                              while(true)
                              {
                                 if(_loc8_)
                                 {
                                    this.§6"E§ = param3;
                                    continue;
                                 }
                                 continue loop0;
                              }
                           }
                           return;
                           addr45:
                           addr92:
                        }
                        break;
                        if(!(_loc8_ || this))
                        {
                           continue;
                        }
                        §§goto(addr45);
                     }
                  }
               }
            }
         }
         §§goto(addr92);
      }
      
      public function get §%##§() : String
      {
         return this.§+E§;
      }
      
      public function get title() : String
      {
         return this.§ !U§.solve(this.§%##§);
      }
      
      override protected function init() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.init();
         }
         var _loc1_:MovieClip = §^c§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §^c§.getItemByName("Container_Animation").mClip;
         if(!(_loc4_ && _loc3_))
         {
            _loc2_.addChild(this.§6"E§);
            while(true)
            {
               this.§1"5§ = TextField(§^c§.getItemByName("MovieClip_Title").mClip.titleContainer.title);
               loop1:
               while(_loc3_ || _loc3_)
               {
                  while(true)
                  {
                     this.§1"5§.text = this.title;
                     while(!_loc4_)
                     {
                        this.§<"§ = § #^§(§^c§.getItemByName("Container_CloseButton"));
                        while(_loc3_ || _loc2_)
                        {
                           _loc2_.mask = _loc1_;
                           if(_loc3_)
                           {
                              return;
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr114);
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §^!d§();
            while(true)
            {
               §7!=§ = new §7#B§(param1,§^c§.mClip.stage,1000 / 60);
            }
            addr80:
         }
         while(this.§]"M§)
         {
            if(_loc2_ || _loc2_)
            {
               if(_loc2_)
               {
                  §7!=§.addEventListener(§7#B§.§'@§,this.§'!x§);
               }
               else
               {
                  §§goto(addr80);
               }
            }
            if(_loc2_)
            {
               break;
            }
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(!§#!b§)
            {
               if(!(_loc3_ && _loc2_))
               {
                  §#!b§ = §?!r§.§"#_§(§'!R§,§?!r§.§2!1§,int.MAX_VALUE);
                  addr59:
               }
               while(true)
               {
                  §§goto(addr28);
               }
            }
            addr28:
            while(true)
            {
               super.show(param1);
               if(_loc2_ || _loc2_)
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
         §§goto(addr59);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(§4#;§.singleton.popupManager.§6#-§(TutorialPopup.§%!h§));
            if(_loc3_)
            {
               §§push(!§§pop());
               if(!_loc4_)
               {
                  addr112:
                  if(§§pop())
                  {
                     loop0:
                     while(true)
                     {
                        §§pop();
                        addr115:
                        while(true)
                        {
                           §§push(§#!b§);
                           addr83:
                           do
                           {
                              §§push(Boolean(§§pop()));
                           }
                           while(!_loc4_);
                           
                           continue loop0;
                        }
                     }
                     addr114:
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(§#!b§);
                           while(true)
                           {
                              §§pop().stop();
                              while(true)
                              {
                                 §§push(§#!b§);
                                 if(!(_loc3_ || param1))
                                 {
                                    break;
                                 }
                                 if(!_loc4_)
                                 {
                                    §§pop().§!"^§();
                                    while(_loc3_)
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          while(true)
                                          {
                                             §#!b§ = null;
                                             while(true)
                                             {
                                                §§goto(addr28);
                                             }
                                          }
                                          addr80:
                                       }
                                       else
                                       {
                                          §§goto(addr115);
                                       }
                                    }
                                    continue;
                                 }
                                 §§goto(addr83);
                              }
                           }
                        }
                     }
                     addr28:
                     while(true)
                     {
                        super.hide(param1);
                        if(_loc3_ || param1)
                        {
                           if(_loc3_)
                           {
                              if(!_loc4_)
                              {
                                 break;
                              }
                              continue loop3;
                           }
                           continue loop6;
                        }
                        continue loop10;
                     }
                     return;
                  }
               }
               §§goto(addr114);
            }
            §§goto(addr112);
         }
         §§goto(addr80);
      }
      
      protected function §'!x§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(§7!=§)
            {
               if(!(_loc3_ && _loc2_))
               {
                  §7!=§.removeEventListener(§7#B§.§'@§,this.§'!x§);
               }
               while(true)
               {
               }
               addr82:
            }
            while(true)
            {
               this.§]"M§ = false;
               loop2:
               while(_loc2_)
               {
                  while(true)
                  {
                     §§push(this.§<"§);
                     §§push(this.§]"M§);
                     if(_loc2_ || param1)
                     {
                        §§push(!§§pop());
                     }
                     §§pop().visible = §§pop();
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop2;
                  }
                  return;
               }
               §§goto(addr82);
            }
         }
         §§goto(addr56);
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:MovieClip = §^c§.getItemByName("MovieClip_Title").mClip;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§6y§.§5z§);
               loop1:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     while(true)
                     {
                        §§push(this.§<"§);
                        addr159:
                        while(true)
                        {
                           §§push(this.§]"M§);
                           addr161:
                           while(true)
                           {
                              §§push(!§§pop());
                              addr162:
                              while(true)
                              {
                                 §§pop().visible = §§pop();
                                 addr163:
                                 while(true)
                                 {
                                    _loc2_.visible = true;
                                    while(true)
                                    {
                                       addr39:
                                       if(!(_loc4_ && this))
                                       {
                                          addr25:
                                          return;
                                          addr46:
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     addr157:
                  }
                  while(true)
                  {
                     §§push(param1);
                     loop9:
                     for(; _loc3_; while(true)
                     {
                        §§push(param1);
                        if(!(_loc3_ || param1))
                        {
                           continue loop9;
                        }
                        §§goto(addr56);
                        §§goto(addr121);
                     },§§goto(addr25))
                     {
                        §§push(§6y§.§;X§);
                        while(_loc3_)
                        {
                           if(§§pop() != §§pop())
                           {
                              continue loop9;
                           }
                           loop11:
                           while(true)
                           {
                              §§push(this.§<"§);
                              loop12:
                              while(true)
                              {
                                 §§push(false);
                                 loop13:
                                 while(true)
                                 {
                                    §§pop().visible = §§pop();
                                    loop14:
                                    while(!_loc4_)
                                    {
                                       _loc2_.visible = false;
                                       while(true)
                                       {
                                          continue loop9;
                                          loop18:
                                          while(!(_loc4_ && _loc2_))
                                          {
                                             _loc2_.visible = false;
                                             if(!_loc3_)
                                             {
                                                continue;
                                             }
                                             if(_loc3_)
                                             {
                                                if(_loc4_)
                                                {
                                                   continue loop11;
                                                }
                                                §§goto(addr39);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   if(_loc4_ && param1)
                                                   {
                                                      continue loop14;
                                                   }
                                                   if(!_loc4_)
                                                   {
                                                      §§push(this.§<"§);
                                                      if(_loc4_)
                                                      {
                                                         continue loop12;
                                                      }
                                                      if(_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(false);
                                                      if(_loc4_ && _loc2_)
                                                      {
                                                         continue loop13;
                                                      }
                                                      if(!_loc4_)
                                                      {
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            §§pop().visible = §§pop();
                                                            continue loop18;
                                                         }
                                                         §§goto(addr161);
                                                      }
                                                      §§goto(addr162);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr157);
                                                   }
                                                }
                                                §§goto(addr159);
                                                addr66:
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr163);
                                 }
                              }
                           }
                           §§push(§6y§.§>]§);
                           if(_loc4_ && this)
                           {
                              continue;
                           }
                           if(§§pop() == §§pop())
                           {
                              §§goto(addr66);
                           }
                           §§goto(addr25);
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr46);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
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
                        §§push(this.§]"M§);
                        if(!_loc5_)
                        {
                           if(_loc5_)
                           {
                              continue loop1;
                           }
                           if(!_loc4_)
                           {
                              continue loop0;
                           }
                           §§push(Boolean(§§pop()));
                           while(true)
                           {
                           }
                        }
                        while(!§§pop())
                        {
                           while(true)
                           {
                              super.onUIInteraction(param1,param2,param3);
                              if(!(_loc5_ && this))
                              {
                                 break;
                              }
                              if(_loc4_)
                              {
                                 continue;
                              }
                              continue loop2;
                           }
                           if(!_loc5_)
                           {
                              return;
                           }
                           break loop2;
                        }
                        break;
                     }
                     §§goto(addr61);
                  }
               }
               §§goto(addr59);
            }
         }
         addr61:
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(§7!=§)
            {
               loop0:
               while(true)
               {
                  §7!=§.removeEventListener(§7#B§.§'@§,this.§'!x§);
                  addr89:
                  addr63:
                  while(true)
                  {
                  }
                  while(true)
                  {
                     if(!(_loc2_ && this))
                     {
                        continue;
                     }
                     continue loop0;
                  }
                  §§goto(addr89);
               }
            }
            while(true)
            {
               this.§6"E§.gotoAndStop(this.§6"E§.totalFrames);
               §§goto(addr63);
               §§goto(addr89);
            }
         }
         §§goto(addr70);
      }
   }
}
