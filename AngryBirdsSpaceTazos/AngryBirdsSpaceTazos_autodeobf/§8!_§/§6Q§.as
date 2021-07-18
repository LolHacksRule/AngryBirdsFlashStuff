package §8!_§
{
   import § !Y§.§&$§;
   import §"!&§.§8"F§;
   import §%!r§.§3!'§;
   import §3D§.HighscoreSidebar;
   import §77§.§&!>§;
   import §77§.§,y§;
   import §^"#§.§!j§;
   import §^"#§.§&"$§;
   import §^"#§.ColorFadeLayerEvent;
   import §`!j§.§9"!§;
   
   public class §6Q§ extends §6]§
   {
       
      
      protected var §!"&§:§&"$§ = null;
      
      private var §+z§:Boolean;
      
      public function §6Q§(param1:§9"!§, param2:§3!'§, param3:§8"F§, param4:Boolean = true, param5:String = "LevelLoadStateClassic")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§!"&§ = new §&"$§(0,0,0,0);
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:§!j§ = null;
         if(this.§!"&§ && this.§!"&§.parent == §8!A§.container.mClip)
         {
            §8!A§.container.mClip.removeChild(this.§!"&§);
         }
         super.activate(param1);
         this.updateLocalization();
         this.setLoadingText();
         this.§+z§ = false;
         if((§ !g§.§;!'§ as §`Y§).§&,§.§ w§())
         {
            (§ !g§.§;!'§ as §`Y§).§&,§.§4"1§(false);
         }
         else
         {
            (§ !g§.§;!'§ as §`Y§).§&,§.§""8§(false);
         }
         for each(_loc2_ in (§ !g§.§;!'§ as §`Y§).§&,§.§>!?§)
         {
            (§8!A§.getItemByName("MovieClip_ChapterSelectionBG") as §,y§).mClip.addChild(_loc2_);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:§!j§ = null;
         for each(_loc1_ in (§ !g§.§;!'§ as §`Y§).§&,§.§>!?§)
         {
            (§8!A§.getItemByName("MovieClip_ChapterSelectionBG") as §,y§).mClip.removeChild(_loc1_);
         }
         super.deActivate();
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         §&$§.§[!1§.updateTextFields(§8!A§.container,"StateLevelLoading");
      }
      
      override protected function setLoadingText() : void
      {
         var _loc1_:String = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         if(§6u§.currentLevel != null)
         {
            _loc1_ = (§8!A§.getItemByName("TextField_LevelLoading") as §&!>§).§ !'§.text;
            _loc2_ = int(§6u§.currentLevel.charAt(0)) - 1;
            _loc3_ = int(§6u§.currentLevel.substring(2));
            _loc4_ = _loc3_ + HighscoreSidebar.§!]§ * _loc2_ - 1;
            _loc5_ = HighscoreSidebar.§ true§[_loc4_];
            §8!A§.setText(_loc1_ + " " + _loc5_,"TextField_LevelLoading");
         }
      }
      
      override public function onLevelLoadReady() : void
      {
         this.§&"§();
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§<!E§(param1);
      }
      
      private function §<!E§(param1:Number) : void
      {
         var _loc2_:§!j§ = null;
         for each(_loc2_ in (§ !g§.§;!'§ as §`Y§).§&,§.§>!?§)
         {
            _loc2_.update(param1);
            if(!_loc2_.isAlive)
            {
               (§ !g§.§;!'§ as §`Y§).§&,§.§>!?§.splice((§ !g§.§;!'§ as §`Y§).§&,§.§>!?§.indexOf(_loc2_),1);
               (§8!A§.getItemByName("MovieClip_ChapterSelectionBG") as §,y§).mClip.removeChild(_loc2_);
            }
         }
      }
      
      protected function §&"§() : void
      {
         if(this.§!"&§ && !this.§+z§)
         {
            this.§+z§ = true;
            this.§!"&§.§24§(0);
            if(this.§!"&§.parent == §8!A§.container.mClip)
            {
               §8!A§.container.mClip.removeChild(this.§!"&§);
               §8!A§.container.mClip.addChild(this.§!"&§);
            }
            else
            {
               §8!A§.container.mClip.addChild(this.§!"&§);
            }
            this.§!"&§.§7t§(1,0.25);
            this.§!"&§.addEventListener(ColorFadeLayerEvent.§;Y§,this.onFadeComplete);
         }
      }
      
      protected function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         this.§!"&§.removeEventListener(ColorFadeLayerEvent.§;Y§,this.onFadeComplete);
         §8!^§(§1!u§());
      }
   }
}
