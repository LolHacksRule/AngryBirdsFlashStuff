package §5!Y§
{
   import §%i§.§=!t§;
   import §1!t§.§!>§;
   import §>0§.§3"K§;
   import §>0§.ColorFadeLayerEvent;
   import §@!"§.§?l§;
   import §`"%§.§`_§;
   
   public class Popup extends §=!t§
   {
      
      public static const §!t§:int = 0;
      
      public static const §[M§:int = 1;
      
      public static const §>!L§:int = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §!t§ = 0;
            while(true)
            {
               §[M§ = 1;
               §§goto(addr52);
            }
         }
         addr52:
         while(true)
         {
            §>!L§ = 2;
            if(_loc2_)
            {
               if(!(_loc1_ && Popup))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected const §4!r§:Number = 0.25;
      
      protected var §;!@§:§3"K§;
      
      protected var §[w§:§`_§;
      
      protected var §",§:Boolean = false;
      
      protected var §?Y§:Number = 0.7;
      
      private var §>[§:int = 0;
      
      private var §==§:Boolean = false;
      
      public function Popup(param1:XML, param2:§`_§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2.container);
            while(true)
            {
               this.§;!@§ = new §3"K§(0,0,0,0);
               addr73:
               while(_loc4_)
               {
               }
            }
         }
         while(true)
         {
            param2.container.§2!I§(this);
            while(_loc4_)
            {
               this.§[w§ = param2;
               if(_loc4_ || param1)
               {
                  return;
               }
            }
            §§goto(addr73);
         }
      }
      
      public function deActivate() : void
      {
      }
      
      public function get isOpen() : Boolean
      {
         return this.§==§;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.open(param1);
            while(true)
            {
               §?l§.pause();
               addr58:
               if(!(_loc3_ || this))
               {
                  continue;
               }
               addr20:
               return;
               addr65:
            }
         }
         while(true)
         {
            this.§==§ = true;
            loop2:
            while(!_loc2_)
            {
               mClip.addChildAt(this.§;!@§,0);
               while(true)
               {
                  if(_loc2_)
                  {
                     continue loop2;
                  }
                  if(param1)
                  {
                     if(!_loc2_)
                     {
                        continue;
                     }
                  }
                  else
                  {
                     §§push(this.§;!@§);
                     if(!_loc3_)
                     {
                        break;
                     }
                     §§push(this.§?Y§);
                     if(!(_loc2_ && _loc3_))
                     {
                        §§pop().§^!0§(§§pop());
                        if(_loc3_ || _loc3_)
                        {
                           §§goto(addr58);
                        }
                     }
                     else
                     {
                        addr92:
                        §§pop().§!!4§(§§pop(),this.§4!r§);
                     }
                  }
                  §§goto(addr20);
               }
               §§goto(addr92);
               §§push(this.§?Y§);
            }
         }
         §§goto(addr65);
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(param1);
            if(!_loc3_)
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
                              §§push(this.§;!@§);
                              loop3:
                              while(true)
                              {
                                 §§pop().§!!4§(0,this.§4!r§);
                                 while(true)
                                 {
                                    if(_loc2_ || _loc3_)
                                    {
                                       if(!_loc3_)
                                       {
                                          §§push(this.§;!@§);
                                          if(_loc3_ && _loc3_)
                                          {
                                             continue loop3;
                                          }
                                          if(_loc2_ || param1)
                                          {
                                             §§pop().addEventListener(ColorFadeLayerEvent.§>!u§,this.§ "0§);
                                             if(_loc2_ || _loc3_)
                                             {
                                                return;
                                             }
                                             continue;
                                          }
                                          addr98:
                                          §§push(§§pop() == null);
                                          if(!_loc3_)
                                          {
                                             continue loop0;
                                          }
                                          addr137:
                                          loop6:
                                          while(true)
                                          {
                                             §§pop();
                                             addr138:
                                             while(true)
                                             {
                                                §§goto(addr98);
                                                continue loop6;
                                             }
                                             continue loop0;
                                          }
                                       }
                                    }
                                    else
                                    {
                                       if(!(_loc2_ || this))
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          continue loop2;
                                       }
                                    }
                                 }
                                 addr123:
                                 if(!(_loc3_ && param1))
                                 {
                                    break loop1;
                                 }
                                 §§goto(addr138);
                              }
                           }
                        }
                        this.close();
                        §§goto(addr123);
                     }
                     return;
                     addr119:
                  }
               }
            }
            §§goto(addr137);
         }
         §§goto(addr94);
      }
      
      protected function § "0§(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.close();
         }
      }
      
      override public function close() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§==§ = false;
            loop0:
            while(!this.§",§)
            {
               loop1:
               while(true)
               {
                  §§push(this.§;!@§);
                  loop2:
                  while(§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§push(this.§;!@§);
                        loop4:
                        while(true)
                        {
                           §§pop().removeEventListener(ColorFadeLayerEvent.§>!u§,this.§ "0§);
                           addr98:
                           loop5:
                           while(true)
                           {
                              mClip.removeChild(this.§;!@§);
                              loop6:
                              while(_loc2_)
                              {
                                 if(!(_loc2_ || _loc2_))
                                 {
                                    break loop0;
                                 }
                                 loop7:
                                 while(true)
                                 {
                                    §§push(this.§;!@§);
                                    if(_loc3_ && _loc1_)
                                    {
                                       break;
                                    }
                                    if(!_loc3_)
                                    {
                                       §§pop().clean();
                                       while(_loc2_)
                                       {
                                          this.§;!@§ = null;
                                          if(_loc2_ || this)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(_loc2_ || this)
                                                {
                                                   if(true)
                                                   {
                                                      break loop2;
                                                   }
                                                   continue loop7;
                                                }
                                                if(!_loc3_)
                                                {
                                                   continue loop1;
                                                }
                                                continue loop0;
                                             }
                                             continue loop6;
                                          }
                                       }
                                       continue loop5;
                                    }
                                    continue loop2;
                                 }
                                 continue loop4;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
                  var _loc1_:§!>§ = this.§[w§.getItemByName("Container_Popup");
                  if(!(_loc3_ && _loc1_))
                  {
                     §§push(this.§[w§);
                     if(!_loc3_)
                     {
                        §§push(§§pop().container);
                        if(_loc2_)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§[w§);
                                 addr179:
                                 while(true)
                                 {
                                    §§push(§§pop().container);
                                    addr180:
                                    while(true)
                                    {
                                       §§pop().§<B§(this);
                                       addr182:
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                              }
                              addr177:
                           }
                           loop10:
                           while(true)
                           {
                              this.§",§ = true;
                              while(!(_loc3_ && _loc1_))
                              {
                                 mClip.dispatchEvent(new §>"E§(§>"E§.§6"-§,this));
                                 if(!(_loc2_ || this))
                                 {
                                    continue;
                                 }
                                 if(!_loc3_)
                                 {
                                    break loop10;
                                 }
                                 §§goto(addr177);
                              }
                              §§goto(addr182);
                           }
                           return;
                           addr156:
                        }
                        §§goto(addr180);
                     }
                     §§goto(addr179);
                  }
                  §§goto(addr156);
               }
            }
            return;
         }
         §§goto(addr98);
      }
      
      public function get §""W§() : int
      {
         return this.§>[§;
      }
      
      public function set §""W§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§>[§ = param1;
         }
      }
   }
}
