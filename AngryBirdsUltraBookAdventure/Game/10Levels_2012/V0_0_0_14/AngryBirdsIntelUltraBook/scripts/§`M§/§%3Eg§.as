package §`M§
{
   import flash.display.MovieClip;
   
   public class §>g§ extends §,c§
   {
       
      
      public var §27§:MovieClip;
      
      public var §,!t§:int = 0;
      
      public function §>g§(param1:XML, param2:§9!#§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§,!t§ = param1.@childIndex;
         }
      }
      
      public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§27§ = param1;
         this.§27§.mouseEnabled = false;
         this.§27§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§,!t§ < 1)
         {
            mClip.addChild(this.§27§);
         }
         else
         {
            mClip.addChildAt(this.§27§,this.§,!t§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§27§)
         {
            this.§27§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§27§ && (mParentContainer.mParentContainer as §[A§).§ !Q§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§27§.filters = [(mParentContainer.mParentContainer as §[A§).§ !Q§];
            }
            else
            {
               this.§27§.filters = [];
            }
         }
      }
   }
}
