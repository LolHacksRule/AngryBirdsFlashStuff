package §'!N§
{
   import flash.display.MovieClip;
   
   public class §`!M§ extends §<i§
   {
       
      
      public var §;2§:MovieClip;
      
      public var §<s§:int = 0;
      
      public function §`!M§(param1:XML, param2:§2O§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§<s§ = param1.@childIndex;
         }
      }
      
      public function §1o§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§;2§ = param1;
         this.§;2§.mouseEnabled = false;
         this.§;2§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§<s§ < 1)
         {
            mClip.addChild(this.§;2§);
         }
         else
         {
            mClip.addChildAt(this.§;2§,this.§<s§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§;2§)
         {
            this.§;2§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§;2§ && (mParentContainer.mParentContainer as §,2§).§ ! §)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§;2§.filters = [(mParentContainer.mParentContainer as §,2§).§ ! §];
            }
            else
            {
               this.§;2§.filters = [];
            }
         }
      }
   }
}
