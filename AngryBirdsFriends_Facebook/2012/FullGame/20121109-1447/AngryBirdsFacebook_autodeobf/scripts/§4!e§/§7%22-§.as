package §4!e§
{
   import §2!i§.§=!&§;
   import flash.display.MovieClip;
   
   public class §7"-§ extends §=!&§
   {
      
      private static const §'!'§:Number = 1000 / 60;
       
      
      private var §#"-§:String;
      
      private var §,!j§:String;
      
      private var §[c§:int = 0;
      
      private var §&"B§:int = 0;
      
      private var §>!u§:Number = 0;
      
      private var §%w§:Boolean = false;
      
      public function §7"-§(param1:XML, param2:§08§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §&!q§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§>!u§ += param1;
         this.§&"B§ = this.§>!u§ / §'!'§;
         while(this.§[c§ < this.§&"B§)
         {
            ++this.§[c§;
            mClip.gotoAndStop(this.§[c§);
            this.§#"-§ = mClip.currentLabel;
            if(this.§#"-§ != this.§,!j§)
            {
               _loc2_ = this.§#"-§;
               this.§&"B§ = this.§[c§;
               this.§>!u§ = this.§&"B§ * §'!'§;
            }
         }
         this.§[c§ = this.§&"B§;
         this.§,!j§ = this.§#"-§;
         return _loc2_;
      }
      
      public function §-Q§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §'!D§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §4" §(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §2!H§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§#"-§ = param1;
         this.§,!j§ = param1;
         this.§&"B§ = mClip.currentFrame;
         this.§[c§ = mClip.currentFrame;
         this.§>!u§ = mClip.currentFrame * §'!'§;
      }
      
      public function §6"?§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §+0§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §5%§() : Boolean
      {
         return this.§%w§;
      }
      
      public function set §5%§(param1:Boolean) : void
      {
         this.§%w§ = param1;
      }
   }
}
