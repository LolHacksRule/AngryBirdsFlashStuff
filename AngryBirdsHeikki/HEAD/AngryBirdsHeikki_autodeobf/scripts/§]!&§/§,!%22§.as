package §]!&§
{
   import flash.display.MovieClip;
   
   public class §,!"§ extends §^!g§
   {
       
      
      public var §0Y§:MovieClip;
      
      public var §8Y§:int = 0;
      
      public function §,!"§(param1:XML, param2:§5!5§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§8Y§ = param1.@childIndex;
         }
      }
      
      public function §%!h§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§0Y§ = param1;
         this.§0Y§.mouseEnabled = false;
         this.§0Y§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§8Y§ < 1)
         {
            mClip.addChild(this.§0Y§);
         }
         else
         {
            mClip.addChildAt(this.§0Y§,this.§8Y§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§0Y§)
         {
            this.§0Y§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§0Y§ && (mParentContainer.mParentContainer as §[!9§).§"!0§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§0Y§.filters = [(mParentContainer.mParentContainer as §[!9§).§"!0§];
            }
            else
            {
               this.§0Y§.filters = [];
            }
         }
      }
   }
}
