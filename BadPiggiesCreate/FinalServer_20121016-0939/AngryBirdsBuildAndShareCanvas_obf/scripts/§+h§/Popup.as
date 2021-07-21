package §+h§
{
   import §%c§.§=!X§;
   import §'!A§.§-!2§;
   import §'p§.§"S§;
   import §1"2§.§'s§;
   import §[!w§.§4!i§;
   import §[!w§.ColorFadeLayerEvent;
   
   public class Popup extends §"S§
   {
      
      public static const §="0§:int = 0;
      
      public static const §00§:int = 1;
      
      public static const §-8§:int = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §="0§ = 0;
            while(true)
            {
               §00§ = 1;
               §§goto(addr62);
            }
         }
         addr62:
         while(true)
         {
            §-8§ = 2;
            if(_loc2_)
            {
               if(_loc2_ || Popup)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected const §0!]§:Number = 0.25;
      
      protected var §?!+§:§4!i§;
      
      protected var §&!D§:§'s§;
      
      protected var §["5§:Boolean = false;
      
      protected var §7I§:Number = 0.7;
      
      private var §5"%§:int = 0;
      
      private var §>!+§:Boolean = false;
      
      public function Popup(param1:XML, param2:§'s§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super(param1,param2.container);
            while(true)
            {
               this.§?!+§ = new §4!i§(0,0,0,0);
               loop1:
               while(_loc4_ || param2)
               {
                  param2.container.§;!R§(this);
                  while(true)
                  {
                     this.§&!D§ = param2;
                     if(!_loc3_)
                     {
                        if(!(_loc3_ && param2))
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr58);
      }
      
      public function deActivate() : void
      {
      }
      
      public function get isOpen() : Boolean
      {
         return this.§>!+§;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super.open(param1);
            loop0:
            while(true)
            {
               §=!X§.pause();
               while(true)
               {
                  this.§>!+§ = true;
                  do
                  {
                     mClip.addChildAt(this.§?!+§,0);
                     continue loop0;
                  }
                  while(!_loc2_);
                  
                  addr65:
                  if(_loc3_ && _loc2_)
                  {
                     continue;
                  }
                  this.§?!+§.§>=§(this.§7I§,this.§0!]§);
                  §§goto(addr79);
               }
            }
         }
         §§goto(addr24);
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(param1);
            while(true)
            {
               §§push(!§§pop());
               if(_loc3_ || _loc2_)
               {
                  if(§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc3_ || _loc3_)
                           {
                              if(!_loc2_)
                              {
                                 this.close();
                              }
                              else
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§push(this.§?!+§);
                                    addr92:
                                    while(true)
                                    {
                                       §§push(§§pop() == null);
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          break;
                                       }
                                       continue loop5;
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                        else
                        {
                           loop2:
                           while(true)
                           {
                              §§push(this.§?!+§);
                              loop3:
                              while(!_loc2_)
                              {
                                 §§pop().§>=§(0,this.§0!]§);
                                 loop4:
                                 while(_loc3_ || this)
                                 {
                                    while(true)
                                    {
                                       §§push(this.§?!+§);
                                       if(_loc3_ || this)
                                       {
                                          §§pop().addEventListener(ColorFadeLayerEvent.§-2§,this.§5">§);
                                          if(!(_loc3_ || param1))
                                          {
                                             continue loop4;
                                          }
                                          §§goto(addr51);
                                          continue loop4;
                                       }
                                       continue loop3;
                                    }
                                    return;
                                 }
                                 if(_loc2_ && this)
                                 {
                                    break loop2;
                                 }
                                 continue loop2;
                              }
                              §§goto(addr92);
                           }
                        }
                        return;
                     }
                     continue;
                     addr108:
                  }
               }
               §§goto(addr143);
            }
         }
         §§goto(addr78);
      }
      
      protected function §5">§(param1:ColorFadeLayerEvent) : void
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§>!+§ = false;
            loop0:
            while(true)
            {
               if(!this.§["5§)
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§?!+§);
                     loop2:
                     while(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this.§?!+§);
                           loop4:
                           while(true)
                           {
                              §§pop().removeEventListener(ColorFadeLayerEvent.§-2§,this.§5">§);
                              loop5:
                              while(true)
                              {
                                 mClip.removeChild(this.§?!+§);
                                 loop6:
                                 while(!_loc2_)
                                 {
                                    while(true)
                                    {
                                       §§push(this.§?!+§);
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       if(_loc3_ || this)
                                       {
                                          §§pop().clean();
                                          do
                                          {
                                             if(_loc3_ || this)
                                             {
                                                if(!_loc2_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         return;
                                                      }
                                                      addr99:
                                                      continue;
                                                   }
                                                   if(!_loc2_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop5;
                                             }
                                             continue loop6;
                                          }
                                          while(this.§?!+§ = null, !(_loc3_ || _loc2_));
                                          
                                          while(true)
                                          {
                                             if(true)
                                             {
                                                break loop2;
                                             }
                                             §§goto(addr38);
                                          }
                                          continue loop6;
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
                     var _loc1_:§-!2§ = this.§&!D§.getItemByName("Container_Popup");
                     if(_loc3_)
                     {
                        §§push(this.§&!D§);
                        if(!_loc2_)
                        {
                           §§push(§§pop().container);
                           if(!(_loc2_ && _loc3_))
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(this.§&!D§);
                                    addr186:
                                    while(true)
                                    {
                                       §§push(§§pop().container);
                                       addr187:
                                       while(true)
                                       {
                                          §§pop().removeComponent(this);
                                          addr189:
                                          while(true)
                                          {
                                          }
                                       }
                                    }
                                    addr135:
                                    if(!(_loc3_ || _loc1_))
                                    {
                                       continue;
                                    }
                                    return;
                                    addr142:
                                 }
                              }
                              loop11:
                              while(true)
                              {
                                 this.§["5§ = true;
                                 addr160:
                                 loop15:
                                 while(true)
                                 {
                                    §=!X§.resume();
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          if(_loc2_ && this)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop15;
                                    }
                                    continue loop11;
                                 }
                                 §§goto(addr142);
                              }
                           }
                           §§goto(addr187);
                        }
                        §§goto(addr186);
                     }
                     §§goto(addr160);
                  }
               }
               §§goto(addr99);
            }
         }
         §§goto(addr36);
      }
      
      public function get §0!x§() : int
      {
         return this.§5"%§;
      }
      
      public function set §0!x§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§5"%§ = param1;
         }
      }
   }
}
