package §;!9§
{
   import §2X§.§3Q§;
   import §;"+§.§9!M§;
   import §;"+§.§^!i§;
   import §>P§.§-U§;
   import com.rovio.assets.§2"&§;
   import flash.display.MovieClip;
   
   public class §"!_§ extends §1O§
   {
       
      
      public function §"!_§()
      {
         var _loc1_:Class = §2"&§.§<$§("CountrySelection_Asset") as Class;
         §=!1§ = new _loc1_() as MovieClip;
         super();
      }
      
      override protected function updateVisuals() : void
      {
         super.updateVisuals();
      }
      
      override public function disposeRovioButton(param1:§^!i§) : void
      {
         if(§[!]§)
         {
            if(§[!]§.mClip.parent == this)
            {
               removeChild(§[!]§.mClip);
            }
            param1.mClip.addChild(§[!]§.mClip);
            param1.§"'§(§[!]§);
         }
      }
      
      override public function hide(param1:§^!i§) : void
      {
         if(§[!]§)
         {
            param1.mClip.addChild(§[!]§.mClip);
            param1.§"'§(§[!]§);
            §[!]§.setComponentState(§-U§.COMPONENT_STATE_ACTIVE_DEFAULT);
            §[!]§.setEnabled(true);
            §[!]§ = null;
         }
      }
      
      override protected function createRovioButton(param1:§^!i§, param2:String) : void
      {
         var _loc3_:XML = null;
         var _loc5_:§9!M§ = null;
         var _loc4_:String = "ScrollItem_" + (data as §3Q§).id;
         for each(_loc5_ in param1.§[3§)
         {
            if(_loc5_.mName == _loc4_)
            {
               return;
            }
         }
         _loc3_ = <Button/>;
         _loc3_.@name = _loc4_;
         _loc3_.@MouseUp = "SCROLLITEM_LANGUAGE_CLICK";
         §[!]§ = new §9!M§(_loc3_,param1,§=!1§);
         §[!]§.mClip.text.text = (data as §3Q§).name;
         if(param2 == _loc4_)
         {
            §!!&§(true);
            param2 = "";
         }
         if(§[!]§.mClip.parent != this)
         {
            addChild(§[!]§.mClip);
            param1.§7!g§(§[!]§);
         }
      }
   }
}
