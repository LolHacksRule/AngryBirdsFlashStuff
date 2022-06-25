package §9#§
{
   import §06§.§9!b§;
   import §06§.ColorFadeLayerEvent;
   import §1n§.§ C§;
   import §5i§.§4!]§;
   import §=R§.§&W§;
   import §`M§.§%^§;
   
   public class Popup extends §%^§
   {
       
      
      protected const §8!0§:Number = 0.25;
      
      protected var §++§:§9!b§;
      
      protected var §#!N§:§ C§;
      
      protected var §"!;§:Boolean = false;
      
      public function Popup(param1:XML, param2:§ C§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super(param1,param2.§>&§);
            while(true)
            {
               this.§++§ = new §9!b§(0,0,0,0);
               while(_loc3_)
               {
                  param2.§>&§.addComponent(this);
                  loop2:
                  while(_loc3_)
                  {
                     while(true)
                     {
                        this.§#!N§ = param2;
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
            §4!]§.pause();
            loop1:
            while(true)
            {
               mClip.addChildAt(this.§++§,0);
               while(true)
               {
                  if(_loc2_)
                  {
                     if(!param1)
                     {
                        §§push(this.§++§);
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(0.7);
                           if(_loc2_ || _loc2_)
                           {
                              §§pop().§]q§(§§pop());
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
                              §§pop().§&!f§(§§pop(),this.§8!0§);
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
                           §§push(this.§++§);
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
                           §§push(this.§++§);
                           loop2:
                           while(true)
                           {
                              §§pop().§&!f§(0,this.§8!0§);
                              while(true)
                              {
                                 if(_loc3_ || this)
                                 {
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       §§push(this.§++§);
                                       if(!_loc3_)
                                       {
                                          continue loop2;
                                       }
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       §§pop().addEventListener(ColorFadeLayerEvent.§<B§,this.§'F§);
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
      
      protected function §'F§(param1:ColorFadeLayerEvent) : void
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
            if(!this.§"!;§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§++§);
                  loop1:
                  while(§§pop())
                  {
                     loop11:
                     while(true)
                     {
                        §§push(this.§++§);
                        loop12:
                        while(true)
                        {
                           §§pop().removeEventListener(ColorFadeLayerEvent.§<B§,this.§'F§);
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
                                 mClip.removeChild(this.§++§);
                                 loop14:
                                 while(!(_loc2_ && _loc1_))
                                 {
                                    while(true)
                                    {
                                       §§push(this.§++§);
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
                                          this.§++§ = null;
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
                  var _loc1_:§&W§ = this.§#!N§.getItemByName("Container_Popup");
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
                                    this.§"!;§ = true;
                                    while(true)
                                    {
                                       §4!]§.resume();
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
                        §§push(this.§#!N§);
                        if(!(_loc2_ && _loc3_))
                        {
                           §§push(§§pop().§>&§);
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
