package §0"$§
{
   import flash.display.MovieClip;
   
   public class §%!M§ extends §;§
   {
       
      
      public var §1z§:MovieClip;
      
      public var §`p§:int = 0;
      
      public function §%!M§(param1:XML, param2:§"!a§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(param1,param2,param3);
            while(param1.@childIndex)
            {
               if(!_loc5_)
               {
                  this.§`p§ = param1.@childIndex;
               }
               if(!(_loc5_ && param3))
               {
                  addr60:
                  break;
               }
            }
            return;
         }
         §§goto(addr60);
      }
      
      public function § j§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         if(_loc6_ || param1)
         {
            this.§1z§ = param1;
            if(!(_loc7_ && param2))
            {
               while(true)
               {
                  this.§1z§.mouseEnabled = false;
                  if(!_loc7_)
                  {
                     continue;
                  }
               }
               (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
               if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
               {
                  if(!_loc7_)
                  {
                     _loc5_.visible = false;
                  }
               }
               §§goto(addr135);
            }
         }
         §§goto(addr111);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.clear();
            loop0:
            while(this.§1z§)
            {
               if(!_loc2_)
               {
                  while(true)
                  {
                     this.§1z§ = null;
                  }
                  addr49:
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
         §§goto(addr49);
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super.setComponentState(param1);
            loop0:
            while(true)
            {
               §§push(Boolean(this.§1z§));
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        §§pop();
                        addr119:
                        while(true)
                        {
                           §§push(Boolean((mParentContainer.mParentContainer as §7!a§).§[!s§));
                           if(_loc2_ || _loc3_)
                           {
                              break;
                           }
                           continue loop4;
                        }
                     }
                     addr118:
                  }
                  loop1:
                  for(; §§pop(); §§goto(addr119))
                  {
                     while(true)
                     {
                        if(_loc2_)
                        {
                           if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
                           {
                              break;
                              addr99:
                           }
                           this.§1z§.filters = [];
                           if(!(_loc2_ || _loc3_))
                           {
                              break loop1;
                           }
                           if(!(_loc2_ || _loc2_))
                           {
                              break;
                           }
                           if(!_loc3_)
                           {
                              break loop1;
                           }
                           continue;
                        }
                        continue loop0;
                     }
                     if(!(_loc2_ || param1))
                     {
                        continue;
                     }
                     this.§1z§.filters = [(mParentContainer.mParentContainer as §7!a§).§[!s§];
                     §§goto(addr99);
                  }
                  return;
               }
               §§goto(addr118);
            }
         }
         §§goto(addr90);
      }
   }
}
