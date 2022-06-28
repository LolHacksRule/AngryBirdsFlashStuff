package §^@§
{
   import §1h§.§ use§;
   import flash.display.MovieClip;
   
   public class §!"§ extends § use§
   {
      
      private static const §2@§:Number = 1000 / 60;
       
      
      private var §[!B§:String;
      
      private var §;p§:String;
      
      private var §1_§:int = 0;
      
      private var §05§:int = 0;
      
      private var §?r§:Number = 0;
      
      private var §@%§:Boolean = false;
      
      public function §!"§(param1:XML, param2:§2q§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §3s§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§?r§ += param1;
         this.§05§ = this.§?r§ / §2@§;
         while(this.§1_§ < this.§05§)
         {
            ++this.§1_§;
            mClip.gotoAndStop(this.§1_§);
            this.§[!B§ = mClip.currentLabel;
            if(this.§[!B§ != this.§;p§)
            {
               _loc2_ = this.§[!B§;
               this.§05§ = this.§1_§;
               this.§?r§ = this.§05§ * §2@§;
            }
         }
         this.§1_§ = this.§05§;
         this.§;p§ = this.§[!B§;
         return _loc2_;
      }
      
      public function §+;§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §^!1§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §,,§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §,P§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§[!B§ = param1;
         this.§;p§ = param1;
         this.§05§ = mClip.currentFrame;
         this.§1_§ = mClip.currentFrame;
         this.§?r§ = mClip.currentFrame * §2@§;
      }
      
      public function §'!-§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §#w§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §!q§() : Boolean
      {
         return this.§@%§;
      }
      
      public function set §!q§(param1:Boolean) : void
      {
         this.§@%§ = param1;
      }
   }
}
