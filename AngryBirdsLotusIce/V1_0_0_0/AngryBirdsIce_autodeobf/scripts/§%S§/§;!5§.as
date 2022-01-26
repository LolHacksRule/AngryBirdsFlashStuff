package §%S§
{
   import flash.display.MovieClip;
   import §in§.§9c§;
   
   public class §;!5§ extends §9c§
   {
      
      private static const §@!'§:Number = 1000 / 60;
       
      
      private var § each§:String;
      
      private var §!§:String;
      
      private var §2!%§:int = 0;
      
      private var §5-§:int = 0;
      
      private var §!X§:Number = 0;
      
      private var §^k§:Boolean = false;
      
      public function §;!5§(param1:XML, param2:§,1§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §1m§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§!X§ += param1;
         this.§5-§ = this.§!X§ / §@!'§;
         while(this.§2!%§ < this.§5-§)
         {
            ++this.§2!%§;
            mClip.gotoAndStop(this.§2!%§);
            this.§ each§ = mClip.currentLabel;
            if(this.§ each§ != this.§!§)
            {
               _loc2_ = this.§ each§;
               this.§5-§ = this.§2!%§;
               this.§!X§ = this.§5-§ * §@!'§;
            }
         }
         this.§2!%§ = this.§5-§;
         this.§!§ = this.§ each§;
         return _loc2_;
      }
      
      public function §>f§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §,o§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §8J§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §@O§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§ each§ = param1;
         this.§!§ = param1;
         this.§5-§ = mClip.currentFrame;
         this.§2!%§ = mClip.currentFrame;
         this.§!X§ = mClip.currentFrame * §@!'§;
      }
      
      public function §@x§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §3w§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §'!,§() : Boolean
      {
         return this.§^k§;
      }
      
      public function set §'!,§(param1:Boolean) : void
      {
         this.§^k§ = param1;
      }
   }
}
