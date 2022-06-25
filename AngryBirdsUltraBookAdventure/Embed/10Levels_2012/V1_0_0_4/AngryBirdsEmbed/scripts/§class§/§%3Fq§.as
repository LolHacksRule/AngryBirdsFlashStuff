package §class§
{
   import §-!F§.§`!&§;
   import §`F§.§,B§;
   import §`F§.§?!3§;
   import flash.display.MovieClip;
   
   public class §?q§ extends §`!&§
   {
       
      
      private var §+[§:§?!3§;
      
      public function §?q§(param1:XML, param2:§3C§, param3:MovieClip = null)
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
               §7w§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
               if(_loc5_ || this)
               {
               }
               §§goto(addr76);
            }
            §§goto(addr51);
         }
         addr76:
         §7w§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §7w§(§null§,param1.@MouseOver);
         if(!_loc4_)
         {
            §7w§(§@!'§,param1.@MouseOut);
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
            if(param1 == §9I§)
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
            if(§8!2§)
            {
               §§push(param1);
               if(_loc3_ || _loc2_)
               {
                  if(§§pop() == §[!;§)
                  {
                     §§push(this.§+[§);
                     if(_loc3_)
                     {
                        §§push(null);
                        if(_loc3_ || this)
                        {
                           if(§§pop() != §§pop())
                           {
                              §§push(this.§+[§);
                              if(_loc3_)
                              {
                                 §§pop().stop();
                                 §§goto(addr49);
                              }
                              §§goto(addr132);
                           }
                           addr49:
                           this.§+[§ = §,B§.§^n§.§2E§(mClip,{
                              "scaleX":1.1,
                              "scaleY":1.1
                           },null,0.1);
                           if(_loc3_ || _loc3_)
                           {
                              §§push(this.§+[§);
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
                                       §§push(this.§+[§);
                                       if(_loc3_ || this)
                                       {
                                          addr132:
                                          §§pop().stop();
                                          addr133:
                                          this.§+[§ = §,B§.§^n§.§2E§(mClip,{
                                             "scaleX":1,
                                             "scaleY":1
                                          },null,0.1);
                                          if(_loc3_)
                                          {
                                             §§push(this.§+[§);
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
               if(§§pop() == §#@§)
               {
                  if(_loc3_)
                  {
                     addr95:
                     §§push(this.§+[§);
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
            §§push(this.§+[§);
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
            this.§+[§.stop();
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
            §§push(this.§+[§);
            if(!(_loc3_ && this))
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr42:
                     this.§+[§.stop();
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
