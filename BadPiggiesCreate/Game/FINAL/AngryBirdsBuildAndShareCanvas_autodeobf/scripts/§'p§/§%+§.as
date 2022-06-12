package §'p§
{
   import §'!A§.§9!!§;
   import flash.display.MovieClip;
   
   public class §%+§ extends §9!!§
   {
      
      private static const §>5§:Number = 1000 / 60;
       
      
      private var §"!%§:String;
      
      private var §=v§:String;
      
      private var §5x§:int = 0;
      
      private var §0!%§:int = 0;
      
      private var §4!5§:Number = 0;
      
      private var §+$§:Boolean = false;
      
      public function §%+§(param1:XML, param2:§`!T§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §?" §(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§4!5§ += param1;
         this.§0!%§ = this.§4!5§ / §>5§;
         while(this.§5x§ < this.§0!%§)
         {
            ++this.§5x§;
            mClip.gotoAndStop(this.§5x§);
            this.§"!%§ = mClip.currentLabel;
            if(this.§"!%§ != this.§=v§)
            {
               _loc2_ = this.§"!%§;
               this.§0!%§ = this.§5x§;
               this.§4!5§ = this.§0!%§ * §>5§;
            }
         }
         this.§5x§ = this.§0!%§;
         this.§=v§ = this.§"!%§;
         return _loc2_;
      }
      
      public function §>q§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §5!$§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §@!t§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §^Q§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§"!%§ = param1;
         this.§=v§ = param1;
         this.§0!%§ = mClip.currentFrame;
         this.§5x§ = mClip.currentFrame;
         this.§4!5§ = mClip.currentFrame * §>5§;
      }
      
      public function §5!>§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §+!u§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §if §() : Boolean
      {
         return this.§+$§;
      }
      
      public function set §if §(param1:Boolean) : void
      {
         this.§+$§ = param1;
      }
   }
}
