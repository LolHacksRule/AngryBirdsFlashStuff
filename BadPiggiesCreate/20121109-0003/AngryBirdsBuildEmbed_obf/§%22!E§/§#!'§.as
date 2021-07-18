package §"!E§
{
   import §#!4§.§<f§;
   import §9!n§.§0Y§;
   import §9!n§.§@!T§;
   import flash.display.MovieClip;
   
   public class §#!'§ extends §<f§
   {
       
      
      private var §?x§:§0Y§;
      
      public function §#!'§(param1:XML, param2:§[!s§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         super(param1,param2,param3);
         if(mClip)
         {
            if(!(_loc5_ && param2))
            {
               mClip.buttonMode = true;
               mClip.mouseChildren = false;
               if(_loc4_ || param3)
               {
                  mClip.tabEnabled = false;
                  addr66:
                  §<!k§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                  addr71:
                  §<!k§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                  if(_loc4_ || param1)
                  {
                     §<!k§(§`"§,param1.@MouseOver);
                  }
                  §<!k§(§<H§,param1.@MouseOut);
               }
               return;
            }
            §§goto(addr71);
         }
         §§goto(addr66);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1 == §!`§)
            {
               mClip.useHandCursor = false;
               mClip.buttonMode = false;
            }
            else
            {
               mClip.useHandCursor = true;
               if(!(_loc2_ && _loc3_))
               {
                  §§goto(addr59);
               }
               §§goto(addr64);
            }
            §§goto(addr64);
         }
         addr59:
         mClip.buttonMode = true;
         if(!_loc2_)
         {
            addr64:
            mClip.mouseChildren = false;
            super.setComponentState(param1);
         }
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(§-!c§)
            {
               if(!_loc3_)
               {
                  §§push(param1);
                  if(_loc2_)
                  {
                     if(§§pop() == §8!U§)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           §§push(this.§?x§);
                           if(_loc2_)
                           {
                              §§push(null);
                              if(_loc2_)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    §§push(this.§?x§);
                                    if(_loc2_)
                                    {
                                       addr51:
                                       §§pop().stop();
                                       if(_loc2_ || _loc2_)
                                       {
                                          this.§?x§ = §@!T§.§`!t§.§8!"§(mClip,{
                                             "scaleX":1.1,
                                             "scaleY":1.1
                                          },null,0.1);
                                          addr59:
                                          §§push(this.§?x§);
                                          if(!_loc3_)
                                          {
                                             §§pop().play();
                                             if(_loc2_ || this)
                                             {
                                                addr165:
                                                super.setComponentVisualState(param1);
                                                §§goto(addr168);
                                             }
                                             else
                                             {
                                                addr155:
                                                §§push(this.§?x§);
                                             }
                                             addr168:
                                             return;
                                          }
                                       }
                                       else
                                       {
                                          addr105:
                                          §§push(this.§?x§);
                                          if(_loc2_)
                                          {
                                             addr110:
                                             if(§§pop() != null)
                                             {
                                                if(!_loc3_)
                                                {
                                                   §§push(this.§?x§);
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      §§pop().stop();
                                                      if(_loc3_ && this)
                                                      {
                                                      }
                                                      §§goto(addr155);
                                                   }
                                                   addr157:
                                                   §§pop().play();
                                                   if(_loc3_ && _loc3_)
                                                   {
                                                   }
                                                   §§goto(addr165);
                                                }
                                             }
                                             this.§?x§ = §@!T§.§`!t§.§8!"§(mClip,{
                                                "scaleX":1,
                                                "scaleY":1
                                             },null,0.1);
                                             if(_loc2_)
                                             {
                                                §§goto(addr155);
                                             }
                                             §§goto(addr165);
                                          }
                                       }
                                    }
                                    §§goto(addr157);
                                 }
                                 §§goto(addr59);
                              }
                              §§goto(addr110);
                           }
                           §§goto(addr51);
                        }
                        §§goto(addr155);
                     }
                     else
                     {
                        §§push(param1);
                     }
                     §§goto(addr165);
                  }
                  if(§§pop() == §@5§)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        §§goto(addr105);
                     }
                  }
                  §§goto(addr165);
               }
               §§goto(addr59);
            }
         }
         §§goto(addr165);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§?x§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && this))
                  {
                     addr47:
                     this.§?x§.stop();
                     if(_loc2_)
                     {
                        addr50:
                        super.viewWidth = param1;
                     }
                  }
                  return;
               }
               §§goto(addr50);
            }
         }
         §§goto(addr47);
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§?x§);
            if(!(_loc2_ && _loc3_))
            {
               if(!§§pop())
               {
               }
               §§goto(addr51);
            }
            §§pop().stop();
            if(!_loc3_)
            {
            }
            §§goto(addr51);
         }
         addr51:
         if(_loc3_)
         {
            §§push(this.§?x§);
         }
         super.viewHeight = param1;
      }
   }
}
