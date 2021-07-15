package §[!i§
{
   import §&v§.§%!I§;
   import §48§.AbstractPopup;
   import §<!F§.§,!e§;
   import §<!F§.ColorFadeLayerEvent;
   import §?@§.§'^§;
   import §?@§.§0]§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class §@"§ extends AbstractPopup
   {
       
      
      private const §+^§:Number = 0.25;
      
      private const §7!5§:Number = 0.7;
      
      private const §6E§:Number = 0.25;
      
      protected var §7!k§:§,!e§ = null;
      
      private var §"X§:Boolean;
      
      protected var §#f§:§0]§;
      
      private var §%!S§:Boolean = false;
      
      protected var §-!w§:Boolean;
      
      protected var §@!X§:Boolean;
      
      protected var §0!T§:Boolean = false;
      
      protected var §@!H§:§%!I§;
      
      protected var §#u§:MovieClip;
      
      public function §@"§(param1:int, param2:int, param3:XML = null)
      {
         super(param1,param2,param3);
         if(this.§7!k§ == null)
         {
            this.§7!k§ = new §,!e§(0,0,0,0);
         }
      }
      
      protected function onKeyDown(param1:KeyboardEvent) : void
      {
         switch(param1.keyCode)
         {
            case Keyboard.S:
               this.updateMuteButtonState();
               break;
            case Keyboard.ESCAPE:
               if(!(§6!!§.singleton as §4!=§).§&!N§())
               {
                  this.closePressed();
               }
         }
      }
      
      protected function updateMuteButtonState() : void
      {
      }
      
      protected function closePressed() : void
      {
      }
      
      override protected function init() : void
      {
         super.init();
         this.§#u§ = §@'§.mClip;
         if(this.§@!X§)
         {
            this.§#u§.scaleX = 0;
            this.§#u§.scaleY = 0;
         }
         §6!c§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown,false,1);
      }
      
      override public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:Number = NaN;
         if(param1 == 0)
         {
            return;
         }
         this.§#u§.scaleX = 1;
         this.§#u§.scaleY = 1;
         super.setViewSize(param1,param2);
         if(this.§0!T§)
         {
            _loc3_ = 0;
            if(§4!=§.§`!5§ != 0)
            {
               _loc3_ = param1 / §4!=§.§`!E§ * 220;
            }
            this.§#u§.x = (param1 - _loc3_) / 2;
            this.§#u§.y = param2 / 2;
         }
         if(this.§%!S§)
         {
            if(this.§#f§)
            {
               this.§#f§.stop();
            }
            this.§#f§ = §'^§.§2Z§.§!!f§(this.§#u§,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },this.§7!5§,§'^§.§-!T§);
            this.§#f§.play();
            this.§%!S§ = false;
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         if(this.§-!w§)
         {
            §@'§.mClip.addChildAt(this.§7!k§,0);
            this.§7!k§.§=v§(0.7,this.§+^§);
         }
         if(this.§@!X§)
         {
            this.§%!S§ = true;
         }
         else
         {
            this.§#u§.scaleX = 1;
            this.§#u§.scaleY = 1;
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(this.§-!w§)
         {
            this.§7!k§.§=v§(0,this.§+^§);
            this.§7!k§.addEventListener(ColorFadeLayerEvent.§9e§,this.§ do§);
            if(this.§@!X§)
            {
               if(this.§#f§ != null)
               {
                  this.§#f§.stop();
               }
               this.§#f§ = §'^§.§2Z§.§!!f§(this.§#u§,{
                  "scaleX":0,
                  "scaleY":0
               },null,this.§6E§,§'^§.§'!I§);
               this.§#f§.play();
            }
         }
         else
         {
            this.§<!9§();
            super.hide(param1,param2);
         }
         §6!c§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
      }
      
      private function §<!9§() : void
      {
         if(§@'§.mClip == this.§7!k§.parent && §@'§.mClip != null)
         {
            §@'§.mClip.removeChild(this.§7!k§);
         }
         this.§7!k§.removeEventListener(ColorFadeLayerEvent.§9e§,this.§ do§);
      }
      
      protected function § do§(param1:ColorFadeLayerEvent) : void
      {
         this.§<!9§();
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
