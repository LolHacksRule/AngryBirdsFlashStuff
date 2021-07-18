package §8!8§
{
   import flash.display.MovieClip;
   
   public class §?6§ extends §+!M§
   {
       
      
      public var §6!P§:MovieClip;
      
      public var §@u§:int = 0;
      
      public function §?6§(param1:XML, param2:§4!C§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            super(param1,param2,param3);
            while(param1.@childIndex)
            {
               if(!(_loc5_ && this))
               {
                  if(!_loc5_)
                  {
                     this.§@u§ = param1.@childIndex;
                     addr65:
                     break;
                  }
                  continue;
               }
               §§goto(addr65);
            }
            return;
         }
         §§goto(addr65);
      }
      
      public function §'!4§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         if(!_loc7_)
         {
            this.§6!P§ = param1;
            if(!_loc7_)
            {
               loop0:
               while(true)
               {
                  this.§6!P§.mouseEnabled = false;
                  while(true)
                  {
                     this.§6!P§.mouseChildren = false;
                     if(_loc6_ || param2)
                     {
                        if(_loc7_ && param3)
                        {
                           continue;
                        }
                        if(false)
                        {
                           continue loop0;
                        }
                        if(param2 != null)
                        {
                           if(_loc6_)
                           {
                              (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
                              if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
                              {
                                 if(!(_loc7_ && param1))
                                 {
                                    _loc5_.visible = false;
                                 }
                              }
                           }
                        }
                        else if(this.§@u§ < 1)
                        {
                           if(!(_loc7_ && param2))
                           {
                              break;
                           }
                        }
                        else
                        {
                           mClip.addChildAt(this.§6!P§,this.§@u§ - 1);
                        }
                        §§goto(addr145);
                     }
                     break;
                  }
                  mClip.addChild(this.§6!P§);
                  if(_loc6_ || param1)
                  {
                  }
               }
            }
         }
         addr145:
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.clear();
         }
         while(this.§6!P§)
         {
            if(_loc1_ && _loc2_)
            {
               break;
            }
            addr65:
            if(_loc1_ && _loc2_)
            {
               continue;
            }
            this.§6!P§ = null;
            §§goto(addr65);
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.setComponentState(param1);
            loop0:
            while(true)
            {
               §§push(Boolean(this.§6!P§));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr110:
                        do
                        {
                           §§push(Boolean((mParentContainer.mParentContainer as §<!C§).§6?§));
                           if(_loc2_ && _loc3_)
                           {
                              continue loop2;
                           }
                        }
                        while(_loc3_);
                        
                        continue loop1;
                     }
                  }
                  loop4:
                  while(§§pop())
                  {
                     while(true)
                     {
                        if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
                        {
                           if(_loc2_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        this.§6!P§.filters = [];
                        if(!_loc3_)
                        {
                           break;
                        }
                        if(_loc2_)
                        {
                           continue;
                        }
                        if(!(_loc2_ && _loc2_))
                        {
                           addr42:
                           break loop4;
                        }
                        §§goto(addr110);
                     }
                     break;
                  }
                  return;
               }
            }
         }
         §§goto(addr42);
      }
   }
}
