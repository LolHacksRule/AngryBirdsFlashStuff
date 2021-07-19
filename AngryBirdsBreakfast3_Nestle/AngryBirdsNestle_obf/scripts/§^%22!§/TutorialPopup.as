package §^"!§
{
   import §'"!§.§+§;
   import §1!i§.AbstractPopup;
   import §1`§.§7I§;
   import §2u§.§,6§;
   import §@3§.§]K§;
   import §[!Z§.§>D§;
   import §[!Z§.§`v§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class TutorialPopup extends AbstractPopup
   {
      
      protected static const §7!b§:String = "bird_tutorial_1";
      
      public static const ID:String = "TutorialPopup";
      
      private static var §?"3§:§`v§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §7!b§ = "bird_tutorial_1";
            do
            {
               ID = "TutorialPopup";
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      protected var §+3§:MovieClip;
      
      protected var §?!%§:String;
      
      protected var §=n§:§4!I§;
      
      protected var §6!O§:Boolean;
      
      protected var §4!,§:§,6§;
      
      protected var §4C§:TextField;
      
      private var §-!z§:Boolean = false;
      
      public function TutorialPopup(param1:int, param2:int, param3:MovieClip, param4:String, param5:§4!I§, param6:Boolean = true)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super(param1,param2,§7I§.§7!%§.Popups.Popup_Tutorial[0],ID);
            while(true)
            {
               this.§?!%§ = param4;
               loop1:
               while(true)
               {
                  this.§=n§ = param5;
                  loop2:
                  while(true)
                  {
                     this.§6!O§ = param6;
                     loop3:
                     while(true)
                     {
                        §@^§ = true;
                        loop4:
                        while(true)
                        {
                           this.§+3§ = param3;
                           loop5:
                           while(_loc8_)
                           {
                              this.§+3§.gotoAndStop(1);
                              while(_loc8_)
                              {
                                 if(_loc8_)
                                 {
                                    continue loop1;
                                 }
                                 continue loop2;
                                 this.§+3§.name = "MovieClip_TutorialClip";
                                 if(_loc8_)
                                 {
                                    if(_loc7_ && param3)
                                    {
                                    }
                                    continue loop5;
                                 }
                              }
                              continue loop4;
                           }
                           continue loop3;
                        }
                     }
                  }
               }
               if(_loc7_ && param2)
               {
                  continue;
               }
               §§goto(addr67);
            }
         }
      }
      
      public function get §+!r§() : String
      {
         return this.§?!%§;
      }
      
      public function get title() : String
      {
         return this.§=n§.solve(this.§+!r§);
      }
      
      override protected function init() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super.init();
         }
         var _loc1_:MovieClip = §29§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §29§.getItemByName("Container_Animation").mClip;
         if(!_loc3_)
         {
            _loc2_.addChild(this.§+3§);
            loop0:
            while(true)
            {
               this.§4C§ = TextField(§29§.getItemByName("MovieClip_Title").mClip.titleContainer.title);
               loop1:
               while(true)
               {
                  this.§4C§.text = this.title;
                  while(true)
                  {
                     this.§4!,§ = §,6§(§29§.getItemByName("Container_CloseButton"));
                     while(!(_loc3_ && _loc2_))
                     {
                        if(_loc4_)
                        {
                           _loc2_.mask = _loc1_;
                           if(_loc4_)
                           {
                              continue loop0;
                           }
                           continue;
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            § !D§();
            loop0:
            while(true)
            {
               §@"+§ = new §#!]§(param1,§29§.mClip.stage,1000 / 60);
               while(this.§6!O§)
               {
                  if(_loc3_ || _loc2_)
                  {
                     continue loop0;
                  }
                  if(_loc3_ || _loc3_)
                  {
                     addr70:
                     break;
                  }
               }
               return;
            }
         }
         §§goto(addr70);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!§?"3§)
            {
               while(true)
               {
                  §?"3§ = §>D§.§9!q§(§7!b§,§>D§.§]!<§,int.MAX_VALUE);
                  while(true)
                  {
                  }
               }
               addr54:
            }
            do
            {
               super.show(param1);
               if(_loc3_ && _loc2_)
               {
                  continue;
               }
            }
            while(_loc3_ && _loc2_);
            
            return;
         }
         §§goto(addr54);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(§ !4§.§%"7§.§+!J§.§+7§(TutorialPopup.ID));
            loop0:
            while(true)
            {
               §§push(!§§pop());
               if(!(_loc3_ && param2))
               {
                  if(§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§pop();
                        addr126:
                        while(true)
                        {
                           §§push(§?"3§);
                           if(!_loc4_)
                           {
                              addr97:
                              addr98:
                              §§pop().stop();
                              while(true)
                              {
                                 §§push(§?"3§);
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 §§goto(addr97);
                              }
                              addr70:
                              addr40:
                           }
                           addr97:
                           addr98:
                           §§push(Boolean(§§pop()));
                           if(_loc4_)
                           {
                              break;
                           }
                           continue loop3;
                           §§pop().§,^§();
                           §?"3§ = null;
                           addr54:
                           addr64:
                           while(true)
                           {
                              if(!(_loc4_ || this))
                              {
                                 continue;
                              }
                              if(!(_loc3_ && param1))
                              {
                                 break;
                              }
                              §§goto(addr98);
                           }
                           while(true)
                           {
                              addr24:
                              super.hide(param1);
                              if(_loc4_ || this)
                              {
                                 break;
                              }
                              §§goto(addr40);
                              §§goto(addr54);
                           }
                           return;
                           continue loop3;
                        }
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                     }
                     addr125:
                  }
                  while(§§pop())
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        if(!(_loc3_ && param1))
                        {
                           §§push(§?"3§);
                        }
                        else
                        {
                           §§goto(addr126);
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr24);
               }
               §§goto(addr125);
            }
         }
         §§goto(addr64);
      }
      
      protected function §<!+§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(§@"+§)
            {
               while(true)
               {
                  §@"+§.removeEventListener(§#!]§.§[c§,this.§<!+§);
                  addr92:
                  while(true)
                  {
                  }
               }
               addr86:
            }
            while(true)
            {
               this.§6!O§ = false;
               while(_loc2_ || param1)
               {
                  if(_loc2_ || _loc3_)
                  {
                     §§push(this.§4!,§);
                     §§push(this.§6!O§);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(!§§pop());
                     }
                     §§pop().visible = §§pop();
                     if(_loc2_)
                     {
                        return;
                     }
                     continue;
                  }
               }
               §§goto(addr92);
            }
         }
         §§goto(addr86);
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MovieClip = §29§.getItemByName("MovieClip_Title").mClip;
         if(_loc4_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§]K§.§=@§);
               loop1:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     while(true)
                     {
                        §§push(this.§4!,§);
                        addr143:
                        while(true)
                        {
                           §§push(this.§6!O§);
                           if(_loc4_)
                           {
                              §§push(!§§pop());
                           }
                           addr148:
                           while(true)
                           {
                              §§pop().visible = §§pop();
                              addr149:
                              while(true)
                              {
                                 _loc2_.visible = true;
                                 addr126:
                                 while(true)
                                 {
                                 }
                              }
                           }
                        }
                     }
                     addr141:
                  }
                  while(true)
                  {
                     §§push(param1);
                     loop7:
                     while(true)
                     {
                        §§push(§]K§.§1o§);
                        addr101:
                        while(!(_loc3_ && _loc2_))
                        {
                           if(§§pop() == §§pop())
                           {
                              loop9:
                              while(true)
                              {
                                 §§push(this.§4!,§);
                                 addr111:
                                 while(_loc4_)
                                 {
                                    §§push(false);
                                    while(!_loc3_)
                                    {
                                       §§pop().visible = §§pop();
                                       loop12:
                                       while(!_loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             _loc2_.visible = false;
                                             while(!_loc3_)
                                             {
                                                do
                                                {
                                                   _loc2_.visible = false;
                                                }
                                                while(!_loc4_);
                                                
                                                if(!_loc4_)
                                                {
                                                   continue;
                                                }
                                                if(_loc3_)
                                                {
                                                   continue loop12;
                                                }
                                                if(!_loc3_)
                                                {
                                                   addr26:
                                                   return;
                                                }
                                                §§goto(addr141);
                                             }
                                             continue loop9;
                                          }
                                          §§goto(addr149);
                                       }
                                       §§goto(addr126);
                                    }
                                    §§goto(addr148);
                                 }
                                 §§goto(addr143);
                              }
                           }
                           while(true)
                           {
                              §§push(param1);
                              if(!(_loc4_ || _loc3_))
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           continue loop7;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr126);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            §§push(param2.toUpperCase() == "CLOSE");
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr98:
                     while(true)
                     {
                        §§push(this.§6!O§);
                        if(_loc5_)
                        {
                           if(!(_loc5_ || param1))
                           {
                              continue;
                           }
                           §§push(Boolean(§§pop()));
                        }
                        if(_loc4_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               loop2:
               while(!§§pop())
               {
                  do
                  {
                     super.onUIInteraction(param1,param2,param3);
                     if(_loc5_)
                     {
                        if(_loc5_ || param1)
                        {
                           return;
                        }
                        break loop2;
                     }
                  }
                  while(_loc5_ || param3);
                  
                  §§goto(addr98);
               }
               return;
            }
         }
         §§goto(addr98);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(§@"+§)
            {
               while(true)
               {
                  §@"+§.removeEventListener(§#!]§.§[c§,this.§<!+§);
                  addr84:
                  while(true)
                  {
                  }
               }
               addr78:
            }
            loop0:
            while(true)
            {
               this.§+3§.gotoAndStop(this.§+3§.totalFrames);
               while(_loc1_ || _loc1_)
               {
                  super.dispose();
                  if(!(_loc1_ || _loc1_))
                  {
                     continue;
                  }
                  if(!(_loc2_ && _loc1_))
                  {
                     break loop0;
                  }
               }
               §§goto(addr84);
            }
            return;
         }
         §§goto(addr78);
      }
   }
}
