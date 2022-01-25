package §[h§
{
   import flash.display.MovieClip;
   
   public class §+C§ extends §49§
   {
       
      
      public var §3!F§:MovieClip;
      
      public var §`S§:int = 0;
      
      public function §+C§(param1:XML, param2:§ !&§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§`S§ = param1.@childIndex;
         }
      }
      
      public function §-g§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§3!F§ = param1;
         this.§3!F§.mouseEnabled = false;
         this.§3!F§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§`S§ < 1)
         {
            mClip.addChild(this.§3!F§);
         }
         else
         {
            mClip.addChildAt(this.§3!F§,this.§`S§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§3!F§)
         {
            this.§3!F§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§3!F§ && (mParentContainer.mParentContainer as §#<§).§&!S§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§3!F§.filters = [(mParentContainer.mParentContainer as §#<§).§&!S§];
            }
            else
            {
               this.§3!F§.filters = [];
            }
         }
      }
   }
}
