package §>!7§
{
   import §!R§.§-!T§;
   import §4Y§.§ `§;
   import §4Y§.§%n§;
   import §9!!§.§'E§;
   import com.rovio.assets.§1!C§;
   import flash.display.MovieClip;
   
   public class §%!J§ extends §6!=§
   {
       
      
      public function §%!J§()
      {
         var _loc1_:Class = §1!C§.§"!&§("CountrySelection_Asset") as Class;
         §%"%§ = new _loc1_() as MovieClip;
         super();
      }
      
      override protected function updateVisuals() : void
      {
         super.updateVisuals();
      }
      
      override public function disposeRovioButton(param1:§%n§) : void
      {
         if(§9!K§)
         {
            if(§9!K§.mClip.parent == this)
            {
               removeChild(§9!K§.mClip);
            }
            param1.mClip.addChild(§9!K§.mClip);
            param1.§^!C§(§9!K§);
         }
      }
      
      override public function hide(param1:§%n§) : void
      {
         if(§9!K§)
         {
            param1.mClip.addChild(§9!K§.mClip);
            param1.§^!C§(§9!K§);
            §9!K§.setComponentState(§-!T§.COMPONENT_STATE_ACTIVE_DEFAULT);
            §9!K§.setEnabled(true);
            §9!K§ = null;
         }
      }
      
      override protected function createRovioButton(param1:§%n§, param2:String) : void
      {
         var _loc3_:XML = null;
         var _loc5_:§ `§ = null;
         var _loc4_:String = "ScrollItem_" + (data as §'E§).id;
         for each(_loc5_ in param1.§@U§)
         {
            if(_loc5_.mName == _loc4_)
            {
               return;
            }
         }
         _loc3_ = <Button/>;
         _loc3_.@name = _loc4_;
         _loc3_.@MouseUp = "SCROLLITEM_LANGUAGE_CLICK";
         §9!K§ = new § `§(_loc3_,param1,§%"%§);
         §9!K§.mClip.text.text = (data as §'E§).nativeName;
         if(param2 == _loc4_)
         {
            §4""§(true);
            param2 = "";
         }
         if(§9!K§.mClip.parent != this)
         {
            addChild(§9!K§.mClip);
            param1.§]K§(§9!K§);
         }
      }
   }
}
