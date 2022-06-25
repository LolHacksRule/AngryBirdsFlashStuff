package §]!6§
{
   import flash.display.MovieClip;
   
   public class UIRepeaterButtonRovio extends UIButtonRovio
   {
       
      
      public var §&!R§:MovieClip;
      
      public var §9!i§:int = 0;
      
      public function UIRepeaterButtonRovio(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            super(param1,param2,param3);
            while(param1.@childIndex)
            {
               if(_loc5_ || param2)
               {
                  this.§9!i§ = param1.@childIndex;
               }
               if(!(_loc4_ && this))
               {
                  addr72:
                  break;
               }
            }
            return;
         }
         §§goto(addr72);
      }
      
      public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         if(_loc6_)
         {
            this.§&!R§ = param1;
            if(_loc6_ || param2)
            {
               addr57:
               while(true)
               {
                  this.§&!R§.mouseEnabled = false;
                  if(!(_loc6_ || param3))
                  {
                     break;
                  }
                  this.§&!R§.mouseChildren = false;
                  if(_loc7_)
                  {
                     break;
                  }
                  if(true)
                  {
                     if(param2 != null)
                     {
                        if(!(_loc7_ && this))
                        {
                           _loc4_ = mClip.getChildByName(param2) as MovieClip;
                           if(!(_loc7_ && param3))
                           {
                              _loc4_.addChild(param1);
                           }
                           _loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip;
                           if(!_loc7_)
                           {
                              if(_loc5_)
                              {
                                 if(!(_loc7_ && param3))
                                 {
                                    _loc5_.visible = false;
                                 }
                              }
                           }
                           break;
                        }
                     }
                     else
                     {
                        if(this.§9!i§ >= 1)
                        {
                           mClip.addChildAt(this.§&!R§,this.§9!i§ - 1);
                           break;
                        }
                        if(_loc6_ || param1)
                        {
                           mClip.addChild(this.§&!R§);
                           if(_loc6_ || this)
                           {
                           }
                           break;
                        }
                     }
                     break;
                  }
               }
            }
            return;
         }
         §§goto(addr57);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.clear();
            while(this.§&!R§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  if(!_loc2_)
                  {
                     this.§&!R§ = null;
                     addr55:
                     break;
                  }
                  continue;
               }
               §§goto(addr55);
            }
            return;
         }
         §§goto(addr55);
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super.setComponentState(param1);
            loop0:
            while(true)
            {
               §§push(Boolean(this.§&!R§));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  if(!_loc2_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc3_ || _loc2_)
                        {
                           while(true)
                           {
                              if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
                              {
                                 if(_loc3_ || _loc2_)
                                 {
                                    this.§&!R§.filters = [(mParentContainer.mParentContainer as UIRepeaterRovio).§'Y§];
                                 }
                              }
                              else
                              {
                                 this.§&!R§.filters = [];
                                 if(!(_loc2_ && param1))
                                 {
                                    if(_loc3_)
                                    {
                                       continue loop0;
                                    }
                                    addr132:
                                    while(true)
                                    {
                                       §§push(Boolean((mParentContainer.mParentContainer as UIRepeaterRovio).§'Y§));
                                       if(_loc2_)
                                       {
                                          break;
                                       }
                                       continue loop1;
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       §§goto(addr133);
                                    }
                                    addr133:
                                 }
                              }
                           }
                           addr90:
                        }
                        break;
                     }
                     addr25:
                     return;
                     addr81:
                  }
                  §§goto(addr132);
               }
            }
         }
         §§goto(addr90);
      }
   }
}
