package § "L§
{
   import flash.display.MovieClip;
   
   public class §[" § extends §1"r§
   {
       
      
      public var §=x§:MovieClip;
      
      public var §!K§:int = 0;
      
      public function §[" §(param1:XML, param2:§23§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§!K§ = param1.@childIndex;
         }
      }
      
      public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§=x§ = param1;
         this.§=x§.mouseEnabled = false;
         this.§=x§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§!K§ < 1)
         {
            mClip.addChild(this.§=x§);
         }
         else
         {
            mClip.addChildAt(this.§=x§,this.§!K§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§=x§)
         {
            this.§=x§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§=x§ && (mParentContainer.mParentContainer as §!U§).§6!8§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§=x§.filters = [(mParentContainer.mParentContainer as §!U§).§6!8§];
            }
            else
            {
               this.§=x§.filters = [];
            }
         }
      }
   }
}
