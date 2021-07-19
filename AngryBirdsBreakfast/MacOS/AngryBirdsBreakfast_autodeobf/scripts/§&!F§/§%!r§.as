package §&!F§
{
   import §,L§.§%J§;
   import §0"$§.§"!a§;
   import §0"$§.§;§;
   import §5!G§.§#!6§;
   import com.rovio.assets.§<V§;
   import flash.display.MovieClip;
   
   public class §%!r§ extends §7n§
   {
       
      
      public function §%!r§()
      {
         var _loc1_:Class = §<V§.§"!,§("CountrySelection_Asset") as Class;
         §'!#§ = new _loc1_() as MovieClip;
         super();
      }
      
      override protected function updateVisuals() : void
      {
         super.updateVisuals();
      }
      
      override public function disposeRovioButton(param1:§"!a§) : void
      {
         if(§4!H§)
         {
            if(§4!H§.mClip.parent == this)
            {
               removeChild(§4!H§.mClip);
            }
            param1.mClip.addChild(§4!H§.mClip);
            param1.§^!F§(§4!H§);
         }
      }
      
      override public function hide(param1:§"!a§) : void
      {
         if(§4!H§)
         {
            param1.mClip.addChild(§4!H§.mClip);
            param1.§^!F§(§4!H§);
            §4!H§.setComponentState(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
            §4!H§.setEnabled(true);
            §4!H§ = null;
         }
      }
      
      override protected function createRovioButton(param1:§"!a§, param2:String) : void
      {
         var _loc3_:XML = null;
         var _loc5_:§;§ = null;
         var _loc4_:String = "ScrollItem_" + (data as §#!6§).id;
         for each(_loc5_ in param1.§<C§)
         {
            if(_loc5_.mName == _loc4_)
            {
               return;
            }
         }
         _loc3_ = <Button/>;
         _loc3_.@name = _loc4_;
         _loc3_.@MouseUp = "SCROLLITEM_LANGUAGE_CLICK";
         §4!H§ = new §;§(_loc3_,param1,§'!#§);
         §4!H§.mClip.text.text = (data as §#!6§).nativeName;
         if(param2 == _loc4_)
         {
            §+!6§(true);
            param2 = "";
         }
         if(§4!H§.mClip.parent != this)
         {
            addChild(§4!H§.mClip);
            param1.§<!f§(§4!H§);
         }
      }
   }
}
