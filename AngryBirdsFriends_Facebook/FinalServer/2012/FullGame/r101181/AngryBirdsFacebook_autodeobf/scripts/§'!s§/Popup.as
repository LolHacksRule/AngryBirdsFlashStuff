package §'!s§
{
   import §#^§.§7!A§;
   import §&q§.§%1§;
   import §&q§.ColorFadeLayerEvent;
   import §2!i§.§7'§;
   import §4!e§.§`'§;
   import §]!A§.;
   
   public class Popup extends §`'§
   {
      
      public static const §^!]§:int = 0;
      
      public static const §%!x§:int = 1;
      
      public static const §97§:int = 2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §^!]§ = 0;
            while(true)
            {
               §%!x§ = 1;
               while(_loc1_)
               {
                  §97§ = 2;
                  if(_loc1_)
                  {
                     return;
                     addr39:
                  }
               }
            }
         }
         §§goto(addr39);
      }
      
      protected const §?L§:Number = 0.25;
      
      protected var §-9§:§%1§;
      
      protected var §]"3§:§7!A§;
      
      protected var §,&§:Boolean = false;
      
      protected var §?!f§:Number = 0.7;
      
      private var §-!§:int = 0;
      
      private var §>!f§:Boolean = false;
      
      public function Popup(param1:XML, param2:§7!A§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            super(param1,param2.§%4§);
            loop0:
            while(true)
            {
               this.§-9§ = new §%1§(0,0,0,0);
               while(true)
               {
                  param2.§%4§.addComponent(this);
                  addr66:
                  while(_loc4_)
                  {
                     if(!_loc3_)
                     {
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§]"3§ = param2;
            if(_loc4_ || param1)
            {
               break;
            }
            §§goto(addr66);
         }
      }
      
      public function deActivate() : void
      {
      }
      
      public function get isOpen() : Boolean
      {
         return this.§>!f§;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super.open(param1);
            while(true)
            {
               §#6§.pause();
               loop1:
               while(true)
               {
                  this.§>!f§ = true;
                  loop2:
                  while(true)
                  {
                     mClip.addChildAt(this.§-9§,0);
                     continue loop1;
                     addr85:
                     while(true)
                     {
                        if(_loc3_ || param1)
                        {
                           break loop2;
                        }
                        continue loop2;
                     }
                  }
                  addr25:
                  return;
               }
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               while(true)
               {
                  §§goto(addr80);
               }
               addr78:
            }
         }
         §§goto(addr78);
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            if(_loc2_ || param1)
            {
               §§push(!§§pop());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop2:
                           while(true)
                           {
                              §§push(this.§-9§);
                              loop3:
                              while(true)
                              {
                                 §§pop().§?!,§(0,this.§?L§);
                                 while(true)
                                 {
                                    if(!(_loc2_ || _loc3_))
                                    {
                                       if(!(_loc2_ || _loc3_))
                                       {
                                          break;
                                       }
                                       continue loop2;
                                    }
                                    §§push(this.§-9§);
                                    if(_loc3_ && _loc2_)
                                    {
                                       continue loop3;
                                    }
                                    if(!(_loc3_ && this))
                                    {
                                       §§pop().addEventListener(ColorFadeLayerEvent.§"![§,this.§0?§);
                                       if(!_loc3_)
                                       {
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             return;
                                          }
                                          addr116:
                                          this.close();
                                          break;
                                       }
                                       continue;
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop() == null);
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       continue loop0;
                                    }
                                    loop5:
                                    while(true)
                                    {
                                       §§pop();
                                       addr133:
                                       while(true)
                                       {
                                          §§goto(addr93);
                                          continue loop5;
                                       }
                                    }
                                    addr93:
                                 }
                                 if(!_loc3_)
                                 {
                                    break loop1;
                                 }
                                 §§goto(addr133);
                              }
                           }
                        }
                        §§goto(addr116);
                     }
                     return;
                     addr114:
                  }
               }
            }
            §§goto(addr132);
         }
         §§goto(addr133);
      }
      
      protected function §0?§(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.close();
         }
      }
      
      override public function close() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§>!f§ = false;
            loop0:
            while(this.§,&§)
            {
               if(_loc2_)
               {
                  if(_loc2_)
                  {
                     return;
                  }
                  continue;
               }
               while(true)
               {
                  break loop0;
                  loop3:
                  while(!(_loc3_ && _loc3_))
                  {
                     §§push(this.§-9§);
                     loop4:
                     while(true)
                     {
                        §§pop().removeEventListener(ColorFadeLayerEvent.§"![§,this.§0?§);
                        while(true)
                        {
                           mClip.removeChild(this.§-9§);
                           loop6:
                           while(_loc2_ || this)
                           {
                              while(true)
                              {
                                 §§push(this.§-9§);
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 addr44:
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§pop().clean();
                                    while(_loc2_ || _loc3_)
                                    {
                                       this.§-9§ = null;
                                       if(!(_loc2_ || _loc1_))
                                       {
                                          continue;
                                       }
                                       if(!(_loc2_ || _loc3_))
                                       {
                                          continue loop3;
                                       }
                                       while(true)
                                       {
                                          if(false)
                                          {
                                             §§goto(addr39);
                                          }
                                          §§goto(addr116);
                                       }
                                    }
                                    continue loop6;
                                 }
                                 addr76:
                                 addr116:
                                 while(§§pop())
                                 {
                                    continue loop3;
                                    §§goto(addr44);
                                 }
                                 var _loc1_:§7'§ = this.§]"3§.getItemByName("Container_Popup");
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§push(this.§]"3§);
                                    if(_loc2_ || _loc1_)
                                    {
                                       §§push(§§pop().§%4§);
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§push(this.§]"3§);
                                                addr190:
                                                while(true)
                                                {
                                                   §§push(§§pop().§%4§);
                                                   addr191:
                                                   while(true)
                                                   {
                                                      §§pop().§="2§(this);
                                                      addr193:
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                }
                                             }
                                             addr188:
                                          }
                                          loop12:
                                          while(true)
                                          {
                                             this.§,&§ = true;
                                             loop13:
                                             while(true)
                                             {
                                                §#6§.resume();
                                                while(true)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      continue loop13;
                                                   }
                                                   if(!_loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr188);
                                                }
                                                continue loop12;
                                             }
                                          }
                                       }
                                       §§goto(addr191);
                                    }
                                    §§goto(addr190);
                                 }
                                 §§goto(addr164);
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §§goto(addr76);
            }
         }
         §§goto(addr37);
      }
      
      public function get §]"5§() : int
      {
         return this.§-!§;
      }
      
      public function set §]"5§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§-!§ = param1;
         }
      }
   }
}
