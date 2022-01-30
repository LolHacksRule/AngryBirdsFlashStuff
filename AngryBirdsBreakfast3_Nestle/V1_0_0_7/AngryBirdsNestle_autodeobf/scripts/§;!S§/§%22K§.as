package §;!S§
{
   import §!!n§.§>!^§;
   import §<!0§.§3!W§;
   import §>P§.§73§;
   import §>P§.§]"4§;
   import com.rovio.assets.§[O§;
   import flash.display.MovieClip;
   
   public class §"K§ extends §9z§
   {
       
      
      public function §"K§()
      {
         var _loc1_:Class = §[O§.§1s§("CountrySelection_Asset") as Class;
         §0Q§ = new _loc1_() as MovieClip;
         super();
      }
      
      override protected function updateVisuals() : void
      {
         super.updateVisuals();
      }
      
      override public function disposeRovioButton(param1:§]"4§) : void
      {
         if(§1!y§)
         {
            if(§1!y§.mClip.parent == this)
            {
               removeChild(§1!y§.mClip);
            }
            param1.mClip.addChild(§1!y§.mClip);
            param1.§%?§(§1!y§);
         }
      }
      
      override public function hide(param1:§]"4§) : void
      {
         if(§1!y§)
         {
            param1.mClip.addChild(§1!y§.mClip);
            param1.§%?§(§1!y§);
            §1!y§.setComponentState(§3!W§.COMPONENT_STATE_ACTIVE_DEFAULT);
            §1!y§.setEnabled(true);
            §1!y§ = null;
         }
      }
      
      override protected function createRovioButton(param1:§]"4§, param2:String) : void
      {
         var _loc3_:XML = null;
         var _loc5_:§73§ = null;
         var _loc4_:String = "ScrollItem_" + (data as §>!^§).id;
         for each(_loc5_ in param1.§ !"§)
         {
            if(_loc5_.mName == _loc4_)
            {
               return;
            }
         }
         _loc3_ = <Button/>;
         _loc3_.@name = _loc4_;
         _loc3_.@MouseUp = "SCROLLITEM_LANGUAGE_CLICK";
         §1!y§ = new §73§(_loc3_,param1,§0Q§);
         §1!y§.mClip.text.text = (data as §>!^§).name;
         if(param2 == _loc4_)
         {
            §!!9§(true);
            param2 = "";
         }
         if(§1!y§.mClip.parent != this)
         {
            addChild(§1!y§.mClip);
            param1.§`P§(§1!y§);
         }
      }
   }
}
