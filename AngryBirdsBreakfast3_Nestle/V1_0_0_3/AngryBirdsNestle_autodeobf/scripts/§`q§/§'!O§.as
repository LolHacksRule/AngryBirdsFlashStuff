package §`q§
{
   import §!!<§.§7!r§;
   import §&!'§.ColorFadeLayerEvent;
   import §&!'§.§]S§;
   import §=3§.§]!X§;
   import §=3§.§`!F§;
   import §[<§.AbstractPopup;
   import flash.display.MovieClip;
   
   public class §'!O§ extends AbstractPopup
   {
       
      
      private const §7""§:Number = 0.25;
      
      private const §?u§:Number = 0.7;
      
      private const §+V§:Number = 0.25;
      
      protected var §1x§:§]S§ = null;
      
      private var §>!Q§:Boolean;
      
      protected var §[_§:§]!X§;
      
      protected var §=!c§:Boolean;
      
      protected var §1!b§:Boolean;
      
      protected var §0!2§:Boolean = false;
      
      protected var §'!f§:§7!r§;
      
      private var §return§:MovieClip;
      
      public function §'!O§(param1:int, param2:int, param3:XML = null)
      {
         super(param1,param2,param3);
         if(this.§1x§ == null)
         {
            this.§1x§ = new §]S§(0,0,0,0);
         }
      }
      
      override protected function init() : void
      {
         super.init();
         this.§return§ = §#t§.mClip;
         if(this.§1!b§)
         {
            this.§return§.scaleX = 0;
            this.§return§.scaleY = 0;
         }
      }
      
      override public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:Number = NaN;
         super.setViewSize(param1,param2);
         if(this.§0!2§)
         {
            _loc3_ = 0;
            if(AngryBirdsCustom.§!m§ != 0)
            {
               _loc3_ = param1 / AngryBirdsCustom.§1M§ * 220;
            }
            this.§return§.x = (param1 - _loc3_) / 2;
            this.§return§.y = param2 / 2;
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         if(this.§=!c§)
         {
            §#t§.mClip.addChildAt(this.§1x§,0);
            this.§1x§.§3"5§(0.7,this.§7""§);
         }
         if(this.§1!b§)
         {
            if(this.§[_§ != null)
            {
               this.§[_§.stop();
            }
            this.§[_§ = §`!F§.§=J§.§-r§(this.§return§,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },this.§?u§,§`!F§.§%!3§);
            this.§[_§.play();
            this.§[_§.updateState();
         }
         else
         {
            this.§return§.scaleX = 1;
            this.§return§.scaleY = 1;
         }
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(this.§=!c§)
         {
            this.§1x§.§3"5§(0,this.§7""§);
            this.§1x§.addEventListener(ColorFadeLayerEvent.§!D§,this.§4K§);
            if(this.§1!b§)
            {
               if(this.§[_§ != null)
               {
                  this.§[_§.stop();
               }
               this.§[_§ = §`!F§.§=J§.§-r§(this.§return§,{
                  "scaleX":0,
                  "scaleY":0
               },null,this.§+V§,§`!F§.§;!4§);
               this.§[_§.play();
            }
         }
         else
         {
            this.§]!"§();
            super.hide(param1,param2);
         }
      }
      
      private function §]!"§() : void
      {
         if(§#t§.mClip == this.§1x§.parent && §#t§.mClip != null)
         {
            §#t§.mClip.removeChild(this.§1x§);
         }
         this.§1x§.removeEventListener(ColorFadeLayerEvent.§!D§,this.§4K§);
      }
      
      protected function §4K§(param1:ColorFadeLayerEvent) : void
      {
         this.§]!"§();
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
