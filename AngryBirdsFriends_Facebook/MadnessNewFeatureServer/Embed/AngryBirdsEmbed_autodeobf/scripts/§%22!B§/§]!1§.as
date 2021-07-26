package §"!B§
{
   import flash.display.MovieClip;
   
   public class §]!1§ extends §+!9§
   {
       
      
      public var §-m§:MovieClip;
      
      public var §0!#§:int = 0;
      
      public function §]!1§(param1:XML, param2:§58§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§0!#§ = param1.@childIndex;
         }
      }
      
      public function §^W§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§-m§ = param1;
         this.§-m§.mouseEnabled = false;
         this.§-m§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§0!#§ < 1)
         {
            mClip.addChild(this.§-m§);
         }
         else
         {
            mClip.addChildAt(this.§-m§,this.§0!#§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§-m§)
         {
            this.§-m§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§-m§ && (mParentContainer.mParentContainer as §const§).§[3§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§-m§.filters = [(mParentContainer.mParentContainer as §const§).§[3§];
            }
            else
            {
               this.§-m§.filters = [];
            }
         }
      }
   }
}
