package §?I§
{
   import § S§.AbstractPopup;
   import §!"+§.§[!Q§;
   import §53§.§6!u§;
   import §53§.§["$§;
   import §=b§.§5!p§;
   import §=b§.ColorFadeLayerEvent;
   import flash.display.MovieClip;
   
   public class §1>§ extends AbstractPopup
   {
       
      
      private const §#_§:Number = 0.25;
      
      private const §2r§:Number = 0.7;
      
      private const §[8§:Number = 0.25;
      
      protected var § Y§:§5!p§ = null;
      
      private var §<!1§:Boolean;
      
      protected var §#!!§:§["$§;
      
      protected var §2!b§:Boolean;
      
      protected var §@n§:Boolean;
      
      protected var §!d§:Boolean = false;
      
      protected var §<"3§:§[!Q§;
      
      private var §0Z§:MovieClip;
      
      public function §1>§(param1:int, param2:int, param3:XML = null)
      {
         super(param1,param2,param3);
         if(this.§ Y§ == null)
         {
            this.§ Y§ = new §5!p§(0,0,0,0);
         }
      }
      
      override protected function init() : void
      {
         super.init();
         this.§0Z§ = §@!U§.mClip;
         if(this.§@n§)
         {
            this.§0Z§.scaleX = 0;
            this.§0Z§.scaleY = 0;
         }
      }
      
      override public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:Number = NaN;
         super.setViewSize(param1,param2);
         if(this.§!d§)
         {
            _loc3_ = 0;
            if(AngryBirdsCustom.§[M§ != 0)
            {
               _loc3_ = param1 / AngryBirdsCustom.§<v§ * 220;
            }
            this.§0Z§.x = (param1 - _loc3_) / 2;
            this.§0Z§.y = param2 / 2;
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         if(this.§2!b§)
         {
            §@!U§.mClip.addChildAt(this.§ Y§,0);
            this.§ Y§.§<!9§(0.7,this.§#_§);
         }
         if(this.§@n§)
         {
            if(this.§#!!§ != null)
            {
               this.§#!!§.stop();
            }
            this.§#!!§ = §6!u§.§"e§.§0!O§(this.§0Z§,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },this.§2r§,§6!u§.§1!6§);
            this.§#!!§.play();
            this.§#!!§.updateState();
         }
         else
         {
            this.§0Z§.scaleX = 1;
            this.§0Z§.scaleY = 1;
         }
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(this.§2!b§)
         {
            this.§ Y§.§<!9§(0,this.§#_§);
            this.§ Y§.addEventListener(ColorFadeLayerEvent.§4!U§,this.§]r§);
            if(this.§@n§)
            {
               if(this.§#!!§ != null)
               {
                  this.§#!!§.stop();
               }
               this.§#!!§ = §6!u§.§"e§.§0!O§(this.§0Z§,{
                  "scaleX":0,
                  "scaleY":0
               },null,this.§[8§,§6!u§.§]!V§);
               this.§#!!§.play();
            }
         }
         else
         {
            this.§'"5§();
            super.hide(param1,param2);
         }
      }
      
      private function §'"5§() : void
      {
         if(§@!U§.mClip == this.§ Y§.parent && §@!U§.mClip != null)
         {
            §@!U§.mClip.removeChild(this.§ Y§);
         }
         this.§ Y§.removeEventListener(ColorFadeLayerEvent.§4!U§,this.§]r§);
      }
      
      protected function §]r§(param1:ColorFadeLayerEvent) : void
      {
         this.§'"5§();
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
