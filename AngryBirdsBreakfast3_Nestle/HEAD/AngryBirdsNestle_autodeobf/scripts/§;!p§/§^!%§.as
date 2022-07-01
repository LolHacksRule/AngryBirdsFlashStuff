package §;!p§
{
   import §'"!§.§-!g§;
   import §2u§.§,6§;
   import §2u§.§]"%§;
   import §[+§.§"!u§;
   import com.rovio.assets.§=!V§;
   import flash.display.MovieClip;
   
   public class §^!%§ extends §#!N§
   {
       
      
      public function §^!%§()
      {
         var _loc1_:Class = §=!V§.§?!O§("CountrySelection_Asset") as Class;
         §=a§ = new _loc1_() as MovieClip;
         super();
      }
      
      override protected function updateVisuals() : void
      {
         super.updateVisuals();
      }
      
      override public function disposeRovioButton(param1:§,6§) : void
      {
         if(§^"0§)
         {
            if(§^"0§.mClip.parent == this)
            {
               removeChild(§^"0§.mClip);
            }
            param1.mClip.addChild(§^"0§.mClip);
            param1.§""5§(§^"0§);
         }
      }
      
      override public function hide(param1:§,6§) : void
      {
         if(§^"0§)
         {
            param1.mClip.addChild(§^"0§.mClip);
            param1.§""5§(§^"0§);
            §^"0§.setComponentState(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
            §^"0§.setEnabled(true);
            §^"0§ = null;
         }
      }
      
      override protected function createRovioButton(param1:§,6§, param2:String) : void
      {
         var _loc3_:XML = null;
         var _loc5_:§]"%§ = null;
         var _loc4_:String = "ScrollItem_" + (data as §"!u§).id;
         for each(_loc5_ in param1.§,_§)
         {
            if(_loc5_.mName == _loc4_)
            {
               return;
            }
         }
         _loc3_ = <Button/>;
         _loc3_.@name = _loc4_;
         _loc3_.@MouseUp = "SCROLLITEM_LANGUAGE_CLICK";
         §^"0§ = new §]"%§(_loc3_,param1,§=a§);
         §^"0§.mClip.text.text = (data as §"!u§).nativeName;
         if(param2 == _loc4_)
         {
            §""-§(true);
            param2 = "";
         }
         if(§^"0§.mClip.parent != this)
         {
            addChild(§^"0§.mClip);
            param1.§!!1§(§^"0§);
         }
      }
   }
}
