package §=8§
{
   import flash.display.MovieClip;
   
   public class §8g§ extends dynamic
   {
       
      
      public var §]U§:MovieClip;
      
      public var §3k§:int = 0;
      
      public function §8g§(param1:XML, param2:§'^§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§3k§ = param1.@childIndex;
         }
      }
      
      public function §[S§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§]U§ = param1;
         this.§]U§.mouseEnabled = false;
         this.§]U§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§3k§ < 1)
         {
            mClip.addChild(this.§]U§);
         }
         else
         {
            mClip.addChildAt(this.§]U§,this.§3k§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§]U§)
         {
            this.§]U§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§]U§ && (mParentContainer.mParentContainer as §%y§).§>a§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§]U§.filters = [(mParentContainer.mParentContainer as §%y§).§>a§];
            }
            else
            {
               this.§]U§.filters = [];
            }
         }
      }
   }
}
