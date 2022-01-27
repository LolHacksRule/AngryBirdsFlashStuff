package §""d§
{
   import flash.display.MovieClip;
   
   public class §96§ extends §2"8§
   {
       
      
      public var §each §:MovieClip;
      
      public var §-"^§:int = 0;
      
      public function §96§(param1:XML, param2:§,m§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§-"^§ = param1.@childIndex;
         }
      }
      
      public function §=!$§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§each § = param1;
         this.§each §.mouseEnabled = false;
         this.§each §.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§-"^§ < 1)
         {
            mClip.addChild(this.§each §);
         }
         else
         {
            mClip.addChildAt(this.§each §,this.§-"^§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§each §)
         {
            this.§each § = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§each § && (mParentContainer.mParentContainer as §>"x§).§1!D§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§each §.filters = [(mParentContainer.mParentContainer as §>"x§).§1!D§];
            }
            else
            {
               this.§each §.filters = [];
            }
         }
      }
   }
}
