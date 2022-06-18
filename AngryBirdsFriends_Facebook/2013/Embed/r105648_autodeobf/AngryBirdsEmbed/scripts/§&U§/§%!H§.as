package §&U§
{
   import flash.display.MovieClip;
   
   public class §%!H§ extends §^!@§
   {
       
      
      public var §,!K§:MovieClip;
      
      public var §]!!§:int = 0;
      
      public function §%!H§(param1:XML, param2:§05§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§]!!§ = param1.@childIndex;
         }
      }
      
      public function §#g§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§,!K§ = param1;
         this.§,!K§.mouseEnabled = false;
         this.§,!K§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§]!!§ < 1)
         {
            mClip.addChild(this.§,!K§);
         }
         else
         {
            mClip.addChildAt(this.§,!K§,this.§]!!§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§,!K§)
         {
            this.§,!K§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§,!K§ && (mParentContainer.mParentContainer as §`%§).§-!$§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§,!K§.filters = [(mParentContainer.mParentContainer as §`%§).§-!$§];
            }
            else
            {
               this.§,!K§.filters = [];
            }
         }
      }
   }
}
