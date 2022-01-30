package §1W§
{
   import §'9§.§+A§;
   import §3!!§.§5" §;
   import §3!!§.§?v§;
   import §@f§.§4d§;
   import com.rovio.assets.§^1§;
   import flash.display.MovieClip;
   
   public class §'"4§ extends §;"$§
   {
       
      
      public function §'"4§()
      {
         var _loc1_:Class = §^1§.§+!I§("CountrySelection_Asset") as Class;
         §3H§ = new _loc1_() as MovieClip;
         super();
      }
      
      override public function disposeRovioButton(param1:§5" §) : void
      {
         if(§!q§)
         {
            if(§!q§.mClip.parent == this)
            {
               removeChild(§!q§.mClip);
            }
            param1.mClip.addChild(§!q§.mClip);
            param1.§2h§(§!q§);
         }
      }
      
      override public function hide(param1:§5" §) : void
      {
         if(§!q§)
         {
            param1.mClip.addChild(§!q§.mClip);
            param1.§2h§(§!q§);
            §!q§.setComponentState(§4d§.COMPONENT_STATE_ACTIVE_DEFAULT);
            §!q§.setEnabled(true);
            §!q§ = null;
         }
      }
      
      override protected function createRovioButton(param1:§5" §, param2:String) : void
      {
         var _loc3_:XML = null;
         var _loc5_:§?v§ = null;
         var _loc4_:String = "ScrollItem_" + (data as §+A§).id;
         for each(_loc5_ in param1.§ q§)
         {
            if(_loc5_.mName == _loc4_)
            {
               return;
            }
         }
         _loc3_ = <Button/>;
         _loc3_.@name = _loc4_;
         _loc3_.@MouseUp = "SCROLLITEM_COUNTRY_CLICK";
         §!q§ = new §?v§(_loc3_,param1,§3H§);
         §!q§.mClip.text.text = (data as §+A§).name;
         if(param2 == _loc4_)
         {
            §=1§(true);
         }
         if(§!q§.mClip.parent != this)
         {
            addChild(§!q§.mClip);
            param1.§,W§(§!q§);
         }
      }
   }
}
