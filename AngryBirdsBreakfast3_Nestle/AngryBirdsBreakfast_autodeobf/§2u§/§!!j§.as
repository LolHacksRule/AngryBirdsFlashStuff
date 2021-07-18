package §2u§
{
   import flash.display.MovieClip;
   
   public class §!!j§ extends §]"%§
   {
       
      
      public var §5X§:MovieClip;
      
      public var §0!G§:int = 0;
      
      public function §!!j§(param1:XML, param2:§,6§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§0!G§ = param1.@childIndex;
         }
      }
      
      public function §0!d§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§5X§ = param1;
         this.§5X§.mouseEnabled = false;
         this.§5X§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§0!G§ < 1)
         {
            mClip.addChild(this.§5X§);
         }
         else
         {
            mClip.addChildAt(this.§5X§,this.§0!G§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§5X§)
         {
            this.§5X§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§5X§ && (mParentContainer.mParentContainer as §]!>§).§9!t§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§5X§.filters = [(mParentContainer.mParentContainer as §]!>§).§9!t§];
            }
            else
            {
               this.§5X§.filters = [];
            }
         }
      }
   }
}
