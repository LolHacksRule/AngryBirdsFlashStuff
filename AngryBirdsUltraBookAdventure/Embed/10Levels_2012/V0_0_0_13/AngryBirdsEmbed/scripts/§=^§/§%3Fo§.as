package §=^§
{
   import flash.display.MovieClip;
   
   public class §?o§ extends §]P§
   {
       
      
      public var §@!C§:MovieClip;
      
      public var §""§:int = 0;
      
      public function §?o§(param1:XML, param2:§`f§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§""§ = param1.@childIndex;
         }
      }
      
      public function §'v§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§@!C§ = param1;
         this.§@!C§.mouseEnabled = false;
         this.§@!C§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§""§ < 1)
         {
            mClip.addChild(this.§@!C§);
         }
         else
         {
            mClip.addChildAt(this.§@!C§,this.§""§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§@!C§)
         {
            this.§@!C§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§@!C§ && (mParentContainer.mParentContainer as §"M§).§>!D§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§@!C§.filters = [(mParentContainer.mParentContainer as §"M§).§>!D§];
            }
            else
            {
               this.§@!C§.filters = [];
            }
         }
      }
   }
}
