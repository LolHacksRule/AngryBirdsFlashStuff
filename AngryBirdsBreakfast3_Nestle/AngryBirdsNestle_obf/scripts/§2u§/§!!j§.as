package §2u§
{
   import flash.display.MovieClip;
   
   public class §!!j§ extends §]"%§
   {
       
      
      public var §5X§:MovieClip;
      
      public var §0!G§:int = 0;
      
      public function §!!j§(param1:XML, param2:§,6§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param1,param2,param3);
            loop0:
            while(param1.@childIndex)
            {
               if(_loc5_)
               {
                  while(true)
                  {
                     this.§0!G§ = param1.@childIndex;
                  }
                  addr40:
               }
               while(true)
               {
                  if(_loc5_)
                  {
                     break loop0;
                  }
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr40);
      }
      
      public function §0!d§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         if(_loc6_)
         {
            this.§5X§ = param1;
         }
         loop0:
         while(true)
         {
            addr53:
            while(true)
            {
               this.§5X§.mouseEnabled = false;
               while(true)
               {
                  this.§5X§.mouseChildren = false;
                  if(_loc7_ && param2)
                  {
                     break;
                  }
                  if(!(_loc7_ && this))
                  {
                     continue loop0;
                  }
               }
               addr78:
               (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
               addr140:
               if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
               {
                  if(!_loc7_)
                  {
                     _loc5_.visible = false;
                  }
               }
               return;
            }
         }
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.clear();
         }
         while(this.§5X§)
         {
            if(!_loc1_)
            {
               break;
            }
            addr64:
            if(!(_loc1_ || _loc1_))
            {
               continue;
            }
            this.§5X§ = null;
            §§goto(addr64);
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            super.setComponentState(param1);
            loop0:
            while(true)
            {
               §§push(Boolean(this.§5X§));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr115:
                        do
                        {
                           §§push(Boolean((mParentContainer.mParentContainer as §]!>§).§9!t§));
                           if(_loc2_)
                           {
                              continue loop2;
                           }
                        }
                        while(_loc3_);
                        
                        continue loop1;
                     }
                  }
                  while(§§pop())
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        if(param1 != COMPONENT_STATE_ACTIVE_DEFAULT)
                        {
                           this.§5X§.filters = [];
                           if(_loc3_)
                           {
                              if(!_loc2_)
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    continue loop0;
                                 }
                                 §§goto(addr115);
                              }
                              else
                              {
                                 addr88:
                                 this.§5X§.filters = [(mParentContainer.mParentContainer as §]!>§).§9!t§];
                              }
                           }
                           break;
                        }
                     }
                     §§goto(addr88);
                  }
                  §§goto(addr25);
               }
            }
         }
         addr25:
      }
   }
}
