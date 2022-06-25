package §[m§
{
   import §2h§.§'!^§;
   import §4L§.§,!_§;
   import §4L§.ColorFadeLayerEvent;
   import §9Y§.§9j§;
   import §?!7§.§[![§;
   import §true§.§ _§;
   
   public class Popup extends §[![§
   {
       
      
      protected const § !L§:Number = 0.25;
      
      protected var §#x§:§,!_§;
      
      protected var §+7§:§'!^§;
      
      protected var §=!O§:Boolean = false;
      
      public function Popup(param1:XML, param2:§'!^§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super(param1,param2.§;H§);
            while(true)
            {
               this.§#x§ = new §,!_§(0,0,0,0);
               while(_loc3_)
               {
                  param2.§;H§.addComponent(this);
                  loop2:
                  while(_loc3_)
                  {
                     while(true)
                     {
                        this.§+7§ = param2;
                        if(_loc3_ || _loc3_)
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
         §§goto(addr67);
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.open(param1);
         }
         loop0:
         while(true)
         {
            § _§.pause();
            loop1:
            while(true)
            {
               mClip.addChildAt(this.§#x§,0);
               while(true)
               {
                  if(_loc2_)
                  {
                     if(!param1)
                     {
                        §§push(this.§#x§);
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(0.7);
                           if(_loc2_ || _loc2_)
                           {
                              §§pop().§]f§(§§pop());
                              if(!_loc3_)
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    continue;
                                 }
                                 continue loop1;
                              }
                           }
                           else
                           {
                              addr94:
                              §§pop().§7!+§(§§pop(),this.§ !L§);
                           }
                           §§goto(addr19);
                        }
                     }
                     continue loop1;
                     break;
                  }
                  continue loop0;
               }
               addr93:
               §§goto(addr94);
            }
            addr19:
            return;
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push(!§§pop());
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        §§pop();
                        addr124:
                        while(true)
                        {
                           §§push(this.§#x§);
                           continue loop4;
                        }
                     }
                     addr123:
                  }
                  loop0:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop1:
                        while(true)
                        {
                           §§push(this.§#x§);
                           loop2:
                           while(true)
                           {
                              §§pop().§7!+§(0,this.§ !L§);
                              while(true)
                              {
                                 if(_loc3_ || this)
                                 {
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       §§push(this.§#x§);
                                       if(!_loc3_)
                                       {
                                          continue loop2;
                                       }
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       §§pop().addEventListener(ColorFadeLayerEvent.§5!t§,this.§;!-§);
                                       if(!(_loc3_ || this))
                                       {
                                          continue;
                                       }
                                       if(!_loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             return;
                                             addr62:
                                          }
                                          §§goto(addr124);
                                       }
                                    }
                                    else
                                    {
                                       addr112:
                                       this.close();
                                    }
                                    return;
                                 }
                                 continue loop1;
                              }
                              continue loop0;
                           }
                        }
                     }
                     §§goto(addr112);
                  }
               }
            }
            §§goto(addr123);
         }
         §§goto(addr62);
      }
      
      protected function §;!-§(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.close();
         }
      }
      
      override public function close() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(!this.§=!O§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§#x§);
                  loop1:
                  while(§§pop())
                  {
                     loop11:
                     while(true)
                     {
                        §§push(this.§#x§);
                        loop12:
                        while(true)
                        {
                           §§pop().removeEventListener(ColorFadeLayerEvent.§5!t§,this.§;!-§);
                           loop13:
                           while(true)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 if(_loc2_ && this)
                                 {
                                    return;
                                 }
                                 addr118:
                                 mClip.removeChild(this.§#x§);
                                 loop14:
                                 while(!(_loc2_ && _loc1_))
                                 {
                                    while(true)
                                    {
                                       §§push(this.§#x§);
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       if(!(_loc3_ || this))
                                       {
                                          break loop13;
                                       }
                                       §§pop().clean();
                                       while(!(_loc2_ && _loc3_))
                                       {
                                          this.§#x§ = null;
                                          if(!(_loc3_ || this))
                                          {
                                             continue;
                                          }
                                          if(!(_loc3_ || _loc3_))
                                          {
                                             continue loop13;
                                          }
                                          if(true)
                                          {
                                             break loop1;
                                          }
                                          §§goto(addr45);
                                       }
                                       continue loop14;
                                    }
                                    continue loop12;
                                 }
                                 continue loop11;
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                     }
                  }
                  var _loc1_:§9j§ = this.§+7§.getItemByName("Container_Popup");
                  if(!(_loc2_ && _loc2_))
                  {
                     if(_loc1_ != null)
                     {
                        if(_loc3_ || _loc1_)
                        {
                           addr226:
                           _loc1_.setVisibility(false);
                        }
                        loop2:
                        while(true)
                        {
                           loop9:
                           while(true)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 while(true)
                                 {
                                    this.§=!O§ = true;
                                    while(true)
                                    {
                                       § _§.resume();
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             continue;
                                          }
                                          continue loop9;
                                       }
                                       continue loop9;
                                    }
                                    continue loop9;
                                 }
                                 addr174:
                              }
                              continue loop2;
                           }
                        }
                        addr229:
                     }
                     while(true)
                     {
                        §§push(this.§+7§);
                        if(!(_loc2_ && _loc3_))
                        {
                           §§push(§§pop().§;H§);
                           if(_loc3_)
                           {
                              if(§§pop())
                              {
                                 §§goto(addr203);
                              }
                              §§goto(addr174);
                           }
                           §§goto(addr206);
                        }
                        §§goto(addr205);
                        §§goto(addr229);
                     }
                  }
                  §§goto(addr226);
               }
            }
            §§goto(addr118);
         }
         §§goto(addr83);
      }
   }
}
