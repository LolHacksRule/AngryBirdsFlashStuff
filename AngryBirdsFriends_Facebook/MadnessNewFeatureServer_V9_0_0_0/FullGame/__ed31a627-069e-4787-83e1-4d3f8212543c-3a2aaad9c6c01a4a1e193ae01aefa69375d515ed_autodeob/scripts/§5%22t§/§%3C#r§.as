package §5"t§
{
   import §!"'§.§2"?§;
   import §&$3§.§"!&§;
   import §&$3§.§7$C§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §<#r§ extends MovieClip
   {
       
      
      private var §0a§:§7$C§;
      
      private var §'#!§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §@"C§:Boolean = false;
      
      public function §<#r§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsBase.singleton.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsBase.singleton.getAppHeight());
         super();
         var _loc7_:ColorTransform;
         (_loc7_ = new ColorTransform()).redOffset = param1;
         _loc7_.greenOffset = param2;
         _loc7_.blueOffset = param3;
         transform.colorTransform = _loc7_;
         graphics.beginFill(0,1);
         graphics.drawRect(-param5,-param6,param5 * 2,param6 * 2);
         scaleX = 100;
         scaleY = 100;
         graphics.endFill();
         this.mNewAlpha = param4;
         alpha = param4;
         this.mouseEnabled = true;
         AngryBirdsBase.singleton.addEventListener(§2"?§.§?#Y§,this.onEnterFrame);
      }
      
      public function §3#w§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§@"C§)
         {
            return;
         }
         if(this.§0a§)
         {
            this.§0a§.stop();
         }
         this.§'#!§ = new ColorTransform();
         this.§'#!§.redOffset = transform.colorTransform.redOffset;
         this.§'#!§.greenOffset = transform.colorTransform.greenOffset;
         this.§'#!§.blueOffset = transform.colorTransform.blueOffset;
         this.§0a§ = §"!&§.§`"H§.§1"W§(this.§'#!§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§0a§.onComplete = this.§8$-§;
         this.§0a§.play();
         this.§@"C§ = true;
      }
      
      public function §;"<§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §>#0§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§0a§ != null)
         {
            this.§0a§.stop();
         }
         this.§0a§ = §"!&§.§`"H§.§1"W§(this,{"mNewAlpha":param1},null,param2);
         this.§0a§.onComplete = this.§"#j§;
         this.§0a§.§=F§ = false;
         this.§0a§.play();
      }
      
      private function §"#j§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§^"u§));
      }
      
      private function §8$-§() : void
      {
         this.§@"C§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§'#!§)
         {
            transform.colorTransform = this.§'#!§;
            if(!this.§@"C§)
            {
               this.§'#!§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function §"#%§() : void
      {
         AngryBirdsBase.singleton.removeEventListener(§2"?§.§?#Y§,this.onEnterFrame);
         if(this.§0a§)
         {
            this.§0a§.stop();
            this.§0a§ = null;
         }
      }
   }
}
