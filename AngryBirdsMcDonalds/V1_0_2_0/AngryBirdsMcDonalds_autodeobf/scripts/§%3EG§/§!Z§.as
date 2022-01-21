package §>G§
{
   import flash.display.MovieClip;
   
   public class §!Z§ extends §0Q§
   {
       
      
      public var §>!6§:MovieClip;
      
      public var §2p§:int = 0;
      
      public function §!Z§(param1:XML, param2:§]f§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§2p§ = param1.@childIndex;
         }
      }
      
      public function §'3§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§>!6§ = param1;
         this.§>!6§.mouseEnabled = false;
         this.§>!6§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§2p§ < 1)
         {
            mClip.addChild(this.§>!6§);
         }
         else
         {
            mClip.addChildAt(this.§>!6§,this.§2p§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§>!6§)
         {
            this.§>!6§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§>!6§ && (mParentContainer.mParentContainer as §>U§).§+i§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§>!6§.filters = [(mParentContainer.mParentContainer as §>U§).§+i§];
            }
            else
            {
               this.§>!6§.filters = [];
            }
         }
      }
   }
}
