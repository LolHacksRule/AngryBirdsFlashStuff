package §+D§
{
   import flash.display.MovieClip;
   
   public class §&E§ extends §^"m§
   {
       
      
      public var §2#2§:MovieClip;
      
      public var §1!F§:int = 0;
      
      public function §&E§(param1:XML, param2:§ #^§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§1!F§ = param1.@childIndex;
         }
      }
      
      public function §4,§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§2#2§ = param1;
         this.§2#2§.mouseEnabled = false;
         this.§2#2§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§1!F§ < 1)
         {
            mClip.addChild(this.§2#2§);
         }
         else
         {
            mClip.addChildAt(this.§2#2§,this.§1!F§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§2#2§)
         {
            this.§2#2§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§2#2§ && (mParentContainer.mParentContainer as §?"o§).§+""§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§2#2§.filters = [(mParentContainer.mParentContainer as §?"o§).§+""§];
            }
            else
            {
               this.§2#2§.filters = [];
            }
         }
      }
   }
}
