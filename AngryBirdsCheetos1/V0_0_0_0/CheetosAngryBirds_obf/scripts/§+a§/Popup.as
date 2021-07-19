package §+a§
{
   import § !W§.§<U§;
   import § !W§.ColorFadeLayerEvent;
   import §!J§.§[&§;
   import §+?§.§,!N§;
   import §8!8§.§#_§;
   import §@R§.§']§;
   
   public class Popup extends §#_§
   {
       
      
      private const §%t§:Number = 0.25;
      
      protected var §+W§:§<U§;
      
      private var §?"§:§,!N§;
      
      private var §`!-§:Boolean = false;
      
      public function Popup(param1:XML, param2:§,!N§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super(param1,param2.container);
         }
         do
         {
            this.§+W§ = new §<U§(0,0,0,0);
            do
            {
               param2.container.addComponent(this);
               do
               {
                  this.§?"§ = param2;
               }
               while(!(_loc4_ || this));
               
            }
            while(_loc3_);
            
         }
         while(!(_loc4_ || this));
         
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            super.open(param1);
            while(true)
            {
               §[&§.§[]§();
               loop1:
               while(_loc2_)
               {
                  mClip.addChildAt(this.§+W§,0);
                  while(true)
                  {
                     if(!(_loc2_ || this))
                     {
                        continue loop1;
                     }
                     if(param1)
                     {
                        break;
                     }
                     §§push(this.§+W§);
                     if(!_loc3_)
                     {
                        §§push(0.7);
                        if(_loc2_)
                        {
                           §§pop().§5!<§(§§pop());
                           if(!_loc3_)
                           {
                              continue;
                           }
                        }
                        else
                        {
                           addr62:
                           §§pop().§9>§(§§pop(),this.§%t§);
                        }
                        addr24:
                        return;
                     }
                     addr61:
                     §§push(0.7);
                     §§goto(addr62);
                  }
                  §§goto(addr61);
               }
            }
         }
         §§goto(addr55);
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
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
                        if(!§§pop())
                        {
                           loop6:
                           while(true)
                           {
                              §§push(this.§+W§);
                              loop7:
                              while(true)
                              {
                                 §§pop().§9>§(0,this.§%t§);
                                 loop8:
                                 while(true)
                                 {
                                    §§push(this.§+W§);
                                    if(!_loc2_)
                                    {
                                       addr34:
                                       if(_loc3_ || param1)
                                       {
                                          §§pop().addEventListener(ColorFadeLayerEvent.§?#§,this.§<!Q§);
                                          if(!(_loc3_ || _loc2_))
                                          {
                                             continue;
                                          }
                                          if(!_loc3_)
                                          {
                                             if(!(_loc3_ || _loc2_))
                                             {
                                                this.close();
                                             }
                                             else
                                             {
                                                addr126:
                                             }
                                             continue loop6;
                                             break loop6;
                                          }
                                          if(!_loc3_)
                                          {
                                             break loop6;
                                          }
                                          if(_loc3_)
                                          {
                                             return;
                                          }
                                          addr134:
                                          while(true)
                                          {
                                             §§push(this.§+W§);
                                             break loop8;
                                          }
                                       }
                                       break;
                                    }
                                    continue loop7;
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop() == null);
                                    if(_loc2_ && _loc3_)
                                    {
                                       break;
                                    }
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       continue loop0;
                                    }
                                    continue loop1;
                                    §§goto(addr34);
                                 }
                                 addr133:
                                 while(true)
                                 {
                                    §§pop();
                                    §§goto(addr134);
                                 }
                              }
                           }
                           return;
                        }
                        §§goto(addr126);
                     }
                     addr114:
                  }
                  §§goto(addr133);
               }
            }
         }
         §§goto(addr87);
      }
      
      private function §<!Q§(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
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
            if(!this.§`!-§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§+W§);
                  if(!(_loc2_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        if(_loc3_ || _loc2_)
                        {
                           §§push(this.§+W§);
                           loop1:
                           while(true)
                           {
                              §§pop().removeEventListener(ColorFadeLayerEvent.§?#§,this.§<!Q§);
                              addr89:
                              loop12:
                              while(true)
                              {
                                 mClip.removeChild(this.§+W§);
                                 addr56:
                                 while(true)
                                 {
                                    if(_loc3_ || _loc2_)
                                    {
                                       continue loop1;
                                    }
                                    continue loop12;
                                    addr49:
                                    §§pop().clean();
                                    do
                                    {
                                       this.§+W§ = null;
                                    }
                                    while(!(_loc3_ || _loc3_));
                                    
                                    if(_loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             return;
                                          }
                                          addr93:
                                          if(true)
                                          {
                                             break loop0;
                                          }
                                          continue loop1;
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                           }
                           addr84:
                        }
                        §§goto(addr89);
                     }
                     break;
                  }
                  §§goto(addr84);
               }
               var _loc1_:§']§ = this.§?"§.getItemByName("Container_Popup");
               if(_loc3_ || _loc1_)
               {
                  if(_loc1_ != null)
                  {
                     if(_loc3_)
                     {
                        _loc1_.setVisibility(false);
                     }
                     while(true)
                     {
                        addr174:
                        if(_loc2_ && this)
                        {
                           continue;
                        }
                        if(§8!I§.§,t§ == false)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              §[&§.§>!E§();
                           }
                           loop7:
                           while(true)
                           {
                              addr123:
                              while(true)
                              {
                                 mClip.dispatchEvent(new §`_§(§`_§.§9h§,this));
                                 if(_loc3_ || this)
                                 {
                                    break;
                                 }
                                 continue loop7;
                              }
                              if(!_loc2_)
                              {
                                 addr140:
                                 if(_loc2_ && _loc2_)
                                 {
                                    while(true)
                                    {
                                       §§push(this.§?"§);
                                       addr203:
                                       while(true)
                                       {
                                          §§push(§§pop().container);
                                          addr204:
                                          while(true)
                                          {
                                             §§pop().removeComponent(this);
                                             loop10:
                                             while(true)
                                             {
                                                addr163:
                                                while(true)
                                                {
                                                   this.§`!-§ = true;
                                                   addr167:
                                                   while(true)
                                                   {
                                                      if(_loc2_ && _loc1_)
                                                      {
                                                         continue loop10;
                                                      }
                                                      §§goto(addr174);
                                                   }
                                                   continue loop10;
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr140);
                                    }
                                    addr201:
                                 }
                                 return;
                                 addr147:
                              }
                              §§goto(addr167);
                           }
                        }
                        §§goto(addr123);
                     }
                     addr225:
                  }
                  while(true)
                  {
                     §§push(this.§?"§);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(§§pop().container);
                        if(!(_loc2_ && _loc1_))
                        {
                           if(§§pop())
                           {
                              §§goto(addr201);
                           }
                           §§goto(addr163);
                        }
                        §§goto(addr204);
                     }
                     §§goto(addr203);
                     §§goto(addr225);
                  }
               }
               §§goto(addr147);
            }
            §§goto(addr93);
         }
         §§goto(addr89);
      }
   }
}
