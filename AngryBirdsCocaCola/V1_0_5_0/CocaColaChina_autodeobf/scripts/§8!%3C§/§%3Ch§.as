package §8!<§
{
   import flash.display.MovieClip;
   
   public class §<h§ extends §29§
   {
       
      
      public var §0!L§:MovieClip;
      
      public var §"u§:int = 0;
      
      public function §<h§(param1:XML, param2:§2W§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§"u§ = param1.@childIndex;
         }
      }
      
      public function §[!W§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§0!L§ = param1;
         this.§0!L§.mouseEnabled = false;
         this.§0!L§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§"u§ < 1)
         {
            mClip.addChild(this.§0!L§);
         }
         else
         {
            mClip.addChildAt(this.§0!L§,this.§"u§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§0!L§)
         {
            this.§0!L§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§0!L§ && (mParentContainer.mParentContainer as §1e§).§3i§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§0!L§.filters = [(mParentContainer.mParentContainer as §1e§).§3i§];
            }
            else
            {
               this.§0!L§.filters = [];
            }
         }
      }
   }
}
