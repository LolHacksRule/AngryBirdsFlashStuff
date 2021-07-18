package §"!E§
{
   import flash.display.MovieClip;
   
   public class § else§ extends §#!'§
   {
       
      
      public var §2!k§:MovieClip;
      
      public var §`!4§:int = 0;
      
      public function § else§(param1:XML, param2:§[!s§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            super(param1,param2,param3);
            if(!(_loc4_ && param2))
            {
               §§goto(addr56);
            }
            §§goto(addr66);
         }
         addr56:
         if(param1.@childIndex)
         {
            if(!(_loc4_ && param1))
            {
               addr66:
               this.§`!4§ = param1.@childIndex;
            }
         }
      }
      
      public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§2!k§ = param1;
         if(!(_loc7_ && param2))
         {
            this.§2!k§.mouseEnabled = false;
            this.§2!k§.mouseChildren = false;
            if(!(_loc7_ && param2))
            {
               if(param2 != null)
               {
                  (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
                  if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
                  {
                     if(!(_loc7_ && this))
                     {
                        _loc5_.visible = false;
                     }
                  }
               }
               else if(this.§`!4§ < 1)
               {
                  if(_loc6_ || this)
                  {
                     addr113:
                     mClip.addChild(this.§2!k§);
                     addr117:
                  }
                  §§goto(addr117);
               }
               else
               {
                  mClip.addChildAt(this.§2!k§,this.§`!4§ - 1);
               }
               return;
            }
            §§goto(addr117);
         }
         §§goto(addr113);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.clear();
            if(!(_loc1_ && this))
            {
               if(this.§2!k§)
               {
                  if(_loc2_)
                  {
                     addr48:
                     this.§2!k§ = null;
                  }
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         super.setComponentState(param1);
         if(_loc3_)
         {
            §§push(Boolean(this.§2!k§));
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  if(!(_loc2_ && param1))
                  {
                     §§goto(addr51);
                  }
               }
               §§goto(addr75);
            }
            addr51:
            §§pop();
            if(_loc3_ || param1)
            {
               addr75:
               if((mParentContainer.mParentContainer as §?j§).§4!3§)
               {
                  if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     if(!(_loc2_ && this))
                     {
                        this.§2!k§.filters = [(mParentContainer.mParentContainer as §?j§).§4!3§];
                     }
                  }
                  else
                  {
                     this.§2!k§.filters = [];
                  }
               }
            }
            §§goto(addr100);
         }
         addr100:
      }
   }
}
