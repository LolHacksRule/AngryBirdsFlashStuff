package §;!9§
{
   import §2X§.§5L§;
   import §;"+§.§9!M§;
   import §;"+§.§^!i§;
   import §>P§.§-U§;
   import com.rovio.assets.§2"&§;
   import flash.display.MovieClip;
   
   public class §4!+§ extends §1O§
   {
       
      
      public function §4!+§()
      {
         var _loc1_:Class = §2"&§.§<$§("CountrySelection_Asset") as Class;
         §=!1§ = new _loc1_() as MovieClip;
         super();
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
         var _loc4_:String = "ScrollItem_" + (data as §5L§).id;
         for each(_loc5_ in param1.§[3§)
         {
            if(_loc5_.mName == _loc4_)
            {
               return;
            }
         }
         _loc3_ = <Button/>;
         _loc3_.@name = _loc4_;
         _loc3_.@MouseUp = "SCROLLITEM_COUNTRY_CLICK";
         §[!]§ = new §9!M§(_loc3_,param1,§=!1§);
         §[!]§.mClip.text.text = (data as §5L§).name;
         if(param2 == _loc4_)
         {
            §!!&§(true);
         }
         if(§[!]§.mClip.parent != this)
         {
            addChild(§[!]§.mClip);
            param1.§7!g§(§[!]§);
         }
      }
   }
}
