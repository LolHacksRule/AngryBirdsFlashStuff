package §"U§
{
   import flash.display.MovieClip;
   
   public class §&!M§ extends §^'§
   {
       
      
      public var §3!4§:MovieClip;
      
      public var §]i§:int = 0;
      
      public function §&!M§(param1:XML, param2:§[Q§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            super(param1,param2,param3);
            while(param1.@childIndex)
            {
               if(!(_loc4_ || param1))
               {
                  break;
               }
               addr70:
               if(_loc5_ && this)
               {
                  continue;
               }
               this.§]i§ = param1.@childIndex;
               §§goto(addr70);
            }
            return;
         }
         §§goto(addr70);
      }
      
      public function §[!0§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         if(_loc6_ || param3)
         {
            this.§3!4§ = param1;
            if(!_loc7_)
            {
               while(true)
               {
                  this.§3!4§.mouseEnabled = false;
                  addr44:
                  while(true)
                  {
                     this.§3!4§.mouseChildren = false;
                     if(!_loc7_)
                     {
                        if(true)
                        {
                           if(param2 != null)
                           {
                              if(_loc6_ || param2)
                              {
                                 break;
                              }
                              addr121:
                           }
                           else if(this.§]i§ < 1)
                           {
                              mClip.addChild(this.§3!4§);
                              §§goto(addr121);
                           }
                           else
                           {
                              mClip.addChildAt(this.§3!4§,this.§]i§ - 1);
                           }
                        }
                        else
                        {
                           addr129:
                        }
                        continue;
                        return;
                     }
                     break;
                  }
               }
            }
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               if(!(_loc7_ && param3))
               {
                  _loc5_.visible = false;
               }
            }
            §§goto(addr129);
         }
         §§goto(addr44);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.clear();
         }
         while(this.§3!4§)
         {
            if(!(_loc2_ || _loc2_))
            {
               break;
            }
            addr70:
            if(!(_loc2_ || this))
            {
               continue;
            }
            this.§3!4§ = null;
            §§goto(addr70);
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.setComponentState(param1);
            §§push(Boolean(this.§3!4§));
            while(§§pop())
            {
               while(true)
               {
                  §§pop();
               }
               if(!(_loc2_ && _loc2_))
               {
                  break;
               }
            }
            if(§§pop())
            {
               if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  this.§3!4§.filters = [(mParentContainer.mParentContainer as §"]§).§@O§];
               }
               else
               {
                  this.§3!4§.filters = [];
                  if(_loc2_)
                  {
                  }
                  §§goto(addr20);
               }
            }
            addr20:
            return;
         }
         while(true)
         {
            §§push(Boolean((mParentContainer.mParentContainer as §"]§).§@O§));
            if(!_loc3_)
            {
               continue;
            }
            §§goto(addr53);
         }
      }
   }
}
