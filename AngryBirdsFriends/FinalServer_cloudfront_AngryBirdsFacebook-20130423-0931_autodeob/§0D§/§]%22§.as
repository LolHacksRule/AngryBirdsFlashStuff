package §0D§
{
   import §,l§.§#!,§;
   import §2"'§.§0W§;
   import §2"'§.§6!K§;
   import §^"F§.§4!2§;
   import flash.display.MovieClip;
   
   public class §]"§
   {
      
      public static const §?!H§:int = 0;
      
      public static const §6n§:int = 1;
      
      public static const §9Z§:int = 2;
      
      public static const §6Z§:int = 3;
      
      public static const §=!L§:int = 4;
      
      public static const §%8§:int = 5;
      
      public static const §1!W§:int = 6;
      
      public static const §="O§:int = 7;
       
      
      private const §2l§:int = 5000;
      
      protected var §9a§:int = 0;
      
      private var mClip:MovieClip;
      
      private var §5";§:§6!K§;
      
      public var mCurrentPosition:Number = 0;
      
      private var §"!r§:Number = 5000;
      
      private var §@!e§:Number = 0;
      
      private var §%"@§:MovieClip;
      
      protected var §2!G§:Boolean = true;
      
      public function §]"§()
      {
         super();
      }
      
      public function activate(param1:MovieClip, param2:Boolean = false) : void
      {
         this.mClip = param1;
         if(param2)
         {
            this.§9a§ = §?!H§;
         }
         this.init();
      }
      
      public function §;!0§() : void
      {
         if(this.§9a§ == §1!W§)
         {
            this.mClip.Movieclip_Slider.visible = true;
            (this.mClip.Movieclip_Slider.Movieclip_SliderBackground as MovieClip).alpha = 1;
         }
         if(this.§9a§ == §?!H§ || this.§9a§ == §1!W§)
         {
            this.§^h§();
         }
         else if(this.§9a§ == §6Z§)
         {
            this.§9a§ = §6n§;
            this.§5";§ = §0W§.§&"5§.§]!r§(this,{"mCurrentPosition":0},{"mCurrentPosition":this.mCurrentPosition},1,§0W§.§]!t§);
            this.§5";§.onComplete = this.§^h§;
            this.§5";§.play();
         }
      }
      
      public function §=!9§() : void
      {
         if(this.§9a§ == §1!W§)
         {
            this.mClip.Movieclip_Slider.visible = true;
            (this.mClip.Movieclip_Slider.Movieclip_SliderBackground as MovieClip).alpha = 1;
         }
         if(this.§9a§ == §?!H§ || this.§9a§ == §1!W§)
         {
            this.mClip.Movieclip_Slider.visible = true;
            this.§,B§();
         }
         else if(this.§9a§ == §6n§)
         {
            this.§9a§ = §6Z§;
            this.§5";§ = §0W§.§&"5§.§]!r§(this,{"mCurrentPosition":0},{"mCurrentPosition":this.mCurrentPosition},1,§0W§.§]!t§);
            this.§5";§.onComplete = this.§,B§;
            this.§5";§.play();
         }
      }
      
      public function §"z§(param1:Boolean = false) : void
      {
         if(this.§9a§ == §%8§ || this.§9a§ == §="O§)
         {
            return;
         }
         if(param1)
         {
            this.§5";§ = §0W§.§&"5§.§]!r§(this,{"mCurrentPosition":0},{"mCurrentPosition":this.mCurrentPosition},0.3,§0W§.§]!t§);
            (this.mClip.Movieclip_Slider.Movieclip_SliderBackground as MovieClip).alpha = 0.6;
            this.§9a§ = §="O§;
            this.§5";§.onComplete = this.§""V§;
         }
         else
         {
            this.§5";§ = §0W§.§&"5§.§]!r§(this,{"mCurrentPosition":0},{"mCurrentPosition":this.mCurrentPosition},1,§0W§.§]!t§);
            this.§9a§ = §%8§;
            this.§5";§.onComplete = this.§+"S§;
         }
         this.§5";§.play();
      }
      
      private function §+"S§() : void
      {
         this.§9a§ = §?!H§;
      }
      
      private function §""V§() : void
      {
         this.§9a§ = §1!W§;
         this.mClip.Movieclip_Slider.visible = false;
      }
      
      private function §^h§() : void
      {
         var _loc2_:String = null;
         this.§"!r§ = this.§2l§;
         this.mClip.Movieclip_Slider.Movieclip_SliderBackground.gotoAndStop("REMINDER");
         var _loc1_:Number = §#!,§.§&"5§.§1!r§(§4!2§.§-Y§.§1!#§);
         if(isNaN(_loc1_) || _loc1_ <= 0)
         {
            this.mClip.Movieclip_Slider.Movieclip_SliderBackground.Limited_Timer.gotoAndStop("NORMAL");
         }
         else
         {
            _loc2_ = §3!R§.§"A§(Math.round(_loc1_ / 1000));
            this.mClip.Movieclip_Slider.Movieclip_SliderBackground.Limited_Timer.gotoAndStop("SUBSCRIPTION");
            this.mClip.Movieclip_Slider.Movieclip_SliderBackground.Limited_Timer.timer.text = _loc2_;
         }
         this.§9a§ = §6n§;
         this.§<,§(this.§;c§);
      }
      
      private function §,B§() : void
      {
         this.mClip.Movieclip_Slider.Movieclip_SliderBackground.gotoAndStop("COUNTDOWN");
         this.§9a§ = §6Z§;
         this.§<,§(this.§-!b§);
      }
      
      private function §<,§(param1:Function) : void
      {
         this.§5";§ = §0W§.§&"5§.§]!r§(this,{"mCurrentPosition":1},{"mCurrentPosition":this.mCurrentPosition},1,§0W§.§4!E§);
         this.§5";§.onComplete = param1;
         this.§5";§.play();
      }
      
      private function §;c§() : void
      {
         this.§9a§ = §9Z§;
      }
      
      private function §-!b§() : void
      {
         this.§9a§ = §=!L§;
      }
      
      private function init() : void
      {
         this.mClip.Movieclip_Slider.visibility = true;
         this.mClip.Movieclip_Slider.Movieclip_SliderBackground.visibility = true;
         this.mClip.Movieclip_Slider.Movieclip_SliderBackground.gotoAndStop("REMINDER");
         (this.mClip.Movieclip_Slider.Movieclip_SliderBackground as MovieClip).alpha = 1;
         this.§%"@§ = this.mClip.Movieclip_Slider.Movieclip_SliderBackground;
         this.§@!e§ = -this.§%"@§.width;
         this.§%"@§.x = this.§@!e§;
         if(!this.§2!G§)
         {
            if(this.§9a§ == §=!L§ || this.§9a§ == §6Z§)
            {
               this.§9a§ = §=!L§;
               this.mCurrentPosition = 1;
               this.mClip.Movieclip_Slider.Movieclip_SliderBackground.gotoAndStop("COUNTDOWN");
            }
            else if(this.§9a§ == §9Z§ || this.§9a§ == §6n§)
            {
               this.§9a§ = §9Z§;
               this.mCurrentPosition = 1;
               this.mClip.Movieclip_Slider.Movieclip_SliderBackground.gotoAndStop("REMINDER");
            }
         }
         this.§2!G§ = false;
      }
      
      public function §6!g§() : void
      {
      }
      
      public function §7" §() : void
      {
         if(this.§5";§)
         {
            this.§5";§.play();
         }
      }
      
      public function update(param1:Number) : void
      {
         this.§%"@§.x = this.§@!e§ + Math.abs(this.§@!e§) * this.mCurrentPosition;
         if(this.§9a§ == §9Z§)
         {
            this.§"!r§ -= param1;
            if(this.§"!r§ <= 0)
            {
               this.§"z§();
            }
         }
      }
      
      public function §?,§(param1:String) : void
      {
         if(this.§9a§ == §=!L§ || this.§9a§ == §6Z§)
         {
            this.mClip.Movieclip_Slider.Movieclip_SliderBackground.text.text = param1;
         }
      }
      
      public function §#5§() : void
      {
         this.§"z§(true);
      }
      
      public function deActivate() : void
      {
         if(this.§9a§ == §="O§)
         {
            this.§%"@§.x = this.§@!e§;
            this.mCurrentPosition = 0;
            this.§9a§ = §1!W§;
            this.mClip.Movieclip_Slider.visible = false;
         }
         else if(this.§9a§ == §%8§)
         {
            this.§%"@§.x = this.§@!e§;
            this.mCurrentPosition = 0;
            this.§9a§ = §?!H§;
         }
      }
      
      public function get state() : int
      {
         return this.§9a§;
      }
      
      public function set state(param1:int) : void
      {
         this.§9a§ = param1;
      }
   }
}
