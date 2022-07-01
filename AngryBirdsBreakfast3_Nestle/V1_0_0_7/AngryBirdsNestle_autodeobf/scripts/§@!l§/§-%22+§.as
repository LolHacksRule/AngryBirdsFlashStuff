package §@!l§
{
   import §!!`§.AbstractPopup;
   import §-b§.§"!d§;
   import §-b§.§4`§;
   import §7"1§.§@!9§;
   import §7"1§.ColorFadeLayerEvent;
   import §[^§.§@!U§;
   import flash.display.MovieClip;
   
   public class §-"+§ extends AbstractPopup
   {
       
      
      private const §7f§:Number = 0.25;
      
      private const §"!F§:Number = 0.7;
      
      private const §+!@§:Number = 0.25;
      
      protected var §5!,§:§@!9§ = null;
      
      private var §1!l§:Boolean;
      
      protected var §[D§:§4`§;
      
      protected var §@_§:Boolean;
      
      protected var §!"6§:Boolean;
      
      protected var §>,§:Boolean = false;
      
      protected var §4!J§:§@!U§;
      
      private var §`E§:MovieClip;
      
      public function §-"+§(param1:int, param2:int, param3:XML = null)
      {
         super(param1,param2,param3);
         if(this.§5!,§ == null)
         {
            this.§5!,§ = new §@!9§(0,0,0,0);
         }
      }
      
      override protected function init() : void
      {
         super.init();
         this.§`E§ = §-"1§.mClip;
         if(this.§!"6§)
         {
            this.§`E§.scaleX = 0;
            this.§`E§.scaleY = 0;
         }
      }
      
      override public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:Number = NaN;
         super.setViewSize(param1,param2);
         if(this.§>,§)
         {
            _loc3_ = 0;
            if(AngryBirdsCustom.§%t§ != 0)
            {
               _loc3_ = param1 / AngryBirdsCustom.§]!@§ * 220;
            }
            this.§`E§.x = (param1 - _loc3_) / 2;
            this.§`E§.y = param2 / 2;
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         if(this.§@_§)
         {
            §-"1§.mClip.addChildAt(this.§5!,§,0);
            this.§5!,§.§;!$§(0.7,this.§7f§);
         }
         if(this.§!"6§)
         {
            if(this.§[D§ != null)
            {
               this.§[D§.stop();
            }
            this.§[D§ = §"!d§.§>!P§.§7R§(this.§`E§,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },this.§"!F§,§"!d§.§ !E§);
            this.§[D§.play();
            this.§[D§.updateState();
         }
         else
         {
            this.§`E§.scaleX = 1;
            this.§`E§.scaleY = 1;
         }
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(this.§@_§)
         {
            this.§5!,§.§;!$§(0,this.§7f§);
            this.§5!,§.addEventListener(ColorFadeLayerEvent.§+!t§,this.§&"5§);
            if(this.§!"6§)
            {
               if(this.§[D§ != null)
               {
                  this.§[D§.stop();
               }
               this.§[D§ = §"!d§.§>!P§.§7R§(this.§`E§,{
                  "scaleX":0,
                  "scaleY":0
               },null,this.§+!@§,§"!d§.§ if§);
               this.§[D§.play();
            }
         }
         else
         {
            this.§%!>§();
            super.hide(param1,param2);
         }
      }
      
      private function §%!>§() : void
      {
         if(§-"1§.mClip == this.§5!,§.parent && §-"1§.mClip != null)
         {
            §-"1§.mClip.removeChild(this.§5!,§);
         }
         this.§5!,§.removeEventListener(ColorFadeLayerEvent.§+!t§,this.§&"5§);
      }
      
      protected function §&"5§(param1:ColorFadeLayerEvent) : void
      {
         this.§%!>§();
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
