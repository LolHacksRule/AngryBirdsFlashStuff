package §>M§
{
   import flash.display.MovieClip;
   
   public class §[!D§ extends §^-§
   {
       
      
      public var §>y§:MovieClip;
      
      public var §`s§:int = 0;
      
      public function §[!D§(param1:XML, param2:§<6§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§`s§ = param1.@childIndex;
         }
      }
      
      public function §3!3§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§>y§ = param1;
         this.§>y§.mouseEnabled = false;
         this.§>y§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§`s§ < 1)
         {
            mClip.addChild(this.§>y§);
         }
         else
         {
            mClip.addChildAt(this.§>y§,this.§`s§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§>y§)
         {
            this.§>y§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§>y§ && (mParentContainer.mParentContainer as §]w§).§9!'§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§>y§.filters = [(mParentContainer.mParentContainer as §]w§).§9!'§];
            }
            else
            {
               this.§>y§.filters = [];
            }
         }
      }
   }
}
