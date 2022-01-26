package §]!&§
{
   import flash.display.MovieClip;
   
   public class § '§ extends §#?§
   {
       
      
      public var §;!6§:MovieClip;
      
      public var §%!D§:int = 0;
      
      public function § '§(param1:XML, param2:§]!K§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§%!D§ = param1.@childIndex;
         }
      }
      
      public function §#O§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§;!6§ = param1;
         this.§;!6§.mouseEnabled = false;
         this.§;!6§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§%!D§ < 1)
         {
            mClip.addChild(this.§;!6§);
         }
         else
         {
            mClip.addChildAt(this.§;!6§,this.§%!D§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§;!6§)
         {
            this.§;!6§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§;!6§ && (mParentContainer.mParentContainer as §#S§).§<!H§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§;!6§.filters = [(mParentContainer.mParentContainer as §#S§).§<!H§];
            }
            else
            {
               this.§;!6§.filters = [];
            }
         }
      }
   }
}
