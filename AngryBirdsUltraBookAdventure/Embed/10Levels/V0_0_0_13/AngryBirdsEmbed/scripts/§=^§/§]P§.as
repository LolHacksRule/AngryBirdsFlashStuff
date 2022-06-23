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
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param1,param2,param3);
            if(_loc5_ || param2)
            {
               if(mClip)
               {
                  mClip.buttonMode = true;
                  if(!_loc4_)
                  {
                     mClip.mouseChildren = false;
                     addr51:
                     mClip.tabEnabled = false;
                  }
                  §§goto(addr76);
               }
               § [§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
               if(_loc5_ || this)
               {
               }
               §§goto(addr76);
            }
            §§goto(addr51);
         }
         addr76:
         § [§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         § [§(§3]§,param1.@MouseOver);
         if(!_loc4_)
         {
            § [§(§#H§,param1.@MouseOut);
         }
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
         if(_loc3_)
         {
            if(param1 == §^8§)
            {
               if(!(_loc2_ && this))
               {
                  mClip.useHandCursor = false;
                  if(!(_loc2_ && _loc3_))
                  {
                     addr59:
                     mClip.buttonMode = false;
                     if(_loc2_)
                     {
                     }
                     §§goto(addr80);
                  }
                  addr70:
                  mClip.buttonMode = true;
                  if(_loc3_)
                  {
                     mClip.mouseChildren = false;
                     if(_loc2_)
                     {
                     }
                     §§goto(addr80);
                  }
               }
            }
            else
            {
               mClip.useHandCursor = true;
               if(_loc3_)
               {
                  §§goto(addr70);
               }
            }
            addr80:
            super.setComponentState(param1);
            return;
         }
         §§goto(addr59);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(§0J§)
            {
               §§push(param1);
               if(_loc3_ || _loc2_)
               {
                  if(§§pop() == §!!C§)
                  {
                     §§push(this.§2q§);
                     if(_loc3_)
                     {
                        §§push(null);
                        if(_loc3_ || this)
                        {
                           if(§§pop() != §§pop())
                           {
                              §§push(this.§2q§);
                              if(_loc3_)
                              {
                                 §§pop().stop();
                                 §§goto(addr49);
                              }
                              §§goto(addr132);
                           }
                           addr49:
                           this.§2q§ = §%!>§.§-]§.§?U§(mClip,{
                              "scaleX":1.1,
                              "scaleY":1.1
                           },null,0.1);
                           if(_loc3_ || _loc3_)
                           {
                              §§push(this.§2q§);
                              if(_loc3_ || _loc2_)
                              {
                                 §§pop().play();
                                 §§goto(addr153);
                              }
                              else
                              {
                                 addr105:
                                 if(§§pop() != null)
                                 {
                                    if(_loc3_ || _loc2_)
                                    {
                                       addr113:
                                       §§push(this.§2q§);
                                       if(_loc3_ || this)
                                       {
                                          addr132:
                                          §§pop().stop();
                                          addr133:
                                          this.§2q§ = §%!>§.§-]§.§?U§(mClip,{
                                             "scaleX":1,
                                             "scaleY":1
                                          },null,0.1);
                                          if(_loc3_)
                                          {
                                             §§push(this.§2q§);
                                          }
                                          §§goto(addr153);
                                       }
                                       §§pop().play();
                                       if(!_loc2_)
                                       {
                                          §§goto(addr153);
                                       }
                                    }
                                    §§goto(addr153);
                                 }
                                 §§goto(addr133);
                              }
                           }
                           §§goto(addr153);
                        }
                     }
                     §§goto(addr105);
                  }
                  else
                  {
                     §§push(param1);
                  }
                  §§goto(addr153);
               }
               if(§§pop() == §%e§)
               {
                  if(_loc3_)
                  {
                     addr95:
                     §§push(this.§2q§);
                     if(_loc3_ || param1)
                     {
                        §§goto(addr105);
                     }
                     §§goto(addr132);
                  }
                  §§goto(addr113);
               }
            }
            addr153:
            super.setComponentVisualState(param1);
            return;
         }
         §§goto(addr95);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§2q§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     §§goto(addr43);
                  }
               }
               §§goto(addr46);
            }
            addr43:
            this.§2q§.stop();
            §§goto(addr41);
         }
         addr41:
         if(!_loc2_)
         {
            addr46:
            super.viewWidth = param1;
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§2q§);
            if(!(_loc3_ && this))
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr42:
                     this.§2q§.stop();
                     if(_loc3_ && _loc3_)
                     {
                     }
                  }
                  §§goto(addr53);
               }
               super.viewHeight = param1;
               addr53:
               return;
            }
         }
         §§goto(addr42);
      }
   }
}
