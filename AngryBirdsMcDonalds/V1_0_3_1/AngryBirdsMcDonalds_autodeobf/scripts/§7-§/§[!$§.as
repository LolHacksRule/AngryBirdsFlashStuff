package §7-§
{
   import § !Y§.§2#§;
   import §&!V§.§=O§;
   import §+F§.§ !J§;
   import §+F§.§<!g§;
   import §+F§.§^!Y§;
   import §,!h§.§9K§;
   import §,!h§.ColorFadeLayerEvent;
   import §3!R§.§0!R§;
   import §3!R§.§81§;
   import §5K§.§1[§;
   import §>!%§.HighscoreSidebar;
   import §?I§.§`E§;
   import §finally§.§8k§;
   import flash.text.TextField;
   
   public class §[!$§ extends §=O§
   {
      
      public static var sHighscoreSidebar:HighscoreSidebar;
       
      
      private var §0D§:Class;
      
      protected var §<!o§:§9K§ = null;
      
      public function §[!$§(param1:Boolean, param2:String)
      {
         this.§0D§ = §%!Y§;
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(sHighscoreSidebar == null)
         {
            sHighscoreSidebar = new HighscoreSidebar();
         }
         this.§!!O§();
         sHighscoreSidebar.§%'§(§1[§.§4L§(this.§0D§),mUIView.container,null,null);
         sHighscoreSidebar.container.x = §2!M§.§[!V§;
         mUIView.container.addComponent(sHighscoreSidebar.container);
         mUIView.getItemByName("MovieClip_SoundOff").mClip.mouseEnabled = false;
         mUIView.getItemByName("MovieClip_SoundOff").setVisibility(!§2!M§.§&y§());
         var _loc1_:Boolean = this.showCreditsButton();
         sHighscoreSidebar.enableCreditsButton(_loc1_);
         sHighscoreSidebar.enableHelpButton(!_loc1_);
         mUIView.getItemByName("Button_Credits").setVisibility(_loc1_);
         mUIView.getItemByName("Button_Tutorial").setVisibility(!_loc1_);
         mUIView.getItemByName("Button_Login").setVisibility(!§2!M§.§&!#§.§-!Z§);
         mUIView.getItemByName("Button_Logout").setVisibility(§2!M§.§&!#§.§-!Z§);
         (mUIView.getItemByName("Button_Logout").mClip.text as TextField).mouseEnabled = false;
         §`E§.§@!7§.updateTextFields(mUIView,"HighscoreSidebar");
         this.setInitialState();
         sHighscoreSidebar.§7i§();
      }
      
      protected function §!!O§() : void
      {
         var _loc1_:§0!R§ = null;
         if(this.§<!o§)
         {
            this.§<!o§.§`r§(1);
            if(this.§<!o§.parent == mUIView.container.mClip)
            {
               mUIView.container.mClip.removeChild(this.§<!o§);
               mUIView.container.mClip.addChild(this.§<!o§);
            }
            else
            {
               mUIView.container.mClip.addChild(this.§<!o§);
            }
            _loc1_ = mUIView.getItemByName("HighScoreSideBar");
            if(_loc1_ != null)
            {
               mUIView.container.setObjectToFront(_loc1_);
            }
            this.§<!o§.§%b§(0,0.2);
            this.§<!o§.addEventListener(ColorFadeLayerEvent.§4v§,this.§0!W§);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         sHighscoreSidebar.run(param1);
         return _loc2_;
      }
      
      protected function setInitialState() : void
      {
      }
      
      protected function showCreditsButton() : Boolean
      {
         return false;
      }
      
      private function §0!W§(param1:ColorFadeLayerEvent) : void
      {
         if(this.§<!o§ && mUIView.container.mClip.contains(this.§<!o§))
         {
            mUIView.container.mClip.removeChild(this.§<!o§);
         }
      }
      
      override public function deActivate() : void
      {
         if(this.§<!o§ && mUIView.container.mClip.contains(this.§<!o§))
         {
            mUIView.container.mClip.removeChild(this.§<!o§);
         }
         if(this.§<!o§)
         {
            this.§<!o§.removeEventListener(ColorFadeLayerEvent.§4v§,this.§0!W§);
         }
         mUIView.container.removeComponent(sHighscoreSidebar.container);
         sHighscoreSidebar.deActivate();
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§81§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         sHighscoreSidebar.uiInteractionHandler(param1,param2,param3);
         if(!sHighscoreSidebar.§3O§ || (param2 == "MUTE" || param2 == "ENGLISH" || param2 == "CHINESE"))
         {
            switch(param2)
            {
               case "MUTE":
                  §2!M§.§0!Y§(!§2!M§.§&y§());
                  mUIView.getItemByName("MovieClip_SoundOff").setVisibility(!§2!M§.§&y§());
                  if(§2!M§.§&y§())
                  {
                     if(§2!M§.§7!F§.§@!,§() == StatePlay.§<@§)
                     {
                        §2#§.§"@§.background.§?!K§();
                     }
                     else if(§2!M§.§7!F§.§@!,§() == §+!c§.§<@§)
                     {
                        §2!M§.§2!-§();
                     }
                  }
                  break;
               case "LOGOUT":
                  § !J§.§%!i§(mUIView);
                  break;
               case "LOGIN":
                  this.loginButtonClicked();
                  break;
               case "CREDITS":
                  §2#§.§2![§();
                  §2#§.§"@§.§0f§(false);
                  §2#§.§"@§.§5$§(false);
                  §"_§.§@!m§ = §+!c§.§<@§;
                  §2!M§.§4@§ = this.mName;
                  §8k§.§;z§(§8k§.§]x§(HighscoreSidebar.§-A§));
                  mNextState = §"_§.§<@§;
                  break;
               case "TUTORIAL":
                  if(!§^!Y§.§,!=§)
                  {
                     §^!Y§.§-`§();
                     §<!g§.§9!J§(mUIView,"ALL",true);
                     §^!Y§.§'!h§(mUIView);
                  }
                  break;
               case "ENGLISH":
                  §`E§.§@!7§.§"Q§("en");
                  this.updateTextFields();
                  sHighscoreSidebar.§7i§();
                  § !J§.updateTextFields();
                  break;
               case "CHINESE":
                  §`E§.§@!7§.§"Q§("zh");
                  this.updateTextFields();
                  sHighscoreSidebar.§7i§();
                  § !J§.updateTextFields();
            }
         }
      }
      
      protected function loginButtonClicked() : void
      {
         §-e§.§8!F§ = true;
         mNextState = §-e§.§<@§;
      }
      
      protected function updateTextFields() : void
      {
         §`E§.§@!7§.updateTextFields(mUIView,"HighscoreSidebar");
      }
   }
}
