package §,!7§
{
   import flash.display.MovieClip;
   
   public class §%]§ extends §%!J§
   {
       
      
      public var §^"7§:MovieClip;
      
      public var §!"1§:int = 0;
      
      public function §%]§(param1:XML, param2:§5!k§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§!"1§ = param1.@childIndex;
         }
      }
      
      public function §break§(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§^"7§ = param1;
         this.§^"7§.mouseEnabled = false;
         this.§^"7§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§!"1§ < 1)
         {
            mClip.addChild(this.§^"7§);
         }
         else
         {
            mClip.addChildAt(this.§^"7§,this.§!"1§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§^"7§)
         {
            this.§^"7§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§^"7§ && (mParentContainer.mParentContainer as §]I§).§3!2§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§^"7§.filters = [(mParentContainer.mParentContainer as §]I§).§3!2§];
            }
            else
            {
               this.§^"7§.filters = [];
            }
         }
      }
   }
}
