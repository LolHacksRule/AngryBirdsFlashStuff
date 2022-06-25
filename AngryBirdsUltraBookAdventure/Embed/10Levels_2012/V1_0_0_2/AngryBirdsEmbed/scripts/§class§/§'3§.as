package §class§
{
   import flash.display.MovieClip;
   
   public class §'3§ extends §?q§
   {
       
      
      public var §!J§:MovieClip;
      
      public var §"d§:int = 0;
      
      public function §'3§(param1:XML, param2:§3C§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param1,param2,param3);
            if(_loc5_)
            {
               if(param1.@childIndex)
               {
                  if(_loc4_)
                  {
                  }
               }
               §§goto(addr45);
            }
            this.§"d§ = param1.@childIndex;
         }
         addr45:
      }
      
      public function §;!G§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§!J§ = param1;
         this.§!J§.mouseEnabled = false;
         if(_loc6_ || this)
         {
            this.§!J§.mouseChildren = false;
            if(_loc6_)
            {
               if(param2 != null)
               {
                  if(!(_loc7_ && this))
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
                  else
                  {
                     addr105:
                     mClip.addChild(this.§!J§);
                  }
               }
               else if(this.§"d§ < 1)
               {
                  if(_loc7_)
                  {
                  }
                  §§goto(addr105);
               }
               else
               {
                  mClip.addChildAt(this.§!J§,this.§"d§ - 1);
               }
               return;
            }
         }
         §§goto(addr105);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.clear();
            if(_loc2_ || _loc1_)
            {
               if(this.§!J§)
               {
                  if(!_loc1_)
                  {
                     this.§!J§ = null;
                  }
               }
            }
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         super.setComponentState(param1);
         if(!(_loc3_ && this))
         {
            §§push(Boolean(this.§!J§));
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§pop();
                     addr66:
                     §§push(Boolean((mParentContainer.mParentContainer as §use §).§>m§));
                  }
               }
            }
            if(§§pop())
            {
               if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  this.§!J§.filters = [(mParentContainer.mParentContainer as §use §).§>m§];
               }
               else
               {
                  this.§!J§.filters = [];
               }
            }
            return;
         }
         §§goto(addr66);
      }
   }
}
