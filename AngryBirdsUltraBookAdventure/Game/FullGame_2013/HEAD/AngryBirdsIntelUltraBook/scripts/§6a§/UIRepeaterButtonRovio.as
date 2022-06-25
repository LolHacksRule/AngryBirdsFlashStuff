package §6a§
{
   import flash.display.MovieClip;
   
   public class UIRepeaterButtonRovio extends UIButtonRovio
   {
       
      
      public var §3d§:MovieClip;
      
      public var §>]§:int = 0;
      
      public function UIRepeaterButtonRovio(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            super(param1,param2,param3);
            loop0:
            while(param1.@childIndex)
            {
               if(!(_loc5_ && param1))
               {
                  while(true)
                  {
                     this.§>]§ = param1.@childIndex;
                  }
                  addr60:
               }
               while(true)
               {
                  if(_loc4_)
                  {
                     break loop0;
                  }
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr60);
      }
      
      public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         if(_loc6_ || param1)
         {
            this.§3d§ = param1;
            if(_loc6_ || param3)
            {
               addr57:
               while(true)
               {
                  this.§3d§.mouseEnabled = false;
                  if(_loc7_)
                  {
                     break;
                  }
                  this.§3d§.mouseChildren = false;
                  if(_loc6_)
                  {
                     if(false)
                     {
                        continue;
                     }
                     if(param2 != null)
                     {
                        if(_loc6_ || param1)
                        {
                           break;
                        }
                     }
                     else if(this.§>]§ < 1)
                     {
                        if(_loc6_)
                        {
                           addr135:
                           mClip.addChild(this.§3d§);
                           if(_loc6_ || param2)
                           {
                           }
                        }
                     }
                     else
                     {
                        mClip.addChildAt(this.§3d§,this.§>]§ - 1);
                     }
                     §§goto(addr159);
                  }
                  break;
               }
               _loc4_ = mClip.getChildByName(param2) as MovieClip;
               if(_loc6_)
               {
                  _loc4_.addChild(param1);
               }
               _loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip;
               if(!(_loc7_ && this))
               {
                  if(_loc5_)
                  {
                     if(_loc6_)
                     {
                        addr115:
                        _loc5_.visible = false;
                     }
                  }
                  addr159:
                  return;
               }
               §§goto(addr115);
            }
            §§goto(addr135);
         }
         §§goto(addr57);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.clear();
            while(this.§3d§)
            {
               if(_loc1_)
               {
                  break;
               }
               addr56:
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               this.§3d§ = null;
               §§goto(addr56);
            }
            return;
         }
         §§goto(addr56);
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            super.setComponentState(param1);
            loop0:
            while(true)
            {
               §§push(Boolean(this.§3d§));
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop());
                  if(!_loc2_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(Boolean((mParentContainer.mParentContainer as UIRepeaterRovio).§+Q§));
                           if(!(_loc2_ && this))
                           {
                              loop1:
                              while(§§pop())
                              {
                                 while(true)
                                 {
                                    if(param1 != COMPONENT_STATE_ACTIVE_DEFAULT)
                                    {
                                       this.§3d§.filters = [];
                                       if(!_loc2_)
                                       {
                                          if(!(_loc2_ && this))
                                          {
                                             continue;
                                          }
                                          addr85:
                                          if(_loc2_ && _loc2_)
                                          {
                                             continue loop3;
                                          }
                                          this.§3d§.filters = [(mParentContainer.mParentContainer as UIRepeaterRovio).§+Q§];
                                       }
                                       if(!_loc2_)
                                       {
                                          break loop1;
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr85);
                                 }
                              }
                              return;
                              addr79:
                           }
                           break;
                        }
                     }
                     addr132:
                  }
                  §§goto(addr79);
               }
               §§goto(addr132);
            }
         }
         §§goto(addr81);
      }
   }
}
