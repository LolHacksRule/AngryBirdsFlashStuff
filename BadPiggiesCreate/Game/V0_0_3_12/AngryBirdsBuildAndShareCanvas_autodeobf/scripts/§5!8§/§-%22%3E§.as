package §5!8§
{
   import flash.display.MovieClip;
   
   public class §-">§ extends §;!Z§
   {
       
      
      public var §9F§:MovieClip;
      
      public var §`!0§:int = 0;
      
      public function §-">§(param1:XML, param2:§+!?§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§`!0§ = param1.@childIndex;
         }
      }
      
      public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§9F§ = param1;
         this.§9F§.mouseEnabled = false;
         this.§9F§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§`!0§ < 1)
         {
            mClip.addChild(this.§9F§);
         }
         else
         {
            mClip.addChildAt(this.§9F§,this.§`!0§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§9F§)
         {
            this.§9F§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§9F§ && (mParentContainer.mParentContainer as §-!+§).§7]§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§9F§.filters = [(mParentContainer.mParentContainer as §-!+§).§7]§];
            }
            else
            {
               this.§9F§.filters = [];
            }
         }
      }
   }
}
