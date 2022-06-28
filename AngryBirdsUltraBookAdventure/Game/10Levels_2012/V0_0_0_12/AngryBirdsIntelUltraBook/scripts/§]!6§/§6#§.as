package §]!6§
{
   import §>!-§.UIComponentInteractiveRovio;
   import flash.display.MovieClip;
   
   public class §6#§ extends UIComponentInteractiveRovio
   {
      
      private static const §&;§:Number = 1000 / 60;
       
      
      private var §9!,§:String;
      
      private var §>h§:String;
      
      private var §=H§:int = 0;
      
      private var §<y§:int = 0;
      
      private var §[b§:Number = 0;
      
      private var §,`§:Boolean = false;
      
      public function §6#§(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §4W§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§[b§ += param1;
         this.§<y§ = this.§[b§ / §&;§;
         while(this.§=H§ < this.§<y§)
         {
            ++this.§=H§;
            mClip.gotoAndStop(this.§=H§);
            this.§9!,§ = mClip.currentLabel;
            if(this.§9!,§ != this.§>h§)
            {
               _loc2_ = this.§9!,§;
               this.§<y§ = this.§=H§;
               this.§[b§ = this.§<y§ * §&;§;
            }
         }
         this.§=H§ = this.§<y§;
         this.§>h§ = this.§9!,§;
         return _loc2_;
      }
      
      public function §?i§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §-!#§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §]!T§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §;!G§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§9!,§ = param1;
         this.§>h§ = param1;
         this.§<y§ = mClip.currentFrame;
         this.§=H§ = mClip.currentFrame;
         this.§[b§ = mClip.currentFrame * §&;§;
      }
      
      public function § x§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §^=§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get § O§() : Boolean
      {
         return this.§,`§;
      }
      
      public function set § O§(param1:Boolean) : void
      {
         this.§,`§ = param1;
      }
   }
}
