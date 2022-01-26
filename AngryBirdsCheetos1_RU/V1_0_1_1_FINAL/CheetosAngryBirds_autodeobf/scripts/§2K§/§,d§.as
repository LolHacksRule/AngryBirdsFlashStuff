package §2K§
{
   import §6!K§.§3l§;
   import flash.display.MovieClip;
   
   public class §,d§ extends §3l§
   {
      
      private static const §,#§:Number = 1000 / 60;
       
      
      private var §<!0§:String;
      
      private var §9!2§:String;
      
      private var §=!N§:int = 0;
      
      private var § 4§:int = 0;
      
      private var §`?§:Number = 0;
      
      private var §-!`§:Boolean = false;
      
      public function §,d§(param1:XML, param2:§,!@§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §;!?§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§`?§ += param1;
         this.§ 4§ = this.§`?§ / §,#§;
         while(this.§=!N§ < this.§ 4§)
         {
            ++this.§=!N§;
            mClip.gotoAndStop(this.§=!N§);
            this.§<!0§ = mClip.currentLabel;
            if(this.§<!0§ != this.§9!2§)
            {
               _loc2_ = this.§<!0§;
               this.§ 4§ = this.§=!N§;
               this.§`?§ = this.§ 4§ * §,#§;
            }
         }
         this.§=!N§ = this.§ 4§;
         this.§9!2§ = this.§<!0§;
         return _loc2_;
      }
      
      public function § U§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §2!Q§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function § try§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §#!`§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§<!0§ = param1;
         this.§9!2§ = param1;
         this.§ 4§ = mClip.currentFrame;
         this.§=!N§ = mClip.currentFrame;
         this.§`?§ = mClip.currentFrame * §,#§;
      }
      
      public function §>S§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §>s§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §6G§() : Boolean
      {
         return this.§-!`§;
      }
      
      public function set §6G§(param1:Boolean) : void
      {
         this.§-!`§ = param1;
      }
   }
}
