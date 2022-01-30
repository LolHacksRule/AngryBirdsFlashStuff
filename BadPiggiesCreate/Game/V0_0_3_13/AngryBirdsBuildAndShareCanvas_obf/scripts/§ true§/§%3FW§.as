package § true§
{
   import flash.display.MovieClip;
   
   public class §?W§ extends §8K§
   {
       
      
      public var §,h§:MovieClip;
      
      public var §9!6§:int = 0;
      
      public function §?W§(param1:XML, param2:§1H§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§9!6§ = param1.@childIndex;
         }
      }
      
      public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§,h§ = param1;
         this.§,h§.mouseEnabled = false;
         this.§,h§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§9!6§ < 1)
         {
            mClip.addChild(this.§,h§);
         }
         else
         {
            mClip.addChildAt(this.§,h§,this.§9!6§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§,h§)
         {
            this.§,h§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§,h§ && (mParentContainer.mParentContainer as §0!g§).§ n§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§,h§.filters = [(mParentContainer.mParentContainer as §0!g§).§ n§];
            }
            else
            {
               this.§,h§.filters = [];
            }
         }
      }
   }
}
