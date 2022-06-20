package §%i§
{
   import flash.display.MovieClip;
   
   public class §4!w§ extends §7"0§
   {
       
      
      public var §&"E§:MovieClip;
      
      public var §#"T§:int = 0;
      
      public function §4!w§(param1:XML, param2:§0!Y§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§#"T§ = param1.@childIndex;
         }
      }
      
      public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§&"E§ = param1;
         this.§&"E§.mouseEnabled = false;
         this.§&"E§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§#"T§ < 1)
         {
            mClip.addChild(this.§&"E§);
         }
         else
         {
            mClip.addChildAt(this.§&"E§,this.§#"T§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§&"E§)
         {
            this.§&"E§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§&"E§ && (mParentContainer.mParentContainer as §7!t§).§`!D§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§&"E§.filters = [(mParentContainer.mParentContainer as §7!t§).§`!D§];
            }
            else
            {
               this.§&"E§.filters = [];
            }
         }
      }
   }
}
