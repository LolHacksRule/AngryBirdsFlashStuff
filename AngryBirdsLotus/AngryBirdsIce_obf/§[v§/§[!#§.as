package §[v§
{
   import flash.display.MovieClip;
   
   public class §[!#§ extends §^P§
   {
       
      
      public var §?!;§:MovieClip;
      
      public var §%G§:int = 0;
      
      public function §[!#§(param1:XML, param2:§&F§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            super(param1,param2,param3);
         }
         while(param1.@childIndex)
         {
            if(!_loc4_)
            {
               this.§%G§ = param1.@childIndex;
            }
            if(_loc5_ || param1)
            {
               break;
            }
         }
      }
      
      public function §;f§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         if(!_loc7_)
         {
            this.§?!;§ = param1;
            while(true)
            {
               this.§?!;§.mouseEnabled = false;
               if(!(_loc6_ || param3))
               {
                  break;
               }
               this.§?!;§.mouseChildren = false;
               if(_loc6_ || param1)
               {
                  if(false)
                  {
                     continue;
                  }
                  if(param2 != null)
                  {
                     if(_loc7_ && param3)
                     {
                        break;
                     }
                     (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
                     if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
                     {
                        if(!_loc7_)
                        {
                           _loc5_.visible = false;
                        }
                     }
                  }
                  else
                  {
                     if(this.§%G§ < 1)
                     {
                        break;
                     }
                     mClip.addChildAt(this.§?!;§,this.§%G§ - 1);
                  }
                  §§goto(addr129);
               }
               break;
            }
            mClip.addChild(this.§?!;§);
         }
         addr129:
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.clear();
         }
         while(this.§?!;§)
         {
            if(_loc2_)
            {
               if(!_loc2_)
               {
                  continue;
               }
               this.§?!;§ = null;
            }
            break;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.setComponentState(param1);
            §§push(Boolean(this.§?!;§));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop3:
                  while(§§pop())
                  {
                     if(param1 != COMPONENT_STATE_ACTIVE_DEFAULT)
                     {
                        this.§?!;§.filters = [];
                        break;
                     }
                     while(true)
                     {
                        this.§?!;§.filters = [(mParentContainer.mParentContainer as §?H§).§<o§];
                        if(_loc3_)
                        {
                           break loop3;
                        }
                        addr91:
                        while(true)
                        {
                           §§push(Boolean((mParentContainer.mParentContainer as §?H§).§<o§));
                           if(_loc2_ && param1)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        while(true)
                        {
                           §§pop();
                           §§goto(addr92);
                        }
                        addr92:
                     }
                  }
                  return;
                  addr68:
               }
               §§goto(addr91);
            }
         }
         §§goto(addr73);
      }
   }
}
