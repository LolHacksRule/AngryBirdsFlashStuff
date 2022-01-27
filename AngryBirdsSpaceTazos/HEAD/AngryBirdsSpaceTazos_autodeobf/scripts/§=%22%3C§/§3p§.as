package §="<§
{
   import flash.display.MovieClip;
   
   public class §3p§ extends §87§
   {
       
      
      public var §8!2§:MovieClip;
      
      public var §'w§:int = 0;
      
      public function §3p§(param1:XML, param2:§,"$§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§'w§ = param1.@childIndex;
         }
      }
      
      public function §6![§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§8!2§ = param1;
         this.§8!2§.mouseEnabled = false;
         this.§8!2§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§'w§ < 1)
         {
            mClip.addChild(this.§8!2§);
         }
         else
         {
            mClip.addChildAt(this.§8!2§,this.§'w§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§8!2§)
         {
            this.§8!2§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§8!2§ && (mParentContainer.mParentContainer as §5!;§).§'7§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§8!2§.filters = [(mParentContainer.mParentContainer as §5!;§).§'7§];
            }
            else
            {
               this.§8!2§.filters = [];
            }
         }
      }
   }
}
