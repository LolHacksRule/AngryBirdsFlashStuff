package §6x§
{
   import §^m§.§0!-§;
   import §^m§.§=!a§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §9E§ extends MovieClip
   {
       
      
      private var §#X§:§0!-§;
      
      private var §^!@§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §-4§:Boolean = false;
      
      public function §9E§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = false)
      {
         super();
         var _loc6_:ColorTransform;
         (_loc6_ = new ColorTransform()).redOffset = param1;
         _loc6_.greenOffset = param2;
         _loc6_.blueOffset = param3;
         transform.colorTransform = _loc6_;
         var _loc7_:Number = §9!_§.§;!+§;
         if(param5)
         {
            _loc7_ += §9!_§.§[c§;
         }
         var _loc8_:Number = §9!_§.§]!n§;
         graphics.beginFill(0,1);
         graphics.drawRect(0,0,_loc7_,_loc8_);
         graphics.endFill();
         this.mNewAlpha = param4;
         alpha = param4;
         this.mouseEnabled = true;
         addEventListener(Event.ENTER_FRAME,this.§!9§);
      }
      
      public function §^!i§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§-4§)
         {
            return;
         }
         if(this.§#X§)
         {
            this.§#X§.stop();
         }
         this.§^!@§ = new ColorTransform();
         this.§^!@§.redOffset = transform.colorTransform.redOffset;
         this.§^!@§.greenOffset = transform.colorTransform.greenOffset;
         this.§^!@§.blueOffset = transform.colorTransform.blueOffset;
         this.§#X§ = §=!a§.§9$§.§9!H§(this.§^!@§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§#X§.onComplete = this.§<O§;
         this.§#X§.play();
         this.§-4§ = true;
      }
      
      public function §'x§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §7!&§(param1:Number, param2:Number = 0.5, param3:Function = null) : void
      {
         if(this.§#X§ != null)
         {
            this.§#X§.stop();
         }
         this.§#X§ = §=!a§.§9$§.§9!H§(this,{"mNewAlpha":param1},null,param2,param3);
         this.§#X§.onComplete = this.§5!"§;
         this.§#X§.§2!^§ = false;
         this.§#X§.play();
      }
      
      private function §5!"§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§]!j§));
      }
      
      private function §<O§() : void
      {
         this.§-4§ = false;
      }
      
      private function §!9§(param1:Event) : void
      {
         if(this.§^!@§)
         {
            transform.colorTransform = this.§^!@§;
            if(!this.§-4§)
            {
               this.§^!@§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.§!9§);
         if(this.§#X§)
         {
            this.§#X§.stop();
            this.§#X§ = null;
         }
      }
   }
}
