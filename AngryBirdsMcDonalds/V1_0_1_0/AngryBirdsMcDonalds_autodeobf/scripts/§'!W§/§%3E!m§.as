package §'!W§
{
   import §3l§.§&W§;
   import §3l§.§9m§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §>!m§ extends MovieClip
   {
       
      
      private var §,1§:§&W§;
      
      private var §#A§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §0G§:Boolean = false;
      
      public function §>!m§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = false)
      {
         super();
         var _loc6_:ColorTransform;
         (_loc6_ = new ColorTransform()).redOffset = param1;
         _loc6_.greenOffset = param2;
         _loc6_.blueOffset = param3;
         transform.colorTransform = _loc6_;
         var _loc7_:Number = §;!4§.§9!L§;
         if(param5)
         {
            _loc7_ += §;!4§.§4!4§;
         }
         var _loc8_:Number = §;!4§.§<!T§;
         graphics.beginFill(0,1);
         graphics.drawRect(0,0,_loc7_,_loc8_);
         graphics.endFill();
         this.mNewAlpha = param4;
         alpha = param4;
         this.mouseEnabled = true;
         addEventListener(Event.ENTER_FRAME,this.§7!L§);
      }
      
      public function § try§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§0G§)
         {
            return;
         }
         if(this.§,1§)
         {
            this.§,1§.stop();
         }
         this.§#A§ = new ColorTransform();
         this.§#A§.redOffset = transform.colorTransform.redOffset;
         this.§#A§.greenOffset = transform.colorTransform.greenOffset;
         this.§#A§.blueOffset = transform.colorTransform.blueOffset;
         this.§,1§ = §9m§.§>E§.§"0§(this.§#A§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§,1§.onComplete = this.§62§;
         this.§,1§.play();
         this.§0G§ = true;
      }
      
      public function §,!X§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function § !!§(param1:Number, param2:Number = 0.5, param3:String = "linear") : void
      {
         if(this.§,1§ != null)
         {
            this.§,1§.stop();
         }
         this.§,1§ = §9m§.§>E§.§"0§(this,{"mNewAlpha":param1},null,param2,param3);
         this.§,1§.onComplete = this.§'`§;
         this.§,1§.§>!<§ = false;
         this.§,1§.play();
      }
      
      private function §'`§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§5G§));
      }
      
      private function §62§() : void
      {
         this.§0G§ = false;
      }
      
      private function §7!L§(param1:Event) : void
      {
         if(this.§#A§)
         {
            transform.colorTransform = this.§#A§;
            if(!this.§0G§)
            {
               this.§#A§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.§7!L§);
         if(this.§,1§)
         {
            this.§,1§.stop();
            this.§,1§ = null;
         }
      }
   }
}
