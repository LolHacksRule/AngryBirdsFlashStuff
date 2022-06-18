package §%#A§
{
   import flash.display.MovieClip;
   
   public class §=!k§ extends §,#w§
   {
       
      
      public var §,$+§:MovieClip;
      
      public var §7!T§:int = 0;
      
      public function §=!k§(param1:XML, param2:§]!_§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§7!T§ = param1.@childIndex;
         }
      }
      
      public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§,$+§ = param1;
         this.§,$+§.mouseEnabled = false;
         this.§,$+§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§7!T§ < 1)
         {
            mClip.addChild(this.§,$+§);
         }
         else
         {
            mClip.addChildAt(this.§,$+§,this.§7!T§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§,$+§)
         {
            this.§,$+§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§,$+§ && (mParentContainer.mParentContainer as §&#4§).§-"R§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§,$+§.filters = [(mParentContainer.mParentContainer as §&#4§).§-"R§];
            }
            else
            {
               this.§,$+§.filters = [];
            }
         }
      }
   }
}
