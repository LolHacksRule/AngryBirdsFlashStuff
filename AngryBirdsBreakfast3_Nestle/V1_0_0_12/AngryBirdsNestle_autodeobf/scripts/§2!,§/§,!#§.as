package §2!,§
{
   import §+T§.§1!7§;
   import §+T§.ColorFadeLayerEvent;
   import §1!s§.AbstractPopup;
   import §2!s§.§9#§;
   import §@!0§.§%"!§;
   import §@!0§.§^!T§;
   import flash.display.MovieClip;
   
   public class §,!#§ extends AbstractPopup
   {
       
      
      private const §;!4§:Number = 0.25;
      
      private const §=$§:Number = 0.7;
      
      private const §]A§:Number = 0.25;
      
      protected var §4!?§:§1!7§ = null;
      
      private var §"!!§:Boolean;
      
      protected var §3!#§:§^!T§;
      
      protected var §&5§:Boolean;
      
      protected var §2L§:Boolean;
      
      protected var §[!k§:Boolean = false;
      
      protected var §4!R§:§9#§;
      
      private var §#_§:MovieClip;
      
      public function §,!#§(param1:int, param2:int, param3:XML = null)
      {
         super(param1,param2,param3);
         if(this.§4!?§ == null)
         {
            this.§4!?§ = new §1!7§(0,0,0,0);
         }
      }
      
      override protected function init() : void
      {
         super.init();
         this.§#_§ = §;"#§.mClip;
         if(this.§2L§)
         {
            this.§#_§.scaleX = 0;
            this.§#_§.scaleY = 0;
         }
      }
      
      override public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:Number = NaN;
         super.setViewSize(param1,param2);
         if(this.§[!k§)
         {
            _loc3_ = 0;
            if(AngryBirdsCustom.§1!v§ != 0)
            {
               _loc3_ = param1 / AngryBirdsCustom.§6#§ * 220;
            }
            this.§#_§.x = (param1 - _loc3_) / 2;
            this.§#_§.y = param2 / 2;
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         if(this.§&5§)
         {
            §;"#§.mClip.addChildAt(this.§4!?§,0);
            this.§4!?§.§2u§(0.7,this.§;!4§);
         }
         if(this.§2L§)
         {
            if(this.§3!#§ != null)
            {
               this.§3!#§.stop();
            }
            this.§3!#§ = §%"!§.§&!;§.§"!]§(this.§#_§,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },this.§=$§,§%"!§.§?!7§);
            this.§3!#§.play();
            this.§3!#§.updateState();
         }
         else
         {
            this.§#_§.scaleX = 1;
            this.§#_§.scaleY = 1;
         }
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(this.§&5§)
         {
            this.§4!?§.§2u§(0,this.§;!4§);
            this.§4!?§.addEventListener(ColorFadeLayerEvent.§7! §,this.§[!I§);
            if(this.§2L§)
            {
               if(this.§3!#§ != null)
               {
                  this.§3!#§.stop();
               }
               this.§3!#§ = §%"!§.§&!;§.§"!]§(this.§#_§,{
                  "scaleX":0,
                  "scaleY":0
               },null,this.§]A§,§%"!§.§=!J§);
               this.§3!#§.play();
            }
         }
         else
         {
            this.§'+§();
            super.hide(param1,param2);
         }
      }
      
      private function §'+§() : void
      {
         if(§;"#§.mClip == this.§4!?§.parent && §;"#§.mClip != null)
         {
            §;"#§.mClip.removeChild(this.§4!?§);
         }
         this.§4!?§.removeEventListener(ColorFadeLayerEvent.§7! §,this.§[!I§);
      }
      
      protected function §[!I§(param1:ColorFadeLayerEvent) : void
      {
         this.§'+§();
         super.hide();
      }
      
      public function updateTextFields() : void
      {
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         this.updateTextFields();
      }
   }
}
