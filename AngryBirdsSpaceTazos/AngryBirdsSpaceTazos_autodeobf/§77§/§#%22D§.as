package §77§
{
   import flash.display.MovieClip;
   
   public class §#"D§ extends §@_§
   {
       
      
      public var §[I§:MovieClip;
      
      public var §'§:int = 0;
      
      public function §#"D§(param1:XML, param2:§ ",§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§'§ = param1.@childIndex;
         }
      }
      
      public function §]"$§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§[I§ = param1;
         this.§[I§.mouseEnabled = false;
         this.§[I§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§'§ < 1)
         {
            mClip.addChild(this.§[I§);
         }
         else
         {
            mClip.addChildAt(this.§[I§,this.§'§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§[I§)
         {
            this.§[I§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§[I§ && (mParentContainer.mParentContainer as §%]§).§,-§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§[I§.filters = [(mParentContainer.mParentContainer as §%]§).§,-§];
            }
            else
            {
               this.§[I§.filters = [];
            }
         }
      }
   }
}
