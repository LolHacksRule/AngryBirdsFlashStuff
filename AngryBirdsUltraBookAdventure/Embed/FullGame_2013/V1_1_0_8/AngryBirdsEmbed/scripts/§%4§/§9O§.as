package §%4§
{
   import §0!#§.§0K§;
   import flash.display.MovieClip;
   
   public class §9O§ extends §0K§
   {
      
      private static const §]5§:Number = 1000 / 60;
       
      
      private var §?J§:String;
      
      private var §6R§:String;
      
      private var § get§:int = 0;
      
      private var §0!=§:int = 0;
      
      private var §"W§:Number = 0;
      
      private var §#s§:Boolean = false;
      
      public function §9O§(param1:XML, param2:§4!=§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §1!§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§"W§ += param1;
         this.§0!=§ = this.§"W§ / §]5§;
         while(this.§ get§ < this.§0!=§)
         {
            ++this.§ get§;
            mClip.gotoAndStop(this.§ get§);
            this.§?J§ = mClip.currentLabel;
            if(this.§?J§ != this.§6R§)
            {
               _loc2_ = this.§?J§;
               this.§0!=§ = this.§ get§;
               this.§"W§ = this.§0!=§ * §]5§;
            }
         }
         this.§ get§ = this.§0!=§;
         this.§6R§ = this.§?J§;
         return _loc2_;
      }
      
      public function §+!8§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §-z§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §3!N§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §3!;§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§?J§ = param1;
         this.§6R§ = param1;
         this.§0!=§ = mClip.currentFrame;
         this.§ get§ = mClip.currentFrame;
         this.§"W§ = mClip.currentFrame * §]5§;
      }
      
      public function §0e§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §^z§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §]n§() : Boolean
      {
         return this.§#s§;
      }
      
      public function set §]n§(param1:Boolean) : void
      {
         this.§#s§ = param1;
      }
   }
}
