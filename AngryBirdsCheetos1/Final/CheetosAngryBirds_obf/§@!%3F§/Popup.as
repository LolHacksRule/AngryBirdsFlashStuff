package §@!?§
{
   import §,j§.§<U§;
   import §0F§.§'j§;
   import §1§.§;d§;
   import §;!Q§.§"g§;
   import §;!Q§.ColorFadeLayerEvent;
   import §?m§.§7?§;
   
   public class Popup extends §<U§
   {
       
      
      private const §2!H§:Number = 0.25;
      
      protected var §[2§:§"g§;
      
      protected var §<?§:§'j§;
      
      private var §,![§:Boolean = false;
      
      public function Popup(param1:XML, param2:§'j§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2.container);
            while(true)
            {
               this.§[2§ = new §"g§(0,0,0,0);
               §§goto(addr75);
            }
         }
         addr75:
         while(true)
         {
            param2.container.addComponent(this);
            do
            {
               this.§<?§ = param2;
            }
            while(!_loc4_);
            
            if(!(_loc3_ && param2))
            {
               if(_loc4_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.open(param1);
            loop0:
            do
            {
               §7?§.§3J§();
               loop1:
               while(true)
               {
                  mClip.addChildAt(this.§[2§,0);
                  do
                  {
                     if(_loc2_)
                     {
                        continue loop1;
                     }
                     if(param1)
                     {
                        continue;
                     }
                     §§push(this.§[2§);
                     if(_loc3_)
                     {
                        §§push(0.7);
                        if(!_loc2_)
                        {
                           §§pop().§6!Y§(§§pop());
                           if(!_loc2_)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 break loop1;
                              }
                              continue;
                           }
                        }
                        else
                        {
                           addr75:
                           §§pop().§#R§(§§pop(),this.§2!H§);
                        }
                        addr20:
                        return;
                        addr78:
                     }
                     else
                     {
                        addr74:
                     }
                     §§push(0.7);
                     §§goto(addr75);
                  }
                  while(_loc2_ && this);
                  
                  continue loop0;
               }
               §§goto(addr20);
            }
            while(_loc2_ && param1);
            
            §§goto(addr74);
            §§push(this.§[2§);
         }
         §§goto(addr78);
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(param1);
            while(true)
            {
               §§push(!§§pop());
               if(_loc3_ || _loc3_)
               {
                  if(!§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        §§pop();
                        addr139:
                        while(true)
                        {
                           §§push(this.§[2§);
                           continue loop5;
                        }
                     }
                     addr138:
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this.§[2§);
                           loop3:
                           while(true)
                           {
                              §§pop().§#R§(0,this.§2!H§);
                              loop4:
                              while(_loc3_)
                              {
                                 if(_loc3_ || this)
                                 {
                                    while(true)
                                    {
                                       §§push(this.§[2§);
                                       if(!_loc3_)
                                       {
                                          continue loop3;
                                       }
                                       if(_loc3_ || param1)
                                       {
                                          §§pop().addEventListener(ColorFadeLayerEvent.§[!H§,this.§&!9§);
                                          if(_loc2_ && this)
                                          {
                                             continue loop4;
                                          }
                                          if(_loc2_ && param1)
                                          {
                                             continue loop2;
                                          }
                                          if(!(_loc2_ && param1))
                                          {
                                             break;
                                          }
                                          §§goto(addr139);
                                       }
                                       §§goto(addr101);
                                    }
                                    return;
                                    addr94:
                                 }
                                 addr114:
                                 this.close();
                                 break;
                              }
                              return;
                           }
                        }
                     }
                     §§goto(addr114);
                  }
               }
               §§goto(addr138);
            }
         }
         §§goto(addr94);
      }
      
      private function §&!9§(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.close();
         }
      }
      
      override public function close() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!this.§,![§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§[2§);
                  loop1:
                  while(§§pop())
                  {
                     loop2:
                     while(!_loc3_)
                     {
                        if(!(_loc2_ || this))
                        {
                           §§goto(addr92);
                        }
                        while(true)
                        {
                           §§push(this.§[2§);
                           loop16:
                           while(true)
                           {
                              §§pop().removeEventListener(ColorFadeLayerEvent.§[!H§,this.§&!9§);
                              loop17:
                              while(true)
                              {
                                 mClip.removeChild(this.§[2§);
                                 while(true)
                                 {
                                    addr46:
                                    while(true)
                                    {
                                       §§push(this.§[2§);
                                       if(_loc3_)
                                       {
                                          continue loop16;
                                       }
                                       if(!(_loc2_ || _loc3_))
                                       {
                                          break;
                                       }
                                       §§pop().clean();
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             continue;
                                          }
                                          continue loop2;
                                       }
                                    }
                                    continue loop1;
                                    if(!(_loc3_ && this))
                                    {
                                       if(_loc2_ || _loc3_)
                                       {
                                          if(false)
                                          {
                                             §§goto(addr46);
                                          }
                                          break loop1;
                                       }
                                       continue loop17;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     continue loop0;
                  }
                  var _loc1_:§;d§ = this.§<?§.getItemByName("Container_Popup");
                  if(!(_loc3_ && _loc2_))
                  {
                     if(_loc1_ != null)
                     {
                        while(true)
                        {
                           _loc1_.setVisibility(false);
                           addr219:
                           while(true)
                           {
                           }
                        }
                        addr216:
                     }
                     while(true)
                     {
                        §§push(this.§<?§);
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(§§pop().container);
                           if(!(_loc3_ && _loc1_))
                           {
                              if(§§pop())
                              {
                                 while(!_loc3_)
                                 {
                                    if(!_loc3_)
                                    {
                                       §§push(this.§<?§);
                                       while(true)
                                       {
                                          §§push(§§pop().container);
                                          addr200:
                                          while(true)
                                          {
                                             §§pop().removeComponent(this);
                                             addr212:
                                             while(true)
                                             {
                                             }
                                          }
                                       }
                                       addr199:
                                    }
                                    else
                                    {
                                       §§goto(addr216);
                                    }
                                    addr152:
                                    if(_loc3_ && _loc1_)
                                    {
                                       continue;
                                    }
                                    §7?§.§]!1§();
                                    loop10:
                                    while(!(_loc3_ && this))
                                    {
                                       while(true)
                                       {
                                          mClip.dispatchEvent(new §@9§(§@9§.§^W§,this));
                                          if(_loc3_ && _loc2_)
                                          {
                                             continue loop10;
                                          }
                                          addr137:
                                          if(_loc2_ || _loc3_)
                                          {
                                             break;
                                          }
                                          addr150:
                                          while(!_loc3_)
                                          {
                                             §§goto(addr152);
                                             §§goto(addr137);
                                          }
                                          §§goto(addr212);
                                       }
                                       return;
                                    }
                                    while(true)
                                    {
                                       if(§0!U§.§84§ == false)
                                       {
                                          §§goto(addr150);
                                       }
                                       §§goto(addr122);
                                    }
                                    addr173:
                                 }
                                 continue;
                              }
                              while(true)
                              {
                                 this.§,![§ = true;
                                 §§goto(addr173);
                                 §§goto(addr212);
                              }
                           }
                           §§goto(addr200);
                        }
                        §§goto(addr199);
                     }
                  }
                  §§goto(addr212);
               }
            }
            addr92:
            return;
         }
         §§goto(addr81);
      }
   }
}
