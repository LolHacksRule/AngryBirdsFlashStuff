package §=!7§
{
   import flash.display.MovieClip;
   
   public class §#!n§ extends §9"8§
   {
       
      
      public var §[K§:MovieClip;
      
      public var §0!E§:int = 0;
      
      public function §#!n§(param1:XML, param2:§6W§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§0!E§ = param1.@childIndex;
         }
      }
      
      public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§[K§ = param1;
         this.§[K§.mouseEnabled = false;
         this.§[K§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§0!E§ < 1)
         {
            mClip.addChild(this.§[K§);
         }
         else
         {
            mClip.addChildAt(this.§[K§,this.§0!E§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§[K§)
         {
            this.§[K§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§[K§ && (mParentContainer.mParentContainer as §3!b§).§9!K§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§[K§.filters = [(mParentContainer.mParentContainer as §3!b§).§9!K§];
            }
            else
            {
               this.§[K§.filters = [];
            }
         }
      }
   }
}
