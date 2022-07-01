package §9"&§
{
   import §0!%§.§+c§;
   import §@#§.§4!O§;
   import §@#§.§9!'§;
   import §[!b§.§]"-§;
   import com.rovio.assets.§&!2§;
   import flash.display.MovieClip;
   
   public class §<!1§ extends §28§
   {
       
      
      public function §<!1§()
      {
         var _loc1_:Class = §&!2§.§0!O§("CountrySelection_Asset") as Class;
         §1!2§ = new _loc1_() as MovieClip;
         super();
      }
      
      override protected function updateVisuals() : void
      {
         super.updateVisuals();
      }
      
      override public function disposeRovioButton(param1:§9!'§) : void
      {
         if(§0!v§)
         {
            if(§0!v§.mClip.parent == this)
            {
               removeChild(§0!v§.mClip);
            }
            param1.mClip.addChild(§0!v§.mClip);
            param1.§]w§(§0!v§);
         }
      }
      
      override public function hide(param1:§9!'§) : void
      {
         if(§0!v§)
         {
            param1.mClip.addChild(§0!v§.mClip);
            param1.§]w§(§0!v§);
            §0!v§.setComponentState(§]"-§.COMPONENT_STATE_ACTIVE_DEFAULT);
            §0!v§.setEnabled(true);
            §0!v§ = null;
         }
      }
      
      override protected function createRovioButton(param1:§9!'§, param2:String) : void
      {
         var _loc3_:XML = null;
         var _loc5_:§4!O§ = null;
         var _loc4_:String = "ScrollItem_" + (data as §+c§).id;
         for each(_loc5_ in param1.§3H§)
         {
            if(_loc5_.mName == _loc4_)
            {
               return;
            }
         }
         _loc3_ = <Button/>;
         _loc3_.@name = _loc4_;
         _loc3_.@MouseUp = "SCROLLITEM_LANGUAGE_CLICK";
         §0!v§ = new §4!O§(_loc3_,param1,§1!2§);
         §0!v§.mClip.text.text = (data as §+c§).name;
         if(param2 == _loc4_)
         {
            §]!P§(true);
            param2 = "";
         }
         if(§0!v§.mClip.parent != this)
         {
            addChild(§0!v§.mClip);
            param1.§8!F§(§0!v§);
         }
      }
   }
}
