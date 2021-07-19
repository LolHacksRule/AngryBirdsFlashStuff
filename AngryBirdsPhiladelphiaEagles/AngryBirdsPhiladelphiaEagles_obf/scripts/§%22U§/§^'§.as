package §"U§
{
   import §'K§.§3C§;
   import §'K§.§[!9§;
   import §6v§.§@V§;
   import flash.display.MovieClip;
   
   public class §^'§ extends §@V§
   {
       
      
      private var §6;§:§[!9§;
      
      public function §^'§(param1:XML, param2:§[Q§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            super(param1,param2,param3);
            targetSprite.buttonMode = true;
            targetSprite.mouseChildren = false;
            targetSprite.tabEnabled = false;
         }
         §9A§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §9A§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §9A§(§^! §,param1.@MouseOver);
         §9A§(§&U§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(param1 != §!%§)
         {
            targetSprite.useHandCursor = true;
            targetSprite.buttonMode = true;
            if(_loc3_)
            {
               loop0:
               while(!_loc2_)
               {
                  while(true)
                  {
                     targetSprite.useHandCursor = false;
                     targetSprite.buttonMode = false;
                     continue loop0;
                  }
               }
               loop2:
               while(true)
               {
                  super.setComponentState(param1);
                  if(_loc2_)
                  {
                     break;
                  }
                  addr52:
                  while(true)
                  {
                     continue loop2;
                  }
               }
               return;
            }
            targetSprite.mouseChildren = false;
            §§goto(addr52);
         }
         §§goto(addr77);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(§;R§)
            {
               loop0:
               while(true)
               {
                  §§push(param1);
                  loop1:
                  while(§§pop() != §+R§)
                  {
                     §§push(param1);
                     if(_loc2_)
                     {
                        continue;
                     }
                     if(§§pop() == §1V§)
                     {
                        loop2:
                        while(true)
                        {
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                           §§push(this.§6;§);
                           if(!_loc2_)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§push(null);
                                    if(_loc3_ || param1)
                                    {
                                       if(§§pop() != §§pop())
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             §§push(this.§6;§);
                                             addr137:
                                             while(true)
                                             {
                                                §§pop().stop();
                                                loop5:
                                                while(true)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         if(_loc2_ && param1)
                                                         {
                                                            break loop1;
                                                         }
                                                         addr149:
                                                         while(true)
                                                         {
                                                            this.§6;§ = §3C§.§>o§.§<t§(mClip,{
                                                               "scaleX":1,
                                                               "scaleY":1
                                                            },null,0.1);
                                                            if(!(_loc2_ && param1))
                                                            {
                                                               if(_loc3_ || _loc2_)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               continue loop7;
                                                            }
                                                            continue loop5;
                                                            §§goto(addr149);
                                                         }
                                                         this.§6;§ = §3C§.§>o§.§<t§(mClip,{
                                                            "scaleX":1.1,
                                                            "scaleY":1.1
                                                         },null,0.1);
                                                         this.§6;§.play();
                                                         while(true)
                                                         {
                                                            super.setComponentVisualState(param1);
                                                            if(!_loc3_)
                                                            {
                                                               addr51:
                                                               continue;
                                                            }
                                                            if(!_loc2_)
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr179);
                                                         }
                                                         addr179:
                                                         return;
                                                         addr192:
                                                      }
                                                      addr189:
                                                      §§push(this.§6;§);
                                                      break loop2;
                                                   }
                                                   §§goto(addr192);
                                                }
                                             }
                                          }
                                          addr135:
                                       }
                                       §§goto(addr52);
                                    }
                                    addr188:
                                    if(§§pop() != §§pop())
                                    {
                                       §§goto(addr189);
                                    }
                                    §§goto(addr165);
                                 }
                                 addr187:
                                 §§goto(addr188);
                                 §§push(null);
                              }
                              break;
                           }
                           §§goto(addr137);
                        }
                        §§pop().stop();
                        §§goto(addr165);
                     }
                     §§goto(addr29);
                  }
                  §§goto(addr187);
               }
            }
            §§goto(addr165);
         }
         §§goto(addr135);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§6;§);
            if(_loc2_ || _loc3_)
            {
               if(§§pop())
               {
                  addr57:
                  while(true)
                  {
                     §§push(this.§6;§);
                     addr59:
                     while(true)
                     {
                        §§pop().stop();
                        addr60:
                        while(true)
                        {
                        }
                     }
                  }
                  addr57:
               }
               while(true)
               {
                  super.viewWidth = param1;
                  if(_loc3_ && param1)
                  {
                     continue;
                  }
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§goto(addr57);
               }
               return;
            }
            §§goto(addr59);
         }
         §§goto(addr57);
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§6;§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc2_)
                  {
                     addr75:
                     this.§6;§.stop();
                  }
                  while(true)
                  {
                     §§goto(addr49);
                  }
               }
               addr49:
               §§goto(addr60);
            }
            §§goto(addr75);
         }
         addr60:
         while(true)
         {
            super.viewHeight = param1;
            if(_loc3_ || this)
            {
               break;
            }
            continue loop0;
         }
      }
   }
}
