package §;"+§
{
   import flash.display.MovieClip;
   
   public class §?!P§ extends §9!M§
   {
       
      
      public var §3! §:MovieClip;
      
      public var §@-§:int = 0;
      
      public function §?!P§(param1:XML, param2:§^!i§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§@-§ = param1.@childIndex;
         }
      }
      
      public function §=",§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§3! § = param1;
         this.§3! §.mouseEnabled = false;
         this.§3! §.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§@-§ < 1)
         {
            mClip.addChild(this.§3! §);
         }
         else
         {
            mClip.addChildAt(this.§3! §,this.§@-§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§3! §)
         {
            this.§3! § = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§3! § && (mParentContainer.mParentContainer as §'L§).§9!^§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§3! §.filters = [(mParentContainer.mParentContainer as §'L§).§9!^§];
            }
            else
            {
               this.§3! §.filters = [];
            }
         }
      }
   }
}
