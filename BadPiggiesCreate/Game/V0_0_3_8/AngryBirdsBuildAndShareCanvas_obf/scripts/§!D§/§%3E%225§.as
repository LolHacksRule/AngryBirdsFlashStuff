package §!D§
{
   import flash.display.MovieClip;
   
   public class §>"5§ extends §3!6§
   {
       
      
      public var §'!8§:MovieClip;
      
      public var §!l§:int = 0;
      
      public function §>"5§(param1:XML, param2:§ use§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§!l§ = param1.@childIndex;
         }
      }
      
      public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§'!8§ = param1;
         this.§'!8§.mouseEnabled = false;
         this.§'!8§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§!l§ < 1)
         {
            mClip.addChild(this.§'!8§);
         }
         else
         {
            mClip.addChildAt(this.§'!8§,this.§!l§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§'!8§)
         {
            this.§'!8§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§'!8§ && (mParentContainer.mParentContainer as §2!b§).§"!C§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§'!8§.filters = [(mParentContainer.mParentContainer as §2!b§).§"!C§];
            }
            else
            {
               this.§'!8§.filters = [];
            }
         }
      }
   }
}
