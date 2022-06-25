package §4C§
{
   import flash.display.MovieClip;
   
   public class §";§ extends §6<§
   {
       
      
      public var §+k§:MovieClip;
      
      public var §[!-§:int = 0;
      
      public function §";§(param1:XML, param2:§1!=§, param3:MovieClip = null)
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
            this.§[!-§ = param1.@childIndex;
         }
         addr45:
      }
      
      public function §&!J§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§+k§ = param1;
         this.§+k§.mouseEnabled = false;
         if(_loc6_ || this)
         {
            this.§+k§.mouseChildren = false;
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
                     mClip.addChild(this.§+k§);
                  }
               }
               else if(this.§[!-§ < 1)
               {
                  if(_loc7_)
                  {
                  }
                  §§goto(addr105);
               }
               else
               {
                  mClip.addChildAt(this.§+k§,this.§[!-§ - 1);
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
               if(this.§+k§)
               {
                  if(!_loc1_)
                  {
                     this.§+k§ = null;
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
            §§push(Boolean(this.§+k§));
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§pop();
                     addr66:
                     §§push(Boolean((mParentContainer.mParentContainer as §->§).§ !<§));
                  }
               }
            }
            if(§§pop())
            {
               if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  this.§+k§.filters = [(mParentContainer.mParentContainer as §->§).§ !<§];
               }
               else
               {
                  this.§+k§.filters = [];
               }
            }
            return;
         }
         §§goto(addr66);
      }
   }
}
