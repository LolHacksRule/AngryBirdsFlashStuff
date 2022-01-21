package §[l§
{
   import § e§.§&!&§;
   import §#M§.§+!Z§;
   import §'d§.§8!]§;
   import §'d§.ColorFadeLayerEvent;
   import §5!5§.§1!b§;
   import §6@§.§'!F§;
   import §6@§.§[! §;
   import §7_§.§^d§;
   import §8<§.§with§;
   import §<!R§.HighscoreSidebar;
   import §]q§.§+$§;
   import §]q§.§6l§;
   import §]q§.§<;§;
   import flash.text.TextField;
   
   public class §,Q§ extends §1!b§
   {
      
      public static var sHighscoreSidebar:HighscoreSidebar;
       
      
      private var §^!D§:Class;
      
      protected var §6K§:§8!]§ = null;
      
      public function §,Q§(param1:Boolean, param2:String)
      {
         this.§^!D§ = § T§;
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
         this.§#!F§();
         sHighscoreSidebar.§switch§(§with§.§ !0§(this.§^!D§),mUIView.container,null,null);
         sHighscoreSidebar.container.x = § 4§.§#!<§;
         mUIView.container.addComponent(sHighscoreSidebar.container);
         mUIView.getItemByName("MovieClip_SoundOff").mClip.mouseEnabled = false;
         mUIView.getItemByName("MovieClip_SoundOff").setVisibility(!§ 4§.§<!V§());
         var _loc1_:Boolean = this.showCreditsButton();
         sHighscoreSidebar.enableCreditsButton(_loc1_);
         sHighscoreSidebar.enableHelpButton(!_loc1_);
         mUIView.getItemByName("Button_Credits").setVisibility(_loc1_);
         mUIView.getItemByName("Button_Tutorial").setVisibility(!_loc1_);
         mUIView.getItemByName("Button_Login").setVisibility(!§ 4§.§?H§.§4!A§);
         mUIView.getItemByName("Button_Logout").setVisibility(§ 4§.§?H§.§4!A§);
         (mUIView.getItemByName("Button_Logout").mClip.text as TextField).mouseEnabled = false;
         §&!&§.§+j§.updateTextFields(mUIView,"HighscoreSidebar");
         this.setInitialState();
         sHighscoreSidebar.§2d§();
      }
      
      protected function §#!F§() : void
      {
         var _loc1_:§'!F§ = null;
         if(this.§6K§)
         {
            this.§6K§.§9!S§(1);
            if(this.§6K§.parent == mUIView.container.mClip)
            {
               mUIView.container.mClip.removeChild(this.§6K§);
               mUIView.container.mClip.addChild(this.§6K§);
            }
            else
            {
               mUIView.container.mClip.addChild(this.§6K§);
            }
            _loc1_ = mUIView.getItemByName("HighScoreSideBar");
            if(_loc1_ != null)
            {
               mUIView.container.setObjectToFront(_loc1_);
            }
            this.§6K§.§-p§(0,0.2);
            this.§6K§.addEventListener(ColorFadeLayerEvent.§3C§,this.§=!#§);
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
      
      private function §=!#§(param1:ColorFadeLayerEvent) : void
      {
         if(this.§6K§ && mUIView.container.mClip.contains(this.§6K§))
         {
            mUIView.container.mClip.removeChild(this.§6K§);
         }
      }
      
      override public function deActivate() : void
      {
         if(this.§6K§ && mUIView.container.mClip.contains(this.§6K§))
         {
            mUIView.container.mClip.removeChild(this.§6K§);
         }
         if(this.§6K§)
         {
            this.§6K§.removeEventListener(ColorFadeLayerEvent.§3C§,this.§=!#§);
         }
         mUIView.container.removeComponent(sHighscoreSidebar.container);
         sHighscoreSidebar.deActivate();
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§[! §) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         sHighscoreSidebar.uiInteractionHandler(param1,param2,param3);
         if(!sHighscoreSidebar.§=!3§ || (param2 == "MUTE" || param2 == "ENGLISH" || param2 == "CHINESE"))
         {
            switch(param2)
            {
               case "MUTE":
                  § 4§.§@s§(!§ 4§.§<!V§());
                  mUIView.getItemByName("MovieClip_SoundOff").setVisibility(!§ 4§.§<!V§());
                  if(§ 4§.§<!V§())
                  {
                     if(§ 4§.§6q§.§<!i§() == StatePlay.§!_§)
                     {
                        §+!Z§.§?!<§.background.§6!_§();
                     }
                     else if(§ 4§.§6q§.§<!i§() == §+l§.§!_§)
                     {
                        § 4§.§8!4§();
                     }
                  }
                  break;
               case "LOGOUT":
                  §6l§.§ !%§(mUIView);
                  break;
               case "LOGIN":
                  this.loginButtonClicked();
                  break;
               case "CREDITS":
                  §+!Z§.§2!§();
                  §+!Z§.§?!<§.§,!7§(false);
                  §+!Z§.§?!<§.§#!Z§(false);
                  §26§.§`!,§ = §+l§.§!_§;
                  § 4§.§#!m§ = this.mName;
                  §^d§.§^N§(§^d§.§?;§(HighscoreSidebar.§-F§));
                  mNextState = §26§.§!_§;
                  break;
               case "TUTORIAL":
                  if(!§+$§.§+!l§)
                  {
                     §+$§.§<!G§();
                     §<;§.§7!m§(mUIView,"ALL",true);
                     §+$§.§9Q§(mUIView);
                  }
                  break;
               case "ENGLISH":
                  §&!&§.§+j§.§3!,§("en");
                  this.updateTextFields();
                  sHighscoreSidebar.§2d§();
                  §6l§.updateTextFields();
                  break;
               case "CHINESE":
                  §&!&§.§+j§.§3!,§("zh");
                  this.updateTextFields();
                  sHighscoreSidebar.§2d§();
                  §6l§.updateTextFields();
            }
         }
      }
      
      protected function loginButtonClicked() : void
      {
         § A§.§ P§ = true;
         mNextState = § A§.§!_§;
      }
      
      protected function updateTextFields() : void
      {
         §&!&§.§+j§.updateTextFields(mUIView,"HighscoreSidebar");
      }
   }
}
