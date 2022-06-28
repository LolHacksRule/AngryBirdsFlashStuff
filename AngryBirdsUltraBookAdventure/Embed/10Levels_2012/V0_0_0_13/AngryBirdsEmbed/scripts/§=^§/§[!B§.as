package §=^§
{
   import §@s§.§9$§;
   import flash.display.MovieClip;
   
   public class §[!B§ extends §9$§
   {
      
      private static const §8L§:Number = 1000 / 60;
       
      
      private var §;p§:String;
      
      private var §1_§:String;
      
      private var §05§:int = 0;
      
      private var §?r§:int = 0;
      
      private var §@%§:Number = 0;
      
      private var §3s§:Boolean = false;
      
      public function §[!B§(param1:XML, param2:§`f§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §+;§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§@%§ += param1;
         this.§?r§ = this.§@%§ / §8L§;
         while(this.§05§ < this.§?r§)
         {
            ++this.§05§;
            mClip.gotoAndStop(this.§05§);
            this.§;p§ = mClip.currentLabel;
            if(this.§;p§ != this.§1_§)
            {
               _loc2_ = this.§;p§;
               this.§?r§ = this.§05§;
               this.§@%§ = this.§?r§ * §8L§;
            }
         }
         this.§05§ = this.§?r§;
         this.§1_§ = this.§;p§;
         return _loc2_;
      }
      
      public function §^!1§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §,,§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §,P§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §'!-§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§;p§ = param1;
         this.§1_§ = param1;
         this.§?r§ = mClip.currentFrame;
         this.§05§ = mClip.currentFrame;
         this.§@%§ = mClip.currentFrame * §8L§;
      }
      
      public function §#w§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §2@§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §!q§() : Boolean
      {
         return this.§3s§;
      }
      
      public function set §!q§(param1:Boolean) : void
      {
         this.§3s§ = param1;
      }
   }
}
