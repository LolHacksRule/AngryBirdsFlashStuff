package §,a§
{
   import §&<§.§@j§;
   import §4!§.§1!R§;
   import §[!F§.§3j§;
   import §[!F§.§^!g§;
   import com.rovio.assets.§<U§;
   import flash.display.MovieClip;
   
   public class §+$§ extends §>O§
   {
       
      
      public function §+$§()
      {
         var _loc1_:Class = §<U§.§5"0§("CountrySelection_Asset") as Class;
         §"!M§ = new _loc1_() as MovieClip;
         super();
      }
      
      override public function disposeRovioButton(param1:§3j§) : void
      {
         if(§@!]§)
         {
            if(§@!]§.mClip.parent == this)
            {
               removeChild(§@!]§.mClip);
            }
            param1.mClip.addChild(§@!]§.mClip);
            param1.§`,§(§@!]§);
         }
      }
      
      override public function hide(param1:§3j§) : void
      {
         if(§@!]§)
         {
            param1.mClip.addChild(§@!]§.mClip);
            param1.§`,§(§@!]§);
            §@!]§.setComponentState(§@j§.COMPONENT_STATE_ACTIVE_DEFAULT);
            §@!]§.setEnabled(true);
            §@!]§ = null;
         }
      }
      
      override protected function createRovioButton(param1:§3j§, param2:String) : void
      {
         var _loc3_:XML = null;
         var _loc5_:§^!g§ = null;
         var _loc4_:String = "ScrollItem_" + (data as §1!R§).id;
         for each(_loc5_ in param1.§ !C§)
         {
            if(_loc5_.mName == _loc4_)
            {
               return;
            }
         }
         _loc3_ = <Button/>;
         _loc3_.@name = _loc4_;
         _loc3_.@MouseUp = "SCROLLITEM_COUNTRY_CLICK";
         §@!]§ = new §^!g§(_loc3_,param1,§"!M§);
         §@!]§.mClip.text.text = (data as §1!R§).name;
         if(param2 == _loc4_)
         {
            §7!s§(true);
         }
         if(§@!]§.mClip.parent != this)
         {
            addChild(§@!]§.mClip);
            param1.§0J§(§@!]§);
         }
      }
   }
}
