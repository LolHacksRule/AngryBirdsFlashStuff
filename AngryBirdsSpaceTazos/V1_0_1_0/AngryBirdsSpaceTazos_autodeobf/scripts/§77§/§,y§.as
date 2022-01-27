package §77§
{
   import §5X§.§@!!§;
   import §<W§.§]"+§;
   import flash.display.MovieClip;
   
   public class §,y§ extends §@!!§
   {
      
      private static const §,!5§:Number = 1000 / 60;
       
      
      private var §`"5§:String;
      
      private var §-Y§:String;
      
      private var §5!8§:int = 0;
      
      private var §3!,§:int = 0;
      
      private var §2!]§:Number = 0;
      
      private var §9,§:Boolean = false;
      
      public function §,y§(param1:XML, param2:§ ",§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §]"+§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §-X§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§2!]§ += param1;
         this.§3!,§ = this.§2!]§ / §,!5§;
         while(this.§5!8§ < this.§3!,§)
         {
            ++this.§5!8§;
            mClip.gotoAndStop(this.§5!8§);
            this.§`"5§ = mClip.currentLabel;
            if(this.§`"5§ != this.§-Y§)
            {
               _loc2_ = this.§`"5§;
               this.§3!,§ = this.§5!8§;
               this.§2!]§ = this.§3!,§ * §,!5§;
            }
         }
         this.§5!8§ = this.§3!,§;
         this.§-Y§ = this.§`"5§;
         return _loc2_;
      }
      
      public function §="7§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §&!A§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §]0§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §[!0§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§`"5§ = param1;
         this.§-Y§ = param1;
         this.§3!,§ = mClip.currentFrame;
         this.§5!8§ = mClip.currentFrame;
         this.§2!]§ = mClip.currentFrame * §,!5§;
      }
      
      public function §<"D§() : String
      {
         return mClip.currentLabel;
      }
      
      public function § !I§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §9"%§() : Boolean
      {
         return this.§9,§;
      }
      
      public function set §9"%§(param1:Boolean) : void
      {
         this.§9,§ = param1;
      }
   }
}
