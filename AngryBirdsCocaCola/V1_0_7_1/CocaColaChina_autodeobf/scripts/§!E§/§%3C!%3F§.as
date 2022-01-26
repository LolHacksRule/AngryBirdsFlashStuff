package §!E§
{
   import flash.display.MovieClip;
   
   public class §<!?§ extends §;!P§
   {
       
      
      public var §'p§:MovieClip;
      
      public var §>!9§:int = 0;
      
      public function §<!?§(param1:XML, param2:§-!%§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§>!9§ = param1.@childIndex;
         }
      }
      
      public function §7F§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§'p§ = param1;
         this.§'p§.mouseEnabled = false;
         this.§'p§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§>!9§ < 1)
         {
            mClip.addChild(this.§'p§);
         }
         else
         {
            mClip.addChildAt(this.§'p§,this.§>!9§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§'p§)
         {
            this.§'p§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§'p§ && (mParentContainer.mParentContainer as §]!G§).§1!§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§'p§.filters = [(mParentContainer.mParentContainer as §]!G§).§1!§];
            }
            else
            {
               this.§'p§.filters = [];
            }
         }
      }
   }
}
