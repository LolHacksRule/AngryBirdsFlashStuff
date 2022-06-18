package §&U§
{
   import §1t§.§-!M§;
   import flash.display.MovieClip;
   
   public class §!X§ extends §-!M§
   {
      
      private static const §6[§:Number = 1000 / 60;
       
      
      private var §2a§:String;
      
      private var §-n§:String;
      
      private var §]!B§:int = 0;
      
      private var §`Z§:int = 0;
      
      private var §,q§:Number = 0;
      
      private var §&!K§:Boolean = false;
      
      public function §!X§(param1:XML, param2:§05§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §&!,§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§,q§ += param1;
         this.§`Z§ = this.§,q§ / §6[§;
         while(this.§]!B§ < this.§`Z§)
         {
            ++this.§]!B§;
            mClip.gotoAndStop(this.§]!B§);
            this.§2a§ = mClip.currentLabel;
            if(this.§2a§ != this.§-n§)
            {
               _loc2_ = this.§2a§;
               this.§`Z§ = this.§]!B§;
               this.§,q§ = this.§`Z§ * §6[§;
            }
         }
         this.§]!B§ = this.§`Z§;
         this.§-n§ = this.§2a§;
         return _loc2_;
      }
      
      public function §;r§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §>#§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §%`§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §8d§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§2a§ = param1;
         this.§-n§ = param1;
         this.§`Z§ = mClip.currentFrame;
         this.§]!B§ = mClip.currentFrame;
         this.§,q§ = mClip.currentFrame * §6[§;
      }
      
      public function §<]§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §^g§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §8f§() : Boolean
      {
         return this.§&!K§;
      }
      
      public function set §8f§(param1:Boolean) : void
      {
         this.§&!K§ = param1;
      }
   }
}
