package §31§
{
   import flash.display.MovieClip;
   
   public class §,!;§ extends §#!d§
   {
       
      
      public var §default§:MovieClip;
      
      public var §0$§:int = 0;
      
      public function §,!;§(param1:XML, param2:§ !A§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§0$§ = param1.@childIndex;
         }
      }
      
      public function §5!7§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§default§ = param1;
         this.§default§.mouseEnabled = false;
         this.§default§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§0$§ < 1)
         {
            mClip.addChild(this.§default§);
         }
         else
         {
            mClip.addChildAt(this.§default§,this.§0$§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§default§)
         {
            this.§default§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§default§ && (mParentContainer.mParentContainer as §;!2§).§ !W§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§default§.filters = [(mParentContainer.mParentContainer as §;!2§).§ !W§];
            }
            else
            {
               this.§default§.filters = [];
            }
         }
      }
   }
}
