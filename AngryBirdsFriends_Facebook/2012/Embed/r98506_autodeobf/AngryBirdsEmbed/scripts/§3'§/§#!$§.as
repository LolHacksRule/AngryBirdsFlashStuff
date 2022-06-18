package §3'§
{
   import flash.display.MovieClip;
   
   public class §#!$§ extends §5I§
   {
       
      
      public var §1x§:MovieClip;
      
      public var §8>§:int = 0;
      
      public function §#!$§(param1:XML, param2:§8I§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§8>§ = param1.@childIndex;
         }
      }
      
      public function §9!9§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§1x§ = param1;
         this.§1x§.mouseEnabled = false;
         this.§1x§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§8>§ < 1)
         {
            mClip.addChild(this.§1x§);
         }
         else
         {
            mClip.addChildAt(this.§1x§,this.§8>§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§1x§)
         {
            this.§1x§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§1x§ && (mParentContainer.mParentContainer as §5f§).§[!A§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§1x§.filters = [(mParentContainer.mParentContainer as §5f§).§[!A§];
            }
            else
            {
               this.§1x§.filters = [];
            }
         }
      }
   }
}
