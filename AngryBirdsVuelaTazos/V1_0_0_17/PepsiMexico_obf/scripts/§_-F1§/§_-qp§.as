package §_-F1§
{
   import §_-20§.§_-j5§;
   import §_-6r§.§_-h3§;
   import §_-mD§.§_-29§;
   import flash.display.MovieClip;
   
   public class §_-qp§ extends §_-h3§
   {
       
      
      private var §_-Ia§:§_-j5§;
      
      public function §_-qp§(param1:XML, param2:§_-k4§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param1,param2,param3);
         }
         if(mClip)
         {
            if(_loc4_)
            {
               mClip.buttonMode = true;
               mClip.mouseChildren = false;
               if(!_loc5_)
               {
                  mClip.tabEnabled = false;
                  addr42:
                  §_-q3§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
               }
               §§goto(addr42);
            }
            §_-q3§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
            §_-q3§(§_-Ek§,param1.@MouseOver);
            §_-q3§(§_-6q§,param1.@MouseOut);
            return;
         }
         §§goto(addr42);
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
         if(!_loc2_)
         {
            if(param1 == §_-By§)
            {
               mClip.useHandCursor = false;
               mClip.buttonMode = false;
               addr56:
               super.setComponentState(param1);
               addr22:
            }
            else
            {
               mClip.useHandCursor = true;
               mClip.buttonMode = true;
               mClip.mouseChildren = false;
               if(_loc3_ || this)
               {
                  §§goto(addr56);
               }
            }
            return;
         }
         §§goto(addr22);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§_-uD§)
            {
               §§push(param1);
               if(!(_loc2_ && this))
               {
                  if(§§pop() == §_-pm§)
                  {
                     §§push(this.§_-Ia§);
                     if(!_loc2_)
                     {
                        §§push(null);
                        if(!_loc2_)
                        {
                           if(§§pop() != §§pop())
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§push(this.§_-Ia§);
                                 if(_loc3_ || param1)
                                 {
                                    §§pop().stop();
                                 }
                                 addr107:
                                 §§pop().stop();
                                 this.§_-Ia§ = §_-29§.§_-NW§(mClip,{
                                    "scaleX":1,
                                    "scaleY":1
                                 },null,0.1);
                                 addr129:
                                 this.§_-Ia§.play();
                                 addr130:
                                 super.setComponentVisualState(param1);
                                 addr133:
                                 return;
                                 addr108:
                              }
                              §§goto(addr133);
                           }
                           this.§_-Ia§ = §_-29§.§_-NW§(mClip,{
                              "scaleX":1.1,
                              "scaleY":1.1
                           },null,0.1);
                           §§push(this.§_-Ia§);
                           if(!_loc2_)
                           {
                              §§pop().play();
                              if(_loc3_ || _loc2_)
                              {
                                 §§goto(addr130);
                              }
                              else
                              {
                                 addr90:
                                 §§push(this.§_-Ia§);
                                 if(!_loc2_)
                                 {
                                    addr95:
                                    if(§§pop() != null)
                                    {
                                       if(!_loc2_)
                                       {
                                          §§push(this.§_-Ia§);
                                          if(!(_loc2_ && param1))
                                          {
                                             §§goto(addr107);
                                          }
                                          §§goto(addr129);
                                       }
                                       §§goto(addr107);
                                    }
                                    §§goto(addr108);
                                 }
                                 §§goto(addr107);
                              }
                           }
                           §§goto(addr107);
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr107);
                  }
                  else
                  {
                     §§push(param1);
                  }
                  §§goto(addr107);
               }
               if(§§pop() == §_-Wy§)
               {
                  if(_loc3_)
                  {
                     §§goto(addr90);
                  }
                  §§goto(addr107);
               }
            }
         }
         §§goto(addr107);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§_-Ia§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc3_ || param1)
                  {
                     §§goto(addr44);
                  }
               }
               §§goto(addr47);
            }
            addr44:
            this.§_-Ia§.stop();
            §§goto(addr42);
         }
         addr42:
         if(!_loc2_)
         {
            addr47:
            super.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§_-Ia§);
            if(!(_loc2_ && this))
            {
               if(!§§pop())
               {
               }
               §§goto(addr57);
            }
            §§pop().stop();
            if(!_loc3_)
            {
            }
            §§goto(addr57);
         }
         addr57:
         if(!(_loc2_ && param1))
         {
            §§push(this.§_-Ia§);
         }
         super.viewHeight = param1;
      }
   }
}
