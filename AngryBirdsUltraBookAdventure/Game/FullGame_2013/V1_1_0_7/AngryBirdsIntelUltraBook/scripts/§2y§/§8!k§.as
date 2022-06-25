package §2y§
{
   import flash.display.MovieClip;
   
   public class §8!k§ extends §[!i§
   {
       
      
      public var §#!H§:MovieClip;
      
      public var §<!k§:int = 0;
      
      public function §8!k§(param1:XML, param2:§^! §, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param1,param2,param3);
         }
         while(param1.@childIndex)
         {
            if(_loc5_ && param1)
            {
               break;
            }
            addr65:
            if(!(_loc4_ || param3))
            {
               continue;
            }
            this.§<!k§ = param1.@childIndex;
            §§goto(addr65);
         }
      }
      
      public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         if(!(_loc6_ && param1))
         {
            this.§#!H§ = param1;
            if(_loc7_)
            {
               loop0:
               while(true)
               {
                  this.§#!H§.mouseEnabled = false;
                  while(true)
                  {
                     this.§#!H§.mouseChildren = false;
                     if(!(_loc7_ || param1))
                     {
                        break;
                     }
                     if(!_loc6_)
                     {
                        if(true)
                        {
                           if(param2 != null)
                           {
                              if(_loc7_)
                              {
                                 addr74:
                                 (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
                                 if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
                                 {
                                    if(!(_loc6_ && param1))
                                    {
                                       _loc5_.visible = false;
                                    }
                                 }
                              }
                           }
                           else if(this.§<!k§ < 1)
                           {
                              if(_loc7_)
                              {
                                 break;
                              }
                              addr128:
                           }
                           else
                           {
                              mClip.addChildAt(this.§#!H§,this.§<!k§ - 1);
                           }
                           return;
                        }
                        addr136:
                        continue loop0;
                     }
                  }
                  mClip.addChild(this.§#!H§);
                  if(!_loc6_)
                  {
                     §§goto(addr128);
                  }
                  §§goto(addr136);
               }
            }
         }
         §§goto(addr74);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.clear();
            loop0:
            while(this.§#!H§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  while(true)
                  {
                     this.§#!H§ = null;
                  }
                  addr44:
               }
               while(true)
               {
                  if(_loc1_)
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
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            super.setComponentState(param1);
            loop0:
            while(true)
            {
               §§push(Boolean(this.§#!H§));
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§pop();
                        addr124:
                        while(true)
                        {
                           §§push(Boolean((mParentContainer.mParentContainer as §<N§).§2!G§));
                           if(!(_loc3_ && _loc3_))
                           {
                              break;
                           }
                           continue loop3;
                        }
                     }
                     addr123:
                  }
                  for(; §§pop(); §§goto(addr124))
                  {
                     if(_loc3_)
                     {
                        continue loop0;
                     }
                     if(param1 != COMPONENT_STATE_ACTIVE_DEFAULT)
                     {
                        this.§#!H§.filters = [];
                        if(_loc3_ && _loc2_)
                        {
                           continue loop0;
                        }
                        if(!(_loc3_ && param1))
                        {
                           if(_loc2_ || _loc2_)
                           {
                              break;
                           }
                           continue;
                        }
                        addr88:
                        while(true)
                        {
                           this.§#!H§.filters = [(mParentContainer.mParentContainer as §<N§).§2!G§];
                           continue loop0;
                        }
                        addr88:
                     }
                     §§goto(addr88);
                  }
                  addr24:
                  return;
               }
               §§goto(addr123);
            }
         }
         §§goto(addr88);
      }
   }
}
