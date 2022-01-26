package §!E§
{
   import §2!$§.§#!K§;
   import flash.display.MovieClip;
   
   public class §#!F§ extends §#!K§
   {
      
      private static const §-!>§:Number = 1000 / 60;
       
      
      private var § !N§:String;
      
      private var §26§:String;
      
      private var §8>§:int = 0;
      
      private var §;M§:int = 0;
      
      private var §,!"§:Number = 0;
      
      private var §+u§:Boolean = false;
      
      public function §#!F§(param1:XML, param2:§-!%§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §0R§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§,!"§ += param1;
         this.§;M§ = this.§,!"§ / §-!>§;
         while(this.§8>§ < this.§;M§)
         {
            ++this.§8>§;
            mClip.gotoAndStop(this.§8>§);
            this.§ !N§ = mClip.currentLabel;
            if(this.§ !N§ != this.§26§)
            {
               _loc2_ = this.§ !N§;
               this.§;M§ = this.§8>§;
               this.§,!"§ = this.§;M§ * §-!>§;
            }
         }
         this.§8>§ = this.§;M§;
         this.§26§ = this.§ !N§;
         return _loc2_;
      }
      
      public function §4>§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §6!%§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §2L§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function § for§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§ !N§ = param1;
         this.§26§ = param1;
         this.§;M§ = mClip.currentFrame;
         this.§8>§ = mClip.currentFrame;
         this.§,!"§ = mClip.currentFrame * §-!>§;
      }
      
      public function §@!D§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §`l§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §0M§() : Boolean
      {
         return this.§+u§;
      }
      
      public function set §0M§(param1:Boolean) : void
      {
         this.§+u§ = param1;
      }
   }
}
