package §!t§
{
   import flash.display.MovieClip;
   
   public class §%5§ extends §5b§
   {
       
      
      public var §;_§:MovieClip;
      
      public var §'`§:int = 0;
      
      public function §%5§(param1:XML, param2:§;1§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§'`§ = param1.@childIndex;
         }
      }
      
      public function §=!N§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§;_§ = param1;
         this.§;_§.mouseEnabled = false;
         this.§;_§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§'`§ < 1)
         {
            mClip.addChild(this.§;_§);
         }
         else
         {
            mClip.addChildAt(this.§;_§,this.§'`§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§;_§)
         {
            this.§;_§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§;_§ && (mParentContainer.mParentContainer as §@R§).§"!&§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§;_§.filters = [(mParentContainer.mParentContainer as §@R§).§"!&§];
            }
            else
            {
               this.§;_§.filters = [];
            }
         }
      }
   }
}
