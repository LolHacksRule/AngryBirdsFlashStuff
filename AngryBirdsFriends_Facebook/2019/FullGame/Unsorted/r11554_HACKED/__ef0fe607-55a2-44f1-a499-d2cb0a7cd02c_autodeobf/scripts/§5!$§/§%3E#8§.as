package §5!$§
{
   import §4!n§.§'!V§;
   import §5"G§.§8"`§;
   import flash.display.MovieClip;
   
   public class §>#8§ extends §'!V§
   {
      
      private static const §="'§:Number = 1000 / 60;
       
      
      private var §]$=§:String;
      
      private var §;"V§:String;
      
      private var §;!1§:int = 0;
      
      private var §%!z§:int = 0;
      
      private var §'#W§:Number = 0;
      
      private var §]!1§:Boolean = false;
      
      public function §>#8§(param1:XML, param2:§<c§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §8"`§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §9L§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§'#W§ += param1;
         this.§%!z§ = this.§'#W§ / §="'§;
         while(this.§;!1§ < this.§%!z§)
         {
            ++this.§;!1§;
            mClip.gotoAndStop(this.§;!1§);
            this.§]$=§ = mClip.currentLabel;
            if(this.§]$=§ != this.§;"V§)
            {
               _loc2_ = this.§]$=§;
               this.§%!z§ = this.§;!1§;
               this.§'#W§ = this.§%!z§ * §="'§;
            }
         }
         this.§;!1§ = this.§%!z§;
         this.§;"V§ = this.§]$=§;
         return _loc2_;
      }
      
      public function §%"v§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §-0§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §7!f§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §,#T§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§]$=§ = param1;
         this.§;"V§ = param1;
         this.§%!z§ = mClip.currentFrame;
         this.§;!1§ = mClip.currentFrame;
         this.§'#W§ = mClip.currentFrame * §="'§;
      }
      
      public function §3#U§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §9"g§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get isPlaying() : Boolean
      {
         return this.§]!1§;
      }
      
      public function set isPlaying(param1:Boolean) : void
      {
         this.§]!1§ = param1;
      }
   }
}
