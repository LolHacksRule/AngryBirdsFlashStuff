package §@!]§
{
   import flash.display.MovieClip;
   
   public class §`J§ extends §&!!§
   {
       
      
      public var §=e§:MovieClip;
      
      public var §^!f§:int = 0;
      
      public function §`J§(param1:XML, param2:§'!9§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§^!f§ = param1.@childIndex;
         }
      }
      
      public function §7z§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§=e§ = param1;
         this.§=e§.mouseEnabled = false;
         this.§=e§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§^!f§ < 1)
         {
            mClip.addChild(this.§=e§);
         }
         else
         {
            mClip.addChildAt(this.§=e§,this.§^!f§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§=e§)
         {
            this.§=e§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§=e§ && (mParentContainer.mParentContainer as §?u§).§,^§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§=e§.filters = [(mParentContainer.mParentContainer as §?u§).§,^§];
            }
            else
            {
               this.§=e§.filters = [];
            }
         }
      }
   }
}
