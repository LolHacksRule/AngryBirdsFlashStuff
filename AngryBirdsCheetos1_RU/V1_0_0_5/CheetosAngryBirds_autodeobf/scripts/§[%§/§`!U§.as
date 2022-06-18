package §[%§
{
   import flash.display.MovieClip;
   
   public class §`!U§ extends §6!§
   {
       
      
      public var §&g§:MovieClip;
      
      public var § l§:int = 0;
      
      public function §`!U§(param1:XML, param2:§&a§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§ l§ = param1.@childIndex;
         }
      }
      
      public function §!o§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§&g§ = param1;
         this.§&g§.mouseEnabled = false;
         this.§&g§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§ l§ < 1)
         {
            mClip.addChild(this.§&g§);
         }
         else
         {
            mClip.addChildAt(this.§&g§,this.§ l§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§&g§)
         {
            this.§&g§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§&g§ && (mParentContainer.mParentContainer as §+![§).§;x§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§&g§.filters = [(mParentContainer.mParentContainer as §+![§).§;x§];
            }
            else
            {
               this.§&g§.filters = [];
            }
         }
      }
   }
}
