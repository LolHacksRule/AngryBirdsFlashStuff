package §4%§
{
   import §"%§.§+!&§;
   import §"%§.§,!n§;
   import §+-§.§3!5§;
   import §6!Q§.§ !"§;
   import §9!W§.§=!@§;
   import §;!j§.§[!<§;
   import §=<§.§ !Y§;
   import §]! §.HighscoreSidebar;
   import §]!S§.§59§;
   import §]!S§.ColorFadeLayerEvent;
   import §^!V§.§%K§;
   import §^!V§.§^!h§;
   import §^!V§.§^!j§;
   import flash.text.TextField;
   
   public class §%0§ extends § !"§
   {
      
      public static var sHighscoreSidebar:HighscoreSidebar;
       
      
      private var §&!l§:Class;
      
      protected var §%L§:§59§ = null;
      
      public function §%0§(param1:Boolean, param2:String)
      {
         this.§&!l§ = §^!,§;
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
         this.§!!S§();
         sHighscoreSidebar.§`!n§(§ !Y§.§^t§(this.§&!l§),mUIView.container,null,null);
         sHighscoreSidebar.container.x = §'j§.§7&§;
         mUIView.container.addComponent(sHighscoreSidebar.container);
         mUIView.getItemByName("MovieClip_SoundOff").mClip.mouseEnabled = false;
         mUIView.getItemByName("MovieClip_SoundOff").setVisibility(!§'j§.§62§());
         var _loc1_:Boolean = this.showCreditsButton();
         sHighscoreSidebar.enableCreditsButton(_loc1_);
         sHighscoreSidebar.enableHelpButton(!_loc1_);
         mUIView.getItemByName("Button_Credits").setVisibility(_loc1_);
         mUIView.getItemByName("Button_Tutorial").setVisibility(!_loc1_);
         mUIView.getItemByName("Button_Login").setVisibility(!§'j§.§%g§.§"!W§);
         mUIView.getItemByName("Button_Logout").setVisibility(§'j§.§%g§.§"!W§);
         (mUIView.getItemByName("Button_Logout").mClip.text as TextField).mouseEnabled = false;
         §[!<§.§'!S§.updateTextFields(mUIView,"HighscoreSidebar");
         this.setInitialState();
         sHighscoreSidebar.§?!9§();
      }
      
      protected function §!!S§() : void
      {
         var _loc1_:§+!&§ = null;
         if(this.§%L§)
         {
            this.§%L§.§&S§(1);
            if(this.§%L§.parent == mUIView.container.mClip)
            {
               mUIView.container.mClip.removeChild(this.§%L§);
               mUIView.container.mClip.addChild(this.§%L§);
            }
            else
            {
               mUIView.container.mClip.addChild(this.§%L§);
            }
            _loc1_ = mUIView.getItemByName("HighScoreSideBar");
            if(_loc1_ != null)
            {
               mUIView.container.setObjectToFront(_loc1_);
            }
            this.§%L§.§1!M§(0,0.2);
            this.§%L§.addEventListener(ColorFadeLayerEvent.§9!3§,this.§+!-§);
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
      
      private function §+!-§(param1:ColorFadeLayerEvent) : void
      {
         if(this.§%L§ && mUIView.container.mClip.contains(this.§%L§))
         {
            mUIView.container.mClip.removeChild(this.§%L§);
         }
      }
      
      override public function deActivate() : void
      {
         if(this.§%L§ && mUIView.container.mClip.contains(this.§%L§))
         {
            mUIView.container.mClip.removeChild(this.§%L§);
         }
         if(this.§%L§)
         {
            this.§%L§.removeEventListener(ColorFadeLayerEvent.§9!3§,this.§+!-§);
         }
         mUIView.container.removeComponent(sHighscoreSidebar.container);
         sHighscoreSidebar.deActivate();
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!n§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         sHighscoreSidebar.uiInteractionHandler(param1,param2,param3);
         if(!sHighscoreSidebar.§;+§ || (param2 == "MUTE" || param2 == "ENGLISH" || param2 == "CHINESE"))
         {
            switch(param2)
            {
               case "MUTE":
                  §'j§.§"!e§(!§'j§.§62§());
                  mUIView.getItemByName("MovieClip_SoundOff").setVisibility(!§'j§.§62§());
                  if(§'j§.§62§())
                  {
                     if(§'j§.§7!$§.§6T§() == StatePlay.§4D§)
                     {
                        §=!@§.§>!T§.background.§?&§();
                     }
                     else if(§'j§.§7!$§.§6T§() == §^!O§.§4D§)
                     {
                        §'j§.§^!>§();
                     }
                  }
                  break;
               case "LOGOUT":
                  §^!j§.§9S§(mUIView);
                  break;
               case "LOGIN":
                  this.loginButtonClicked();
                  break;
               case "CREDITS":
                  §=!@§.§%!&§();
                  §=!@§.§>!T§.§>h§(false);
                  §=!@§.§>!T§.§8!2§(false);
                  §,b§.§<A§ = §^!O§.§4D§;
                  §'j§.§4h§ = this.mName;
                  §3!5§.§[C§(§3!5§.§&!2§(HighscoreSidebar.§!!b§));
                  mNextState = §,b§.§4D§;
                  break;
               case "TUTORIAL":
                  if(!§^!h§.§=!R§)
                  {
                     §^!h§.§+O§();
                     §%K§.§1!J§(mUIView,"ALL",true);
                     §^!h§.§=D§(mUIView);
                  }
                  break;
               case "ENGLISH":
                  §[!<§.§'!S§.§7!m§("en");
                  this.updateTextFields();
                  sHighscoreSidebar.§?!9§();
                  §^!j§.updateTextFields();
                  break;
               case "CHINESE":
                  §[!<§.§'!S§.§7!m§("zh");
                  this.updateTextFields();
                  sHighscoreSidebar.§?!9§();
                  §^!j§.updateTextFields();
            }
         }
      }
      
      protected function loginButtonClicked() : void
      {
         §9!Z§.§7M§ = true;
         mNextState = §9!Z§.§4D§;
      }
      
      protected function updateTextFields() : void
      {
         §[!<§.§'!S§.updateTextFields(mUIView,"HighscoreSidebar");
      }
   }
}
