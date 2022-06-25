package §,B§
{
   import §#!H§.ColorFadeLayerEvent;
   import §#!H§.§^I§;
   import §1!E§.§&!J§;
   import §>! §.§^!c§;
   import §>7§.§&! §;
   import §[!+§.§4`§;
   
   public class Popup extends §&!J§
   {
       
      
      protected const §&!o§:Number = 0.25;
      
      protected var §4!E§:§^I§;
      
      protected var §"!@§:§4`§;
      
      protected var §[+§:Boolean = false;
      
      public function Popup(param1:XML, param2:§4`§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1,param2.§]1§);
            loop0:
            while(true)
            {
               this.§4!E§ = new §^I§(0,0,0,0);
               loop1:
               while(true)
               {
                  param2.§]1§.addComponent(this);
                  loop2:
                  while(_loc3_)
                  {
                     while(true)
                     {
                        this.§"!@§ = param2;
                        if(_loc3_ || param1)
                        {
                           continue loop1;
                        }
                        continue loop2;
                     }
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr69);
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            super.open(param1);
            loop0:
            while(true)
            {
               §^!c§.pause();
               loop2:
               while(true)
               {
                  if(_loc2_ && _loc3_)
                  {
                     continue loop0;
                  }
                  if(param1)
                  {
                     break;
                  }
                  §§push(this.§4!E§);
                  if(_loc3_)
                  {
                     §§push(0.7);
                     if(_loc3_)
                     {
                        §§pop().§%$§(§§pop());
                        if(!_loc2_)
                        {
                           continue;
                        }
                     }
                     else
                     {
                        §§pop().§;'§(§§pop(),this.§&!o§);
                        addr68:
                     }
                     addr81:
                     if(!(_loc3_ || _loc3_))
                     {
                        while(true)
                        {
                           mClip.addChildAt(this.§4!E§,0);
                           continue loop2;
                           §§goto(addr81);
                        }
                        addr106:
                     }
                     addr25:
                     return;
                  }
                  addr67:
                  §§push(0.7);
                  §§goto(addr68);
               }
               §§goto(addr67);
            }
         }
         §§goto(addr106);
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!_loc2_)
                           {
                              this.close();
                              break;
                           }
                           break;
                        }
                        loop6:
                        while(true)
                        {
                           §§push(this.§4!E§);
                           loop7:
                           while(true)
                           {
                              §§pop().§;'§(0,this.§&!o§);
                              loop8:
                              while(true)
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§push(this.§4!E§);
                                    if(_loc3_ || param1)
                                    {
                                       addr34:
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          §§pop().addEventListener(ColorFadeLayerEvent.§^#§,this.§3!K§);
                                          if(_loc2_ && _loc3_)
                                          {
                                             continue;
                                          }
                                          if(_loc2_ && _loc2_)
                                          {
                                             break loop5;
                                          }
                                          if(!(_loc2_ && this))
                                          {
                                             return;
                                          }
                                          addr139:
                                          while(true)
                                          {
                                             §§push(this.§4!E§);
                                             break loop8;
                                          }
                                       }
                                       break;
                                    }
                                    continue loop7;
                                 }
                                 continue loop6;
                              }
                              while(true)
                              {
                                 §§push(§§pop() == null);
                                 if(!(_loc2_ && param1))
                                 {
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr34);
                              }
                              continue loop1;
                           }
                        }
                     }
                     return;
                     addr127:
                     addr133:
                  }
                  while(true)
                  {
                     §§pop();
                     §§goto(addr139);
                  }
               }
            }
         }
         §§goto(addr133);
      }
      
      protected function §3!K§(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.close();
         }
      }
      
      override public function close() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!this.§[+§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§4!E§);
                  if(!_loc2_)
                  {
                     if(§§pop())
                     {
                        while(!_loc2_)
                        {
                           §§push(this.§4!E§);
                           loop2:
                           while(true)
                           {
                              §§pop().removeEventListener(ColorFadeLayerEvent.§^#§,this.§3!K§);
                              addr99:
                              while(true)
                              {
                                 mClip.removeChild(this.§4!E§);
                                 loop15:
                                 while(true)
                                 {
                                    addr33:
                                    while(true)
                                    {
                                       §§push(this.§4!E§);
                                       if(_loc2_ && _loc1_)
                                       {
                                          break;
                                       }
                                       §§pop().clean();
                                       continue loop15;
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                           if(_loc2_ && _loc3_)
                           {
                              continue;
                           }
                           if(_loc2_ && _loc2_)
                           {
                              continue loop0;
                           }
                           §§goto(addr67);
                        }
                        §§goto(addr103);
                     }
                     break;
                  }
                  §§goto(addr84);
               }
               var _loc1_:§&! § = this.§"!@§.getItemByName("Container_Popup");
               if(!(_loc2_ && this))
               {
                  if(_loc1_ != null)
                  {
                     while(true)
                     {
                        _loc1_.setVisibility(false);
                        addr199:
                        while(true)
                        {
                        }
                     }
                     addr196:
                  }
                  loop5:
                  while(true)
                  {
                     §§push(this.§"!@§);
                     if(_loc3_)
                     {
                        §§push(§§pop().§]1§);
                        if(!_loc2_)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    §§push(this.§"!@§);
                                    while(true)
                                    {
                                       §§push(§§pop().§]1§);
                                       addr190:
                                       while(true)
                                       {
                                          §§pop().§`O§(this);
                                          addr192:
                                          while(true)
                                          {
                                          }
                                       }
                                    }
                                    addr189:
                                 }
                                 else
                                 {
                                    §§goto(addr196);
                                 }
                              }
                              continue;
                              addr185:
                           }
                           loop7:
                           while(true)
                           {
                              this.§[+§ = true;
                              loop8:
                              while(true)
                              {
                                 §^!c§.resume();
                                 loop9:
                                 while(!(_loc2_ && _loc3_))
                                 {
                                    if(_loc2_)
                                    {
                                       break loop8;
                                    }
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       while(true)
                                       {
                                          mClip.dispatchEvent(new §-!0§(§-!0§.§>!R§,this));
                                          if(_loc3_)
                                          {
                                             if(!(_loc2_ && this))
                                             {
                                                break;
                                             }
                                             continue loop7;
                                          }
                                          continue loop9;
                                       }
                                       return;
                                       continue;
                                    }
                                    continue loop5;
                                 }
                              }
                              §§goto(addr185);
                           }
                        }
                        §§goto(addr190);
                     }
                     §§goto(addr189);
                  }
               }
               §§goto(addr170);
            }
            addr103:
            return;
         }
         §§goto(addr99);
      }
   }
}
