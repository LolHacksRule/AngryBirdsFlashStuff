package §_-6C§
{
   import §_-0AB§.§_-cx§;
   import §_-0AB§.§_-dd§;
   import §_-MN§.§_-rR§;
   import flash.display.MovieClip;
   
   public class §_-Mu§ extends §_-rR§
   {
       
      
      private var §_-iN§:§_-dd§;
      
      public function §_-Mu§(param1:XML, param2:§_-gt§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param1,param2,param3);
            while(true)
            {
               if(mClip)
               {
                  loop1:
                  while(true)
                  {
                     mClip.buttonMode = true;
                     while(true)
                     {
                        mClip.mouseChildren = false;
                        loop3:
                        while(true)
                        {
                           mClip.tabEnabled = false;
                           while(!_loc4_)
                           {
                              while(_loc5_ || param2)
                              {
                                 continue loop3;
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               while(true)
               {
                  §_-Ay§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                  §§goto(addr72);
               }
            }
         }
         §§goto(addr65);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(param1 != §_-K1§)
            {
               mClip.useHandCursor = true;
               loop0:
               while(true)
               {
                  mClip.buttonMode = true;
                  addr90:
                  while(true)
                  {
                     mClip.mouseChildren = false;
                     continue loop0;
                  }
               }
            }
            while(true)
            {
               mClip.useHandCursor = false;
               §§goto(addr109);
            }
         }
         §§goto(addr61);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(§_-pb§)
            {
               loop0:
               while(true)
               {
                  §§push(param1);
                  loop1:
                  while(§§pop() != §_-01m§)
                  {
                     §§push(param1);
                     if(!(_loc3_ || this))
                     {
                        continue;
                     }
                     if(§§pop() == §_-k0§)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           §§push(this.§_-iN§);
                           while(true)
                           {
                              if(!(_loc2_ && param1))
                              {
                                 §§push(null);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       loop3:
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             §§push(this.§_-iN§);
                                             loop4:
                                             while(true)
                                             {
                                                §§pop().stop();
                                                addr166:
                                                loop17:
                                                while(true)
                                                {
                                                   addr84:
                                                   while(true)
                                                   {
                                                      this.§_-iN§ = §_-cx§.§_-3S§.§_-Wf§(mClip,{
                                                         "scaleX":1,
                                                         "scaleY":1
                                                      },null,0.1);
                                                      while(true)
                                                      {
                                                         if(!(_loc2_ && param1))
                                                         {
                                                            if(_loc2_ && _loc3_)
                                                            {
                                                               break loop1;
                                                            }
                                                            continue loop4;
                                                         }
                                                         continue loop17;
                                                         addr67:
                                                         loop12:
                                                         while(_loc3_ || param1)
                                                         {
                                                            continue loop3;
                                                            loop18:
                                                            while(true)
                                                            {
                                                               super.setComponentVisualState(param1);
                                                               if(!(_loc3_ || _loc3_))
                                                               {
                                                                  continue loop12;
                                                               }
                                                               if(!_loc2_)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               addr208:
                                                               while(_loc3_)
                                                               {
                                                                  §§push(this.§_-iN§);
                                                                  while(true)
                                                                  {
                                                                     §§pop().play();
                                                                     addr171:
                                                                     while(true)
                                                                     {
                                                                        continue loop18;
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(this.§_-iN§);
                                                                  addr210:
                                                                  while(true)
                                                                  {
                                                                     §§pop().stop();
                                                                     addr211:
                                                                     while(true)
                                                                     {
                                                                        addr182:
                                                                        while(true)
                                                                        {
                                                                           this.§_-iN§ = §_-cx§.§_-3S§.§_-Wf§(mClip,{
                                                                              "scaleX":1.1,
                                                                              "scaleY":1.1
                                                                           },null,0.1);
                                                                           §§goto(addr196);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr196:
                                                            }
                                                            return;
                                                         }
                                                      }
                                                      continue loop17;
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr211);
                                       }
                                    }
                                    §§goto(addr84);
                                 }
                                 while(true)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       §§goto(addr208);
                                    }
                                    §§goto(addr182);
                                 }
                                 addr207:
                              }
                              addr206:
                              while(true)
                              {
                                 §§goto(addr207);
                              }
                              if(!(_loc3_ || this))
                              {
                                 continue;
                              }
                              if(_loc3_)
                              {
                                 if(_loc3_ || _loc2_)
                                 {
                                    §§pop().play();
                                    §§goto(addr67);
                                 }
                                 §§goto(addr210);
                              }
                              §§goto(addr170);
                           }
                        }
                        §§goto(addr166);
                     }
                  }
                  addr204:
                  while(true)
                  {
                     §§goto(addr206);
                  }
               }
            }
            §§goto(addr29);
         }
         §§goto(addr204);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§_-iN§);
            if(_loc3_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && this))
                  {
                     addr70:
                     this.§_-iN§.stop();
                     addr71:
                     while(true)
                     {
                     }
                     addr71:
                  }
                  §§goto(addr71);
               }
               while(true)
               {
                  super.viewWidth = param1;
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§goto(addr71);
               }
               return;
            }
         }
         §§goto(addr70);
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§_-iN§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr50:
                     this.§_-iN§.stop();
                     addr51:
                     while(true)
                     {
                     }
                     addr51:
                  }
                  §§goto(addr51);
               }
               while(true)
               {
                  super.viewHeight = param1;
                  if(_loc3_)
                  {
                     break;
                  }
                  §§goto(addr51);
               }
               return;
            }
         }
         §§goto(addr50);
      }
   }
}
