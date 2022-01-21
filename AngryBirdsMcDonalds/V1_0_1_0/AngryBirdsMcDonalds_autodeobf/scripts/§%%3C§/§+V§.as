package §%<§
{
   import §'!W§.§>!m§;
   import §'!W§.ColorFadeLayerEvent;
   import §-1§.§%#§;
   import §-1§.§3!%§;
   import §1!D§.§0S§;
   import §2o§.§<H§;
   import §3#§.HighscoreSidebar;
   import §=T§.§0!%§;
   import §=T§.§0O§;
   import §=T§.§=W§;
   import §^5§.§]!,§;
   import §`!W§.§^!e§;
   import §`!d§.§7!§;
   import flash.text.TextField;
   
   public class §+V§ extends §]!,§
   {
      
      public static var sHighscoreSidebar:HighscoreSidebar;
       
      
      private var §6!§:Class;
      
      protected var §=F§:§>!m§ = null;
      
      public function §+V§(param1:Boolean, param2:String)
      {
         this.§6!§ = §@!n§;
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
         this.§"B§();
         sHighscoreSidebar.§>!&§(§^!e§.§=j§(this.§6!§),mUIView.container,null,null);
         sHighscoreSidebar.container.x = §;!4§.§9!L§;
         mUIView.container.addComponent(sHighscoreSidebar.container);
         mUIView.getItemByName("MovieClip_SoundOff").mClip.mouseEnabled = false;
         mUIView.getItemByName("MovieClip_SoundOff").setVisibility(!§;!4§.§=!N§());
         var _loc1_:Boolean = this.showCreditsButton();
         sHighscoreSidebar.enableCreditsButton(_loc1_);
         sHighscoreSidebar.enableHelpButton(!_loc1_);
         mUIView.getItemByName("Button_Credits").setVisibility(_loc1_);
         mUIView.getItemByName("Button_Tutorial").setVisibility(!_loc1_);
         mUIView.getItemByName("Button_Login").setVisibility(!§;!4§.§8'§.§2!^§);
         mUIView.getItemByName("Button_Logout").setVisibility(§;!4§.§8'§.§2!^§);
         (mUIView.getItemByName("Button_Logout").mClip.text as TextField).mouseEnabled = false;
         §0S§.§>E§.updateTextFields(mUIView,"HighscoreSidebar");
         this.setInitialState();
         sHighscoreSidebar.§!!D§();
      }
      
      protected function §"B§() : void
      {
         var _loc1_:§3!%§ = null;
         if(this.§=F§)
         {
            this.§=F§.§,!X§(1);
            if(this.§=F§.parent == mUIView.container.mClip)
            {
               mUIView.container.mClip.removeChild(this.§=F§);
               mUIView.container.mClip.addChild(this.§=F§);
            }
            else
            {
               mUIView.container.mClip.addChild(this.§=F§);
            }
            _loc1_ = mUIView.getItemByName("HighScoreSideBar");
            if(_loc1_ != null)
            {
               mUIView.container.setObjectToFront(_loc1_);
            }
            this.§=F§.§ !!§(0,0.2);
            this.§=F§.addEventListener(ColorFadeLayerEvent.§5G§,this.§0g§);
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
      
      private function §0g§(param1:ColorFadeLayerEvent) : void
      {
         if(this.§=F§ && mUIView.container.mClip.contains(this.§=F§))
         {
            mUIView.container.mClip.removeChild(this.§=F§);
         }
      }
      
      override public function deActivate() : void
      {
         if(this.§=F§ && mUIView.container.mClip.contains(this.§=F§))
         {
            mUIView.container.mClip.removeChild(this.§=F§);
         }
         if(this.§=F§)
         {
            this.§=F§.removeEventListener(ColorFadeLayerEvent.§5G§,this.§0g§);
         }
         mUIView.container.removeComponent(sHighscoreSidebar.container);
         sHighscoreSidebar.deActivate();
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%#§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         sHighscoreSidebar.uiInteractionHandler(param1,param2,param3);
         if(!sHighscoreSidebar.§,&§ || (param2 == "MUTE" || param2 == "ENGLISH" || param2 == "CHINESE"))
         {
            switch(param2)
            {
               case "MUTE":
                  §;!4§.§@i§(!§;!4§.§=!N§());
                  mUIView.getItemByName("MovieClip_SoundOff").setVisibility(!§;!4§.§=!N§());
                  if(§;!4§.§=!N§())
                  {
                     if(§;!4§.§?-§.§>;§() == StatePlay.§<P§)
                     {
                        §<H§.§=3§.background.§<M§();
                     }
                     else if(§;!4§.§?-§.§>;§() == §8!Z§.§<P§)
                     {
                        §;!4§.§#3§();
                     }
                  }
                  break;
               case "LOGOUT":
                  §0!%§.§]$§(mUIView);
                  break;
               case "LOGIN":
                  this.loginButtonClicked();
                  break;
               case "CREDITS":
                  §<H§.§5j§();
                  §<H§.§=3§.§&e§(false);
                  §<H§.§=3§.§]!<§(false);
                  §%!$§.§`1§ = §8!Z§.§<P§;
                  §;!4§.§9!1§ = this.mName;
                  §7!§.§>!R§(§7!§.§?!n§(HighscoreSidebar.§"!L§));
                  mNextState = §%!$§.§<P§;
                  break;
               case "TUTORIAL":
                  if(!§=W§.§,s§)
                  {
                     §=W§.§5!H§();
                     §0O§.§!!;§(mUIView,"ALL",true);
                     §=W§.§'I§(mUIView);
                  }
                  break;
               case "ENGLISH":
                  §0S§.§>E§.§?!7§("en");
                  this.updateTextFields();
                  sHighscoreSidebar.§!!D§();
                  §0!%§.updateTextFields();
                  break;
               case "CHINESE":
                  §0S§.§>E§.§?!7§("zh");
                  this.updateTextFields();
                  sHighscoreSidebar.§!!D§();
                  §0!%§.updateTextFields();
            }
         }
      }
      
      protected function loginButtonClicked() : void
      {
         §=@§.§9!f§ = true;
         mNextState = §=@§.§<P§;
      }
      
      protected function updateTextFields() : void
      {
         §0S§.§>E§.updateTextFields(mUIView,"HighscoreSidebar");
      }
   }
}
