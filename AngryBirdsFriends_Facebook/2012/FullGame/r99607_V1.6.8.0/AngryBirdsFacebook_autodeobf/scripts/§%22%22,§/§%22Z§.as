package §"",§
{
   import §1"2§.§ F§;
   import flash.display.MovieClip;
   
   public class §"Z§ extends § F§
   {
      
      private static const §9R§:Number = 1000 / 60;
       
      
      private var §[!0§:String;
      
      private var §0u§:String;
      
      private var §9l§:int = 0;
      
      private var §4!<§:int = 0;
      
      private var §!!-§:Number = 0;
      
      private var §6!f§:Boolean = false;
      
      public function §"Z§(param1:XML, param2:§<+§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §1!k§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§!!-§ += param1;
         this.§4!<§ = this.§!!-§ / §9R§;
         while(this.§9l§ < this.§4!<§)
         {
            ++this.§9l§;
            mClip.gotoAndStop(this.§9l§);
            this.§[!0§ = mClip.currentLabel;
            if(this.§[!0§ != this.§0u§)
            {
               _loc2_ = this.§[!0§;
               this.§4!<§ = this.§9l§;
               this.§!!-§ = this.§4!<§ * §9R§;
            }
         }
         this.§9l§ = this.§4!<§;
         this.§0u§ = this.§[!0§;
         return _loc2_;
      }
      
      public function §5$§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §]"%§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §'!B§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §;!B§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§[!0§ = param1;
         this.§0u§ = param1;
         this.§4!<§ = mClip.currentFrame;
         this.§9l§ = mClip.currentFrame;
         this.§!!-§ = mClip.currentFrame * §9R§;
      }
      
      public function §;!g§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §2!E§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §^^§() : Boolean
      {
         return this.§6!f§;
      }
      
      public function set §^^§(param1:Boolean) : void
      {
         this.§6!f§ = param1;
      }
   }
}
