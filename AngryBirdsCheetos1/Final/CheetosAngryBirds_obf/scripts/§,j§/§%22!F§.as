package §,j§
{
   import flash.display.MovieClip;
   
   public class §"!F§ extends §0!@§
   {
       
      
      public var §3!-§:MovieClip;
      
      public var § !&§:int = 0;
      
      public function §"!F§(param1:XML, param2:§1-§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            super(param1,param2,param3);
         }
         while(param1.@childIndex)
         {
            if(!_loc5_)
            {
               this.§ !&§ = param1.@childIndex;
            }
            if(_loc4_)
            {
               break;
            }
         }
      }
      
      public function §3!V§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         if(_loc6_)
         {
            this.§3!-§ = param1;
            loop0:
            while(true)
            {
               addr39:
               addr78:
               while(true)
               {
                  this.§3!-§.mouseEnabled = false;
                  if(!_loc6_)
                  {
                     break;
                  }
                  continue loop0;
               }
               addr140:
               (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
               if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
               {
                  if(_loc6_)
                  {
                     _loc5_.visible = false;
                  }
               }
               return;
            }
         }
         §§goto(addr116);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.clear();
            while(this.§3!-§)
            {
               if(!(_loc2_ || _loc1_))
               {
                  break;
               }
               addr65:
               if(!(_loc2_ || this))
               {
                  continue;
               }
               this.§3!-§ = null;
               §§goto(addr65);
            }
            return;
         }
         §§goto(addr65);
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            super.setComponentState(param1);
            loop0:
            while(true)
            {
               §§push(Boolean(this.§3!-§));
               while(true)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc3_)
                        {
                           if(param1 != COMPONENT_STATE_ACTIVE_DEFAULT)
                           {
                              this.§3!-§.filters = [];
                              if(_loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 addr74:
                                 if(!(_loc3_ || this))
                                 {
                                    continue loop0;
                                 }
                                 this.§3!-§.filters = [(mParentContainer.mParentContainer as §'G§).§'!D§];
                              }
                              break;
                           }
                        }
                        §§goto(addr74);
                     }
                     return;
                     addr67:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
                  addr50:
                  if(!(_loc3_ || _loc2_))
                  {
                     continue;
                  }
                  §§goto(addr67);
               }
            }
         }
         while(true)
         {
            §§push(Boolean((mParentContainer.mParentContainer as §'G§).§'!D§));
            if(_loc3_)
            {
               §§goto(addr50);
            }
            §§goto(addr97);
         }
      }
   }
}
