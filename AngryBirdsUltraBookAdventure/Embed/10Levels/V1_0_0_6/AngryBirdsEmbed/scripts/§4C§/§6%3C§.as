package §4C§
{
   import §?!+§.§,!G§;
   import §?!+§.§3_§;
   import §`!0§.§[4§;
   import flash.display.MovieClip;
   
   public class §6<§ extends §[4§
   {
       
      
      private var §-7§:§3_§;
      
      public function §6<§(param1:XML, param2:§1!=§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            super(param1,param2,param3);
            if(_loc5_)
            {
               if(mClip)
               {
                  mClip.buttonMode = true;
                  if(_loc5_)
                  {
                     mClip.mouseChildren = false;
                     if(_loc5_)
                     {
                        mClip.tabEnabled = false;
                        if(!_loc4_)
                        {
                           addr68:
                           §1?§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                           §1?§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                           if(_loc5_)
                           {
                              §1?§(§;!4§,param1.@MouseOver);
                           }
                           §§goto(addr90);
                        }
                        addr90:
                        return;
                     }
                     §§goto(addr68);
                  }
                  §1?§(§#x§,param1.@MouseOut);
               }
               §§goto(addr68);
            }
         }
         §§goto(addr68);
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
         if(_loc2_)
         {
            if(param1 == §?[§)
            {
               if(!_loc3_)
               {
                  mClip.useHandCursor = false;
                  if(_loc3_ && _loc2_)
                  {
                  }
                  §§goto(addr80);
               }
               mClip.buttonMode = false;
               addr77:
               super.setComponentState(param1);
            }
            else
            {
               mClip.useHandCursor = true;
               if(!_loc3_)
               {
                  mClip.buttonMode = true;
                  if(_loc2_)
                  {
                     §§goto(addr67);
                  }
                  §§goto(addr77);
               }
               addr67:
               mClip.mouseChildren = false;
               if(_loc2_ || this)
               {
               }
               §§goto(addr80);
            }
            addr80:
            return;
         }
         §§goto(addr67);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(get)
         {
            §§push(param1);
            if(!(_loc3_ && param1))
            {
               if(§§pop() == §4b§)
               {
                  §§push(this.§-7§);
                  if(!_loc3_)
                  {
                     §§push(null);
                     if(!(_loc3_ && param1))
                     {
                        if(§§pop() != §§pop())
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(this.§-7§);
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§pop().stop();
                                 this.§-7§ = §,!G§.§@j§.§47§(mClip,{
                                    "scaleX":1.1,
                                    "scaleY":1.1
                                 },null,0.1);
                                 §§goto(addr58);
                              }
                           }
                           §§goto(addr159);
                        }
                        addr58:
                        §§push(this.§-7§);
                        if(!(_loc3_ && this))
                        {
                           §§pop().play();
                           addr162:
                           super.setComponentVisualState(param1);
                        }
                        else
                        {
                           addr119:
                           §§pop().stop();
                           if(_loc2_ || _loc3_)
                           {
                              addr137:
                              this.§-7§ = §,!G§.§@j§.§47§(mClip,{
                                 "scaleX":1,
                                 "scaleY":1
                              },null,0.1);
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr159:
                                 this.§-7§.play();
                                 addr157:
                                 if(_loc2_)
                                 {
                                    §§goto(addr162);
                                 }
                              }
                              §§goto(addr162);
                           }
                           §§goto(addr157);
                        }
                        return;
                     }
                     addr112:
                     if(§§pop() != §§pop())
                     {
                        if(!_loc3_)
                        {
                           addr115:
                           §§push(this.§-7§);
                           if(_loc2_)
                           {
                              §§goto(addr119);
                           }
                           §§goto(addr159);
                        }
                        §§goto(addr162);
                     }
                     §§goto(addr137);
                  }
                  §§goto(addr119);
               }
               else
               {
                  §§push(param1);
               }
               §§goto(addr162);
            }
            if(§§pop() == §@!,§)
            {
               if(!(_loc3_ && this))
               {
                  §§push(this.§-7§);
                  if(_loc2_ || this)
                  {
                     §§goto(addr112);
                     §§push(null);
                  }
                  §§goto(addr119);
               }
               §§goto(addr115);
            }
         }
         §§goto(addr162);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§-7§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && param1))
                  {
                     addr47:
                     this.§-7§.stop();
                     if(!_loc2_)
                     {
                     }
                     §§goto(addr53);
                  }
               }
               super.viewWidth = param1;
               addr53:
               return;
            }
         }
         §§goto(addr47);
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§-7§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc3_ || this)
                  {
                     §§goto(addr48);
                  }
               }
               §§goto(addr56);
            }
            addr48:
            this.§-7§.stop();
            §§goto(addr46);
         }
         addr46:
         if(_loc3_ || _loc2_)
         {
            addr56:
            super.viewHeight = param1;
         }
      }
   }
}
