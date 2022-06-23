package §=^§
{
   import §"!&§.§ !5§;
   import §"!&§.§%!>§;
   import §@s§.§9$§;
   import flash.display.MovieClip;
   
   public class §]P§ extends §9$§
   {
       
      
      private var §2q§:§ !5§;
      
      public function §]P§(param1:XML, param2:§`f§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            super(param1,param2,param3);
            if(mClip)
            {
               mClip.buttonMode = true;
               mClip.mouseChildren = false;
               if(!_loc5_)
               {
                  mClip.tabEnabled = false;
                  §§goto(addr61);
               }
               §§goto(addr83);
            }
            addr61:
            § [§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
            if(_loc4_ || param3)
            {
               § [§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
               addr78:
               § [§(§3]§,param1.@MouseOver);
               addr83:
               § [§(§#H§,param1.@MouseOut);
            }
            return;
         }
         §§goto(addr78);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1 == §^8§)
            {
               if(_loc2_)
               {
                  mClip.useHandCursor = false;
                  mClip.buttonMode = false;
                  if(!_loc3_)
                  {
                     addr53:
                     super.setComponentState(param1);
                  }
               }
               else
               {
                  addr45:
                  mClip.buttonMode = true;
                  if(!_loc3_)
                  {
                     mClip.mouseChildren = false;
                     §§goto(addr53);
                  }
               }
               return;
            }
            mClip.useHandCursor = true;
         }
         §§goto(addr45);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(§0J§)
            {
               §§push(param1);
               if(_loc3_ || _loc3_)
               {
                  if(§§pop() == §!!C§)
                  {
                     §§push(this.§2q§);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(null);
                        if(_loc3_)
                        {
                           if(§§pop() != §§pop())
                           {
                              addr49:
                              §§push(this.§2q§);
                              if(!(_loc2_ && this))
                              {
                                 §§pop().stop();
                                 if(_loc3_ || this)
                                 {
                                    addr76:
                                    this.§2q§ = §%!>§.§-]§.§?U§(mClip,{
                                       "scaleX":1.1,
                                       "scaleY":1.1
                                    },null,0.1);
                                    §§push(this.§2q§);
                                    if(!_loc2_)
                                    {
                                       §§pop().play();
                                       if(!_loc2_)
                                       {
                                          addr144:
                                          super.setComponentVisualState(param1);
                                          return;
                                          addr96:
                                       }
                                       §§goto(addr144);
                                    }
                                    else
                                    {
                                       addr105:
                                       if(§§pop() != null)
                                       {
                                          §§push(this.§2q§);
                                          if(_loc3_)
                                          {
                                             addr120:
                                             §§pop().stop();
                                             if(_loc2_ && param1)
                                             {
                                             }
                                             §§goto(addr144);
                                          }
                                          addr143:
                                          §§pop().play();
                                          §§goto(addr144);
                                       }
                                    }
                                    this.§2q§ = §%!>§.§-]§.§?U§(mClip,{
                                       "scaleX":1,
                                       "scaleY":1
                                    },null,0.1);
                                    §§goto(addr143);
                                    §§push(this.§2q§);
                                 }
                                 §§goto(addr96);
                              }
                              §§goto(addr143);
                           }
                           §§goto(addr76);
                        }
                     }
                     §§goto(addr105);
                  }
                  else
                  {
                     §§push(param1);
                  }
                  §§goto(addr144);
               }
               if(§§pop() == §%e§)
               {
                  §§push(this.§2q§);
                  if(_loc3_)
                  {
                     §§goto(addr105);
                  }
                  §§goto(addr120);
               }
            }
            §§goto(addr144);
         }
         §§goto(addr49);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§2q§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr43:
                     this.§2q§.stop();
                     if(!(_loc2_ && _loc3_))
                     {
                        addr51:
                        super.viewWidth = param1;
                     }
                  }
                  return;
               }
               §§goto(addr51);
            }
         }
         §§goto(addr43);
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§2q§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr43:
                     this.§2q§.stop();
                     if(_loc3_ || _loc2_)
                     {
                     }
                     §§goto(addr54);
                  }
               }
               super.viewHeight = param1;
               addr54:
               return;
            }
         }
         §§goto(addr43);
      }
   }
}
