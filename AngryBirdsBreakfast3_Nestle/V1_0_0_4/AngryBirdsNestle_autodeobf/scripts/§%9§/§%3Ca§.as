package §%9§
{
   import §5!7§.§6n§;
   import §><§.§0!M§;
   import §><§.§4!N§;
   import §?N§.AbstractPopup;
   import §`!_§.ColorFadeLayerEvent;
   import §`!_§.§[!q§;
   import flash.display.MovieClip;
   
   public class §<a§ extends AbstractPopup
   {
       
      
      private const §"!1§:Number = 0.25;
      
      private const §4y§:Number = 0.7;
      
      private const § T§:Number = 0.25;
      
      protected var §[""§:§[!q§ = null;
      
      private var §+!'§:Boolean;
      
      protected var §^" §:§4!N§;
      
      protected var §?!^§:Boolean;
      
      protected var §+!X§:Boolean;
      
      protected var §8!^§:Boolean = false;
      
      protected var §with§:§6n§;
      
      private var §0§:MovieClip;
      
      public function §<a§(param1:int, param2:int, param3:XML = null)
      {
         super(param1,param2,param3);
         if(this.§[""§ == null)
         {
            this.§[""§ = new §[!q§(0,0,0,0);
         }
      }
      
      override protected function init() : void
      {
         super.init();
         this.§0§ = §0+§.mClip;
         if(this.§+!X§)
         {
            this.§0§.scaleX = 0;
            this.§0§.scaleY = 0;
         }
      }
      
      override public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:Number = NaN;
         super.setViewSize(param1,param2);
         if(this.§8!^§)
         {
            _loc3_ = 0;
            if(AngryBirdsCustom.§#c§ != 0)
            {
               _loc3_ = param1 / AngryBirdsCustom.§`!p§ * 220;
            }
            this.§0§.x = (param1 - _loc3_) / 2;
            this.§0§.y = param2 / 2;
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         if(this.§?!^§)
         {
            §0+§.mClip.addChildAt(this.§[""§,0);
            this.§[""§.§,>§(0.7,this.§"!1§);
         }
         if(this.§+!X§)
         {
            if(this.§^" § != null)
            {
               this.§^" §.stop();
            }
            this.§^" § = §0!M§.§?!+§.§3d§(this.§0§,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },this.§4y§,§0!M§.§"!&§);
            this.§^" §.play();
            this.§^" §.updateState();
         }
         else
         {
            this.§0§.scaleX = 1;
            this.§0§.scaleY = 1;
         }
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(this.§?!^§)
         {
            this.§[""§.§,>§(0,this.§"!1§);
            this.§[""§.addEventListener(ColorFadeLayerEvent.§"!^§,this.§]2§);
            if(this.§+!X§)
            {
               if(this.§^" § != null)
               {
                  this.§^" §.stop();
               }
               this.§^" § = §0!M§.§?!+§.§3d§(this.§0§,{
                  "scaleX":0,
                  "scaleY":0
               },null,this.§ T§,§0!M§.§5!9§);
               this.§^" §.play();
            }
         }
         else
         {
            this.§+R§();
            super.hide(param1,param2);
         }
      }
      
      private function §+R§() : void
      {
         if(§0+§.mClip == this.§[""§.parent && §0+§.mClip != null)
         {
            §0+§.mClip.removeChild(this.§[""§);
         }
         this.§[""§.removeEventListener(ColorFadeLayerEvent.§"!^§,this.§]2§);
      }
      
      protected function §]2§(param1:ColorFadeLayerEvent) : void
      {
         this.§+R§();
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
