package §?!7§
{
   import flash.display.MovieClip;
   
   public class §=!#§ extends §5!I§
   {
       
      
      public var §?!"§:MovieClip;
      
      public var §4J§:int = 0;
      
      public function §=!#§(param1:XML, param2:§8;§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param1,param2,param3);
            loop0:
            while(param1.@childIndex)
            {
               if(_loc4_ || this)
               {
                  while(true)
                  {
                     this.§4J§ = param1.@childIndex;
                  }
                  addr44:
               }
               while(true)
               {
                  if(!_loc5_)
                  {
                     break loop0;
                  }
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         if(!_loc7_)
         {
            this.§?!"§ = param1;
            while(true)
            {
               addr38:
               while(true)
               {
                  this.§?!"§.mouseEnabled = false;
               }
            }
            addr47:
         }
         while(true)
         {
            this.§?!"§.mouseChildren = false;
            if(!_loc7_)
            {
               if(!_loc6_)
               {
                  continue;
               }
               if(_loc6_)
               {
                  if(true)
                  {
                     if(param2 != null)
                     {
                        if(!(_loc7_ && param3))
                        {
                           (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
                           if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
                           {
                              if(!_loc7_)
                              {
                                 _loc5_.visible = false;
                              }
                           }
                        }
                     }
                     else if(this.§4J§ < 1)
                     {
                        if(_loc6_ || param2)
                        {
                           break;
                        }
                     }
                     else
                     {
                        mClip.addChildAt(this.§?!"§,this.§4J§ - 1);
                     }
                     §§goto(addr130);
                  }
               }
               else
               {
                  §§goto(addr47);
               }
               §§goto(addr38);
            }
            break;
         }
         mClip.addChild(this.§?!"§);
         if(_loc7_)
         {
         }
         addr130:
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.clear();
         }
         while(this.§?!"§)
         {
            if(_loc2_ || this)
            {
               this.§?!"§ = null;
            }
            if(!(_loc1_ && _loc2_))
            {
               break;
            }
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            super.setComponentState(param1);
         }
         loop0:
         while(true)
         {
            §§push(Boolean(this.§?!"§));
            if(_loc3_ || this)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           if(param1 != COMPONENT_STATE_ACTIVE_DEFAULT)
                           {
                              this.§?!"§.filters = [];
                              if(!_loc2_)
                              {
                                 if(_loc3_ || this)
                                 {
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 this.§?!"§.filters = [(mParentContainer.mParentContainer as §?!x§).§3!m§];
                                 addr79:
                              }
                              break;
                           }
                        }
                        §§goto(addr79);
                     }
                     §§push(Boolean((mParentContainer.mParentContainer as §?!x§).§3!m§));
                     addr120:
                     break;
                     if(_loc3_)
                     {
                        continue;
                     }
                     addr112:
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                     addr112:
                  }
                  return;
               }
            }
            §§goto(addr112);
         }
      }
   }
}
