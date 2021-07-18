package §+D§
{
   import §;"Y§.§1"z§;
   import §<w§.§6#'§;
   import flash.display.MovieClip;
   
   public class §0"$§ extends §1"z§
   {
      
      private static const §5f§:Number = 1000 / 60;
       
      
      private var §-,§:String;
      
      private var §=!&§:String;
      
      private var §3O§:int = 0;
      
      private var §?"l§:int = 0;
      
      private var §7#Q§:Number = 0;
      
      private var §+j§:Boolean = false;
      
      public function §0"$§(param1:XML, param2:§ #^§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §6#'§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §<U§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§7#Q§ += param1;
         this.§?"l§ = this.§7#Q§ / §5f§;
         while(this.§3O§ < this.§?"l§)
         {
            ++this.§3O§;
            mClip.gotoAndStop(this.§3O§);
            this.§-,§ = mClip.currentLabel;
            if(this.§-,§ != this.§=!&§)
            {
               _loc2_ = this.§-,§;
               this.§?"l§ = this.§3O§;
               this.§7#Q§ = this.§?"l§ * §5f§;
            }
         }
         this.§3O§ = this.§?"l§;
         this.§=!&§ = this.§-,§;
         return _loc2_;
      }
      
      public function §0#6§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §1!L§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §&">§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §-"I§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§-,§ = param1;
         this.§=!&§ = param1;
         this.§?"l§ = mClip.currentFrame;
         this.§3O§ = mClip.currentFrame;
         this.§7#Q§ = mClip.currentFrame * §5f§;
      }
      
      public function §'_§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §%E§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §<"M§() : Boolean
      {
         return this.§+j§;
      }
      
      public function set §<"M§(param1:Boolean) : void
      {
         this.§+j§ = param1;
      }
   }
}
