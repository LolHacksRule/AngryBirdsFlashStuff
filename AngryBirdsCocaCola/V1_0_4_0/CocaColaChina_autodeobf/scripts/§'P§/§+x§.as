package §'P§
{
   import flash.display.MovieClip;
   
   public class §+x§ extends §,!"§
   {
       
      
      public var §`!J§:MovieClip;
      
      public var §8!b§:int = 0;
      
      public function §+x§(param1:XML, param2:§`;§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§8!b§ = param1.@childIndex;
         }
      }
      
      public function include(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§`!J§ = param1;
         this.§`!J§.mouseEnabled = false;
         this.§`!J§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§8!b§ < 1)
         {
            mClip.addChild(this.§`!J§);
         }
         else
         {
            mClip.addChildAt(this.§`!J§,this.§8!b§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§`!J§)
         {
            this.§`!J§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§`!J§ && (mParentContainer.mParentContainer as §]! §).§7E§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§`!J§.filters = [(mParentContainer.mParentContainer as §]! §).§7E§];
            }
            else
            {
               this.§`!J§.filters = [];
            }
         }
      }
   }
}
