package §2K§
{
   import flash.display.MovieClip;
   
   public class §#1§ extends § 3§
   {
       
      
      public var §%!H§:MovieClip;
      
      public var §5q§:int = 0;
      
      public function §#1§(param1:XML, param2:§,!@§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§5q§ = param1.@childIndex;
         }
      }
      
      public function §@!#§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§%!H§ = param1;
         this.§%!H§.mouseEnabled = false;
         this.§%!H§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§5q§ < 1)
         {
            mClip.addChild(this.§%!H§);
         }
         else
         {
            mClip.addChildAt(this.§%!H§,this.§5q§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§%!H§)
         {
            this.§%!H§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§%!H§ && (mParentContainer.mParentContainer as §7&§).§;!`§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§%!H§.filters = [(mParentContainer.mParentContainer as §7&§).§;!`§];
            }
            else
            {
               this.§%!H§.filters = [];
            }
         }
      }
   }
}
