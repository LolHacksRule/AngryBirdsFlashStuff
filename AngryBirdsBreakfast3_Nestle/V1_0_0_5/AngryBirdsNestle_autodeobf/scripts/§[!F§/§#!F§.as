package §[!F§
{
   import flash.display.MovieClip;
   
   public class §#!F§ extends §^!g§
   {
       
      
      public var §6!w§:MovieClip;
      
      public var §95§:int = 0;
      
      public function §#!F§(param1:XML, param2:§3j§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§95§ = param1.@childIndex;
         }
      }
      
      public function §,f§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§6!w§ = param1;
         this.§6!w§.mouseEnabled = false;
         this.§6!w§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§95§ < 1)
         {
            mClip.addChild(this.§6!w§);
         }
         else
         {
            mClip.addChildAt(this.§6!w§,this.§95§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§6!w§)
         {
            this.§6!w§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§6!w§ && (mParentContainer.mParentContainer as §2!;§).§``§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§6!w§.filters = [(mParentContainer.mParentContainer as §2!;§).§``§];
            }
            else
            {
               this.§6!w§.filters = [];
            }
         }
      }
   }
}
