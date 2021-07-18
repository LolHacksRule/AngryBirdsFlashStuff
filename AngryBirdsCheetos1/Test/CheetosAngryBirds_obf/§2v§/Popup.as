package §2v§
{
   import §'!D§.§?!h§;
   import §3!,§.§#x§;
   import §3!,§.ColorFadeLayerEvent;
   import §>M§.§#!a§;
   import §>P§.§5!§;
   import §`h§.§@!Z§;
   
   public class Popup extends §#!a§
   {
       
      
      private const each:Number = 0.25;
      
      protected var §8!H§:§#x§;
      
      protected var §7!;§:§5!§;
      
      private var §!!;§:Boolean = false;
      
      public function Popup(param1:XML, param2:§5!§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2.container);
            loop0:
            while(true)
            {
               this.§8!H§ = new §#x§(0,0,0,0);
               do
               {
                  param2.container.addComponent(this);
                  continue loop0;
               }
               while(!_loc4_);
               
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
         if(_loc3_ || _loc3_)
         {
            super.open(param1);
            loop0:
            while(true)
            {
               §@!Z§.§@0§();
               loop1:
               while(true)
               {
                  §§push(this.§8!H§);
                  addr91:
                  while(§§pop() != null)
                  {
                     while(true)
                     {
                        mClip.addChildAt(this.§8!H§,0);
                        continue loop1;
                     }
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  addr25:
                  return;
               }
            }
         }
         §§goto(addr87);
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(param1);
            if(!_loc3_)
            {
               §§push(!§§pop());
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop6:
                     while(true)
                     {
                        §§pop();
                        addr133:
                        while(true)
                        {
                           addr98:
                           §§push(this.§8!H§ == null);
                           if(_loc2_)
                           {
                              break;
                           }
                           continue loop6;
                        }
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                     }
                     addr132:
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this.§8!H§);
                           loop3:
                           while(true)
                           {
                              §§pop().§'H§(0,this.each);
                              while(true)
                              {
                                 if(_loc3_ && param1)
                                 {
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    continue loop2;
                                 }
                                 if(_loc2_ || this)
                                 {
                                    §§push(this.§8!H§);
                                    if(!(_loc2_ || _loc3_))
                                    {
                                       continue loop3;
                                    }
                                    if(_loc2_ || _loc2_)
                                    {
                                       §§pop().addEventListener(ColorFadeLayerEvent.§79§,this.§!! §);
                                       if(_loc2_ || _loc3_)
                                       {
                                          return;
                                       }
                                       continue;
                                    }
                                    §§goto(addr98);
                                 }
                              }
                              addr108:
                              if(!(_loc3_ && param1))
                              {
                                 return;
                                 addr125:
                              }
                              §§goto(addr133);
                           }
                        }
                     }
                     this.close();
                     §§goto(addr108);
                  }
               }
            }
            §§goto(addr132);
         }
         §§goto(addr125);
      }
      
      private function §!! §(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.close();
         }
      }
      
      override public function close() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(!this.§!!;§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§8!H§);
                  if(_loc3_)
                  {
                     if(!§§pop())
                     {
                        break;
                     }
                     while(_loc3_)
                     {
                        §§push(this.§8!H§);
                        loop2:
                        while(true)
                        {
                           §§pop().removeEventListener(ColorFadeLayerEvent.§79§,this.§!! §);
                           while(_loc3_)
                           {
                              mClip.removeChild(this.§8!H§);
                              while(!_loc2_)
                              {
                                 continue loop2;
                              }
                           }
                           §§goto(addr98);
                        }
                        if(_loc2_ && _loc3_)
                        {
                           continue;
                        }
                        while(true)
                        {
                           if(true)
                           {
                              break loop0;
                           }
                           §§goto(addr45);
                        }
                     }
                     continue;
                  }
                  §§goto(addr77);
               }
               var _loc1_:§?!h§ = this.§7!;§.getItemByName("Container_Popup");
               if(!_loc2_)
               {
                  if(_loc1_ != null)
                  {
                     if(_loc3_)
                     {
                        _loc1_.setVisibility(false);
                     }
                     while(true)
                     {
                     }
                     addr185:
                  }
                  loop8:
                  while(true)
                  {
                     §§push(this.§7!;§);
                     if(_loc3_)
                     {
                        §§push(§§pop().container);
                        if(!(_loc2_ && _loc2_))
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§7!;§);
                                 addr163:
                                 while(true)
                                 {
                                    §§push(§§pop().container);
                                    addr164:
                                    while(true)
                                    {
                                       §§pop().removeComponent(this);
                                       addr166:
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                              }
                              addr161:
                           }
                           while(true)
                           {
                              this.§!!;§ = true;
                              while(!_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    if(§&O§.§2!,§ == false)
                                    {
                                       if(_loc3_)
                                       {
                                          if(_loc2_)
                                          {
                                             continue loop8;
                                          }
                                          §@!Z§.§,R§();
                                       }
                                       while(_loc3_)
                                       {
                                          while(true)
                                          {
                                          }
                                       }
                                       continue;
                                       addr135:
                                    }
                                    while(true)
                                    {
                                       mClip.dispatchEvent(new §2l§(§2l§.§[6§,this));
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       §§goto(addr135);
                                    }
                                    return;
                                 }
                                 §§goto(addr161);
                              }
                              §§goto(addr166);
                           }
                        }
                        §§goto(addr164);
                     }
                     §§goto(addr163);
                  }
               }
               §§goto(addr137);
            }
            addr98:
            return;
         }
         §§goto(addr43);
      }
   }
}
