package §!i§
{
   import flash.display.MovieClip;
   
   public class §%!'§ extends §3!A§
   {
       
      
      public var §,!D§:MovieClip;
      
      public var §#T§:int = 0;
      
      public function §%!'§(param1:XML, param2:§1s§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§#T§ = param1.@childIndex;
         }
      }
      
      public function §3!u§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§,!D§ = param1;
         this.§,!D§.mouseEnabled = false;
         this.§,!D§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§#T§ < 1)
         {
            mClip.addChild(this.§,!D§);
         }
         else
         {
            mClip.addChildAt(this.§,!D§,this.§#T§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§,!D§)
         {
            this.§,!D§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§,!D§ && (mParentContainer.mParentContainer as §1W§).§7!%§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§,!D§.filters = [(mParentContainer.mParentContainer as §1W§).§7!%§];
            }
            else
            {
               this.§,!D§.filters = [];
            }
         }
      }
   }
}
