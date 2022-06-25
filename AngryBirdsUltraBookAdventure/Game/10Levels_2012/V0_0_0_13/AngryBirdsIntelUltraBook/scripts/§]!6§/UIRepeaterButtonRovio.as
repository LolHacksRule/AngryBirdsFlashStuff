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
         if(!_loc4_)
         {
            super(param1,param2,param3);
            loop0:
            for(; param1.@childIndex; while(true)
            {
               if(_loc5_ || this)
               {
                  break loop0;
               }
               continue loop0;
            })
            {
               if(_loc4_)
               {
                  continue;
               }
            }
            return;
         }
         while(true)
         {
            this.§9!i§ = param1.@childIndex;
            §§goto(addr45);
         }
      }
      
      public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         if(_loc7_ || this)
         {
            this.§&!R§ = param1;
            if(!_loc6_)
            {
               addr53:
               loop0:
               while(true)
               {
                  this.§&!R§.mouseEnabled = false;
                  while(true)
                  {
                     this.§&!R§.mouseChildren = false;
                     if(_loc7_)
                     {
                        if(!_loc7_)
                        {
                           continue;
                        }
                        if(false)
                        {
                           continue loop0;
                        }
                        if(param2 != null)
                        {
                           if(!(_loc6_ && param3))
                           {
                              break;
                           }
                           addr155:
                           addr155:
                           return;
                           addr144:
                        }
                        else if(this.§9!i§ < 1)
                        {
                           if(!_loc6_)
                           {
                              mClip.addChild(this.§&!R§);
                              if(_loc6_ && param3)
                              {
                              }
                              §§goto(addr155);
                           }
                           §§goto(addr144);
                        }
                        else
                        {
                           mClip.addChildAt(this.§&!R§,this.§9!i§ - 1);
                           §§goto(addr155);
                        }
                        §§goto(addr155);
                     }
                     break;
                  }
                  _loc4_ = mClip.getChildByName(param2) as MovieClip;
                  if(!_loc6_)
                  {
                     _loc4_.addChild(param1);
                  }
                  _loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip;
                  if(!_loc6_)
                  {
                     if(_loc5_)
                     {
                        if(!(_loc6_ && param1))
                        {
                           _loc5_.visible = false;
                        }
                     }
                  }
               }
            }
            §§goto(addr155);
         }
         §§goto(addr53);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.clear();
         }
         while(this.§&!R§)
         {
            if(!(_loc1_ || _loc1_))
            {
               break;
            }
            addr70:
            if(_loc2_ && _loc2_)
            {
               continue;
            }
            this.§&!R§ = null;
            §§goto(addr70);
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
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
                  if(_loc2_ || _loc3_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(!§§pop())
                  {
                     loop4:
                     while(§§pop())
                     {
                        for(; param1 != COMPONENT_STATE_ACTIVE_DEFAULT; if(_loc2_ || param1)
                        {
                           continue loop0;
                        })
                        {
                           this.§&!R§.filters = [];
                           if(!(_loc3_ && param1))
                           {
                              if(!_loc2_)
                              {
                                 break;
                              }
                              continue;
                           }
                           while(true)
                           {
                              if(!(_loc3_ && param1))
                              {
                                 break loop4;
                              }
                              addr131:
                              while(true)
                              {
                                 §§push(Boolean((mParentContainer.mParentContainer as UIRepeaterRovio).§'Y§));
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              while(true)
                              {
                                 §§pop();
                                 §§goto(addr132);
                              }
                              addr132:
                           }
                        }
                        while(true)
                        {
                           this.§&!R§.filters = [(mParentContainer.mParentContainer as UIRepeaterRovio).§'Y§];
                           §§goto(addr109);
                        }
                     }
                     addr19:
                     return;
                     addr82:
                  }
                  §§goto(addr131);
               }
               if(_loc3_ && _loc2_)
               {
                  continue;
               }
               §§goto(addr19);
            }
         }
         §§goto(addr88);
      }
   }
}
