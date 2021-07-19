package §0"$§
{
   import §,L§.§%J§;
   import §-!;§.§>!B§;
   import flash.display.MovieClip;
   
   public class §6n§ extends §%J§
   {
      
      private static const §6p§:Number = 1000 / 60;
       
      
      private var §?h§:String;
      
      private var §5!`§:String;
      
      private var §,!B§:int = 0;
      
      private var §5!#§:int = 0;
      
      private var §`!M§:Number = 0;
      
      private var §`Z§:Boolean = false;
      
      public function §6n§(param1:XML, param2:§"!a§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §>!B§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §4!h§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§`!M§ += param1;
         this.§5!#§ = this.§`!M§ / §6p§;
         while(this.§,!B§ < this.§5!#§)
         {
            ++this.§,!B§;
            mClip.gotoAndStop(this.§,!B§);
            this.§?h§ = mClip.currentLabel;
            if(this.§?h§ != this.§5!`§)
            {
               _loc2_ = this.§?h§;
               this.§5!#§ = this.§,!B§;
               this.§`!M§ = this.§5!#§ * §6p§;
            }
         }
         this.§,!B§ = this.§5!#§;
         this.§5!`§ = this.§?h§;
         return _loc2_;
      }
      
      public function §6!Y§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §;!=§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §5!t§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §%!"§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§?h§ = param1;
         this.§5!`§ = param1;
         this.§5!#§ = mClip.currentFrame;
         this.§,!B§ = mClip.currentFrame;
         this.§`!M§ = mClip.currentFrame * §6p§;
      }
      
      public function §4!-§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §8Z§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §,!V§() : Boolean
      {
         return this.§`Z§;
      }
      
      public function set §,!V§(param1:Boolean) : void
      {
         this.§`Z§ = param1;
      }
   }
}
