package §[v§
{
   import §2!5§.§";§;
   import §2!5§.§?A§;
   import §`W§.§<r§;
   import flash.display.MovieClip;
   
   public class §^P§ extends §<r§
   {
       
      
      private var §2! §:§?A§;
      
      public function §^P§(param1:XML, param2:§&F§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         super(param1,param2,param3);
         loop0:
         while(true)
         {
            if(mClip)
            {
               while(true)
               {
                  mClip.buttonMode = true;
                  do
                  {
                     mClip.mouseChildren = false;
                     mClip.tabEnabled = false;
                  }
                  while(!_loc4_);
                  
               }
               addr90:
            }
            while(true)
            {
               §`!E§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
               §`!E§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
               while(true)
               {
                  if(_loc4_)
                  {
                     if(_loc5_)
                     {
                        break;
                     }
                     continue;
                  }
                  §§goto(addr90);
               }
               continue loop0;
            }
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(param1 != §?!B§)
         {
            mClip.useHandCursor = true;
            loop0:
            while(true)
            {
               mClip.buttonMode = true;
               while(true)
               {
                  if(_loc2_)
                  {
                     continue;
                  }
               }
               addr75:
               while(true)
               {
                  continue loop0;
               }
            }
            return;
         }
         while(true)
         {
            mClip.useHandCursor = false;
            mClip.buttonMode = false;
            §§goto(addr75);
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(§!8§)
         {
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  if(§§pop() != §%i§)
                  {
                     §§push(param1);
                     if(!(_loc3_ && _loc3_))
                     {
                        if(§§pop() == §const§)
                        {
                           §§goto(addr100);
                        }
                        break;
                     }
                     continue;
                  }
                  §§push(this.§2! §);
                  loop2:
                  while(true)
                  {
                     §§push(null);
                     loop3:
                     while(true)
                     {
                        if(§§pop() != §§pop())
                        {
                           §§push(this.§2! §);
                           loop4:
                           while(true)
                           {
                              §§pop().stop();
                              loop10:
                              while(true)
                              {
                                 if(!(_loc2_ || this))
                                 {
                                    continue loop4;
                                 }
                                 §§push(null);
                                 if(_loc3_)
                                 {
                                    continue loop3;
                                 }
                                 if(§§pop() != §§pop())
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       if(!(_loc3_ && this))
                                       {
                                          §§push(this.§2! §);
                                          while(true)
                                          {
                                             §§pop().stop();
                                             addr125:
                                             while(true)
                                             {
                                             }
                                             addr86:
                                             §§push(this.§2! §);
                                             if(!_loc3_)
                                             {
                                                if(_loc2_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      §§pop().play();
                                                      if(!_loc3_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      continue loop11;
                                                   }
                                                   continue loop2;
                                                }
                                                continue loop10;
                                             }
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             break loop1;
                                          }
                                          addr147:
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    this.§2! § = §";§.§[8§.§6!$§(mClip,{
                                       "scaleX":1,
                                       "scaleY":1
                                    },null,0.1);
                                    addr67:
                                    while(!(_loc3_ && _loc3_))
                                    {
                                       if(_loc2_)
                                       {
                                          §§goto(addr86);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                §§push(this.§2! §);
                                                continue loop10;
                                             }
                                             addr162:
                                             while(true)
                                             {
                                                §§push(this.§2! §);
                                                continue loop2;
                                             }
                                          }
                                          addr100:
                                       }
                                       break loop1;
                                    }
                                    §§goto(addr125);
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           this.§2! § = §";§.§[8§.§6!$§(mClip,{
                              "scaleX":1.1,
                              "scaleY":1.1
                           },null,0.1);
                        }
                     }
                  }
                  §§goto(addr162);
               }
            }
         }
         while(true)
         {
            super.setComponentVisualState(param1);
            if(_loc2_ || _loc3_)
            {
               break;
            }
            §§goto(addr67);
         }
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§2! §);
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§2! §);
                     addr70:
                     while(true)
                     {
                        §§pop().stop();
                        addr71:
                        while(true)
                        {
                        }
                     }
                     addr50:
                     if(!(_loc3_ || _loc2_))
                     {
                        continue;
                     }
                     return;
                     addr57:
                  }
               }
               while(true)
               {
                  super.viewWidth = param1;
                  if(!_loc3_)
                  {
                     continue;
                  }
                  §§goto(addr50);
               }
               §§goto(addr57);
            }
            §§goto(addr70);
         }
         §§goto(addr71);
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§2! §);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§2! §);
                     addr70:
                     while(true)
                     {
                        §§pop().stop();
                        addr71:
                        while(true)
                        {
                        }
                     }
                  }
                  addr68:
               }
               while(true)
               {
                  super.viewHeight = param1;
                  if(_loc2_ && _loc3_)
                  {
                     continue;
                  }
                  if(_loc3_)
                  {
                     break;
                  }
                  §§goto(addr68);
               }
               return;
            }
            §§goto(addr70);
         }
         §§goto(addr71);
      }
   }
}
