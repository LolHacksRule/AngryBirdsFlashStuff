package §6"r§
{
   import §'!U§.§4P§;
   import §3!T§.§3">§;
   import flash.display.MovieClip;
   
   public class §="T§ extends §4P§
   {
      
      private static const §3#G§:Number = 1000 / 60;
       
      
      private var §7a§:String;
      
      private var §!#@§:String;
      
      private var §1`§:int = 0;
      
      private var §+!M§:int = 0;
      
      private var §7!I§:Number = 0;
      
      private var §9!<§:Boolean = false;
      
      public function §="T§(param1:XML, param2:§0"<§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §3">§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §`!I§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§7!I§ += param1;
         this.§+!M§ = this.§7!I§ / §3#G§;
         while(this.§1`§ < this.§+!M§)
         {
            ++this.§1`§;
            mClip.gotoAndStop(this.§1`§);
            this.§7a§ = mClip.currentLabel;
            if(this.§7a§ != this.§!#@§)
            {
               _loc2_ = this.§7a§;
               this.§+!M§ = this.§1`§;
               this.§7!I§ = this.§+!M§ * §3#G§;
            }
         }
         this.§1`§ = this.§+!M§;
         this.§!#@§ = this.§7a§;
         return _loc2_;
      }
      
      public function §"$&§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function § $§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §!#J§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §9!,§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§7a§ = param1;
         this.§!#@§ = param1;
         this.§+!M§ = mClip.currentFrame;
         this.§1`§ = mClip.currentFrame;
         this.§7!I§ = mClip.currentFrame * §3#G§;
      }
      
      public function §^$'§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §;!1§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get isPlaying() : Boolean
      {
         return this.§9!<§;
      }
      
      public function set isPlaying(param1:Boolean) : void
      {
         this.§9!<§ = param1;
      }
   }
}
