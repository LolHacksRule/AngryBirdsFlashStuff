package §2$;§
{
   import flash.display.MovieClip;
   
   public class §?$1§ extends §;!b§
   {
       
      
      public var §&i§:MovieClip;
      
      public var §?#>§:int = 0;
      
      public function §?$1§(param1:XML, param2:§!"e§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(param1.@childIndex)
         {
            this.§?#>§ = param1.@childIndex;
         }
      }
      
      public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:MovieClip = null;
         this.§&i§ = param1;
         this.§&i§.mouseEnabled = false;
         this.§&i§.mouseChildren = false;
         if(param2 != null)
         {
            (_loc4_ = mClip.getChildByName(param2) as MovieClip).addChild(param1);
            if(_loc5_ = _loc4_.getChildByName(param2 + "_Guide") as MovieClip)
            {
               _loc5_.visible = false;
            }
         }
         else if(this.§?#>§ < 1)
         {
            mClip.addChild(this.§&i§);
         }
         else
         {
            mClip.addChildAt(this.§&i§,this.§?#>§ - 1);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.§&i§)
         {
            this.§&i§ = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.§&i§ && (mParentContainer.mParentContainer as §=]§).§@"9§)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.§&i§.filters = [(mParentContainer.mParentContainer as §=]§).§@"9§];
            }
            else
            {
               this.§&i§.filters = [];
            }
         }
      }
   }
}
