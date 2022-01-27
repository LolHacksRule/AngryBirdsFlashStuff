package §=!H§
{
   import flash.display.MovieClip;
   
   public class §<h§ extends §=<§
   {
       
      
      public var §9X§:MovieClip;
      
      public var §=Z§:int = 0;
      
      public function §<h§(param1:XML, param2:§9V§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§=Z§ = param1.@childIndex;
         }
      }
      
      public function §[!8§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§9X§ = param1;
         this.§9X§.mouseEnabled = false;
         this.§9X§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§=Z§ < 1)
         {
            mClip.addChild(this.§9X§);
         }
         else
         {
            mClip.addChildAt(this.§9X§,this.§=Z§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§9X§)
         {
            this.§9X§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§9X§ && (mParentContainer.mParentContainer as §7w§).§ K§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§9X§.filters = [(mParentContainer.mParentContainer as §7w§).§ K§];
            }
            else
            {
               this.§9X§.filters = [];
            }
         }
      }
   }
}
