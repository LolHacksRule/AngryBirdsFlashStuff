package §_-F1§
{
   import flash.display.MovieClip;
   
   public class §_-nq§ extends §_-qp§
   {
       
      
      public var §_-Od§:MovieClip;
      
      public function §_-nq§(param1:XML, param2:§_-k4§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            super(param1,param2,param3);
         }
      }
      
      public function §_-7C§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         if(!_loc6_)
         {
            this.§_-Od§ = param1;
            if(!_loc6_)
            {
               this.§_-Od§.mouseEnabled = false;
               if(_loc7_)
               {
                  this.§_-Od§.mouseChildren = false;
                  if(_loc7_ || param2)
                  {
                     addr51:
                     if(param2 != null)
                     {
                        if(_loc7_)
                        {
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
                     else
                     {
                        mClip.addChild(this.§_-Od§);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr51);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.clear();
            if(_loc1_)
            {
               if(this.§_-Od§)
               {
                  if(!(_loc2_ && this))
                  {
                     addr43:
                     this.§_-Od§ = null;
                  }
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.setComponentState(param1);
            §§push(Boolean(this.§_-Od§));
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && param1))
                  {
                     §§pop();
                     if(_loc3_)
                     {
                        §§goto(addr49);
                     }
                     §§goto(addr62);
                  }
               }
            }
            addr49:
            if((mParentContainer.mParentContainer as §_-mr§).§_-U9§)
            {
               if(!(_loc2_ && this))
               {
                  if(param1 == §_-1M§)
                  {
                     if(!_loc2_)
                     {
                        this.§_-Od§.filters = [(mParentContainer.mParentContainer as §_-mr§).§_-U9§];
                        addr62:
                     }
                  }
                  else
                  {
                     this.§_-Od§.filters = [];
                  }
                  §§goto(addr83);
               }
            }
            §§goto(addr83);
         }
         addr83:
      }
   }
}
