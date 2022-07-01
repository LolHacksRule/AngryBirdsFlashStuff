package §&_§
{
   import §%z§.§6"$§;
   import §+!5§.§2O§;
   import §+!5§.ColorFadeLayerEvent;
   import §5u§.AbstractPopup;
   import §6t§.§3`§;
   import §6t§.§<!'§;
   import flash.display.MovieClip;
   
   public class §-"!§ extends AbstractPopup
   {
       
      
      private const §!!+§:Number = 0.25;
      
      private const §<c§:Number = 0.7;
      
      private const §0!E§:Number = 0.25;
      
      protected var §0!M§:§2O§ = null;
      
      private var §[""§:Boolean;
      
      protected var §<x§:§<!'§;
      
      protected var §^c§:Boolean;
      
      protected var §'[§:Boolean;
      
      protected var §null§:Boolean = false;
      
      protected var §'K§:§6"$§;
      
      private var §<!K§:MovieClip;
      
      public function §-"!§(param1:int, param2:int, param3:XML = null)
      {
         super(param1,param2,param3);
         if(this.§0!M§ == null)
         {
            this.§0!M§ = new §2O§(0,0,0,0);
         }
      }
      
      override protected function init() : void
      {
         super.init();
         this.§<!K§ = §[!<§.mClip;
         if(this.§'[§)
         {
            this.§<!K§.scaleX = 0;
            this.§<!K§.scaleY = 0;
         }
      }
      
      override public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:Number = NaN;
         super.setViewSize(param1,param2);
         if(this.§null§)
         {
            _loc3_ = 0;
            if(AngryBirdsCustom.§ !9§ != 0)
            {
               _loc3_ = param1 / AngryBirdsCustom.§"4§ * 220;
            }
            this.§<!K§.x = (param1 - _loc3_) / 2;
            this.§<!K§.y = param2 / 2;
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         if(this.§^c§)
         {
            §[!<§.mClip.addChildAt(this.§0!M§,0);
            this.§0!M§.§5!F§(0.7,this.§!!+§);
         }
         if(this.§'[§)
         {
            if(this.§<x§ != null)
            {
               this.§<x§.stop();
            }
            this.§<x§ = §3`§.§<"5§.§^g§(this.§<!K§,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },this.§<c§,§3`§.§8!"§);
            this.§<x§.play();
            this.§<x§.updateState();
         }
         else
         {
            this.§<!K§.scaleX = 1;
            this.§<!K§.scaleY = 1;
         }
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(this.§^c§)
         {
            this.§0!M§.§5!F§(0,this.§!!+§);
            this.§0!M§.addEventListener(ColorFadeLayerEvent.§@!?§,this.§#![§);
            if(this.§'[§)
            {
               if(this.§<x§ != null)
               {
                  this.§<x§.stop();
               }
               this.§<x§ = §3`§.§<"5§.§^g§(this.§<!K§,{
                  "scaleX":0,
                  "scaleY":0
               },null,this.§0!E§,§3`§.§+a§);
               this.§<x§.play();
            }
         }
         else
         {
            this.§2!@§();
            super.hide(param1,param2);
         }
      }
      
      private function §2!@§() : void
      {
         if(§[!<§.mClip == this.§0!M§.parent && §[!<§.mClip != null)
         {
            §[!<§.mClip.removeChild(this.§0!M§);
         }
         this.§0!M§.removeEventListener(ColorFadeLayerEvent.§@!?§,this.§#![§);
      }
      
      protected function §#![§(param1:ColorFadeLayerEvent) : void
      {
         this.§2!@§();
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
