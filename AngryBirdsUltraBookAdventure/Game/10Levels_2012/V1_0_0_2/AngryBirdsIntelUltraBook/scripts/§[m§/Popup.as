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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            super(param1,param2.§;H§);
            while(true)
            {
               this.§#x§ = new §,!_§(0,0,0,0);
               addr78:
               while(_loc4_)
               {
               }
            }
         }
         while(true)
         {
            param2.§;H§.addComponent(this);
            while(_loc4_)
            {
               this.§+7§ = param2;
               if(!(_loc3_ && param2))
               {
                  return;
               }
            }
            §§goto(addr78);
         }
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super.open(param1);
            loop0:
            while(true)
            {
               § _§.pause();
               loop1:
               while(true)
               {
                  mClip.addChildAt(this.§#x§,0);
                  do
                  {
                     if(!_loc2_)
                     {
                        continue loop0;
                     }
                     continue loop1;
                  }
                  while(!_loc3_);
                  
                  addr88:
                  this.§#x§.§7!+§(0.7,this.§ !L§);
               }
               addr69:
               return;
            }
         }
         §§goto(addr91);
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
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
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              this.close();
                           }
                           addr126:
                           if(_loc3_ || this)
                           {
                              break;
                           }
                           addr139:
                           while(true)
                           {
                              §§push(this.§#x§);
                           }
                        }
                        else
                        {
                           loop4:
                           while(true)
                           {
                              §§push(this.§#x§);
                              while(!(_loc2_ && param1))
                              {
                                 §§pop().§7!+§(0,this.§ !L§);
                                 while(true)
                                 {
                                    §§push(this.§#x§);
                                    if(!(_loc3_ || _loc2_))
                                    {
                                       break;
                                    }
                                    §§pop().addEventListener(ColorFadeLayerEvent.§5!t§,this.§;!-§);
                                    if(!_loc3_)
                                    {
                                       continue;
                                    }
                                    if(_loc2_)
                                    {
                                       continue loop4;
                                    }
                                    if(!_loc2_)
                                    {
                                       return;
                                    }
                                    §§goto(addr126);
                                 }
                              }
                           }
                        }
                        do
                        {
                           §§push(§§pop() == null);
                        }
                        while(_loc2_ && _loc2_);
                        
                        if(!(_loc2_ && param1))
                        {
                           continue loop0;
                        }
                        continue loop1;
                     }
                     return;
                     addr115:
                  }
                  while(true)
                  {
                     §§pop();
                  }
               }
            }
         }
         §§goto(addr139);
      }
      
      protected function §;!-§(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.close();
         }
      }
      
      override public function close() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!this.§=!O§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§#x§);
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        loop1:
                        while(true)
                        {
                           §§push(this.§#x§);
                           addr79:
                           loop2:
                           while(true)
                           {
                              §§pop().removeEventListener(ColorFadeLayerEvent.§5!t§,this.§;!-§);
                              loop3:
                              while(true)
                              {
                                 mClip.removeChild(this.§#x§);
                                 loop4:
                                 while(!_loc2_)
                                 {
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       while(true)
                                       {
                                          §§push(this.§#x§);
                                          if(!_loc2_)
                                          {
                                             §§pop().clean();
                                             while(!_loc2_)
                                             {
                                                this.§#x§ = null;
                                                if(!(_loc2_ && _loc1_))
                                                {
                                                   if(!(_loc3_ || this))
                                                   {
                                                      continue loop4;
                                                   }
                                                   if(!(_loc3_ || this))
                                                   {
                                                      continue loop3;
                                                   }
                                                   while(true)
                                                   {
                                                      if(true)
                                                      {
                                                         break loop0;
                                                      }
                                                      §§goto(addr47);
                                                   }
                                                   continue loop4;
                                                }
                                             }
                                             §§goto(addr98);
                                          }
                                          break;
                                       }
                                       continue loop2;
                                       addr47:
                                    }
                                    continue loop0;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                     break;
                  }
                  §§goto(addr79);
               }
               var _loc1_:§9j§ = this.§+7§.getItemByName("Container_Popup");
               if(_loc3_)
               {
                  if(_loc1_ != null)
                  {
                     loop7:
                     while(true)
                     {
                        _loc1_.setVisibility(false);
                        addr199:
                        while(true)
                        {
                        }
                        loop11:
                        while(true)
                        {
                           if(_loc2_ && _loc3_)
                           {
                              continue loop7;
                           }
                           § _§.resume();
                           do
                           {
                              mClip.dispatchEvent(new §%!b§(§%!b§.§<!k§,this));
                           }
                           while(!_loc3_);
                           
                           if(!(_loc3_ || this))
                           {
                              continue;
                           }
                           if(!_loc2_)
                           {
                              addr132:
                              if(_loc2_ && _loc3_)
                              {
                                 while(!_loc2_)
                                 {
                                    §§push(this.§+7§);
                                    while(true)
                                    {
                                       §§push(§§pop().§;H§);
                                       addr190:
                                       while(true)
                                       {
                                          §§pop().§@!g§(this);
                                          addr192:
                                          while(true)
                                          {
                                             addr144:
                                             while(true)
                                             {
                                                this.§=!O§ = true;
                                                continue loop11;
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr132);
                                 }
                                 §§goto(addr199);
                                 addr185:
                              }
                              return;
                           }
                           §§goto(addr192);
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(this.§+7§);
                     if(!(_loc2_ && _loc3_))
                     {
                        §§push(§§pop().§;H§);
                        if(!(_loc2_ && this))
                        {
                           if(§§pop())
                           {
                              §§goto(addr185);
                           }
                           §§goto(addr144);
                        }
                        §§goto(addr190);
                     }
                     §§goto(addr189);
                     §§goto(addr199);
                  }
               }
               §§goto(addr199);
            }
            addr98:
            return;
         }
         §§goto(addr45);
      }
   }
}
