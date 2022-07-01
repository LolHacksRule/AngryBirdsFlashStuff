package §4Y§
{
   import §!R§.§-!T§;
   import §&!I§.§9!C§;
   import flash.display.MovieClip;
   
   public class §7`§ extends §-!T§
   {
      
      private static const §&!a§:Number = 1000 / 60;
       
      
      private var §3!k§:String;
      
      private var §"!O§:String;
      
      private var §^!z§:int = 0;
      
      private var §6C§:int = 0;
      
      private var §=!g§:Number = 0;
      
      private var §!4§:Boolean = false;
      
      public function §7`§(param1:XML, param2:§%n§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §9!C§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §-6§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§=!g§ += param1;
         this.§6C§ = this.§=!g§ / §&!a§;
         while(this.§^!z§ < this.§6C§)
         {
            ++this.§^!z§;
            mClip.gotoAndStop(this.§^!z§);
            this.§3!k§ = mClip.currentLabel;
            if(this.§3!k§ != this.§"!O§)
            {
               _loc2_ = this.§3!k§;
               this.§6C§ = this.§^!z§;
               this.§=!g§ = this.§6C§ * §&!a§;
            }
         }
         this.§^!z§ = this.§6C§;
         this.§"!O§ = this.§3!k§;
         return _loc2_;
      }
      
      public function §,!E§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §7t§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §""1§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §",§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§3!k§ = param1;
         this.§"!O§ = param1;
         this.§6C§ = mClip.currentFrame;
         this.§^!z§ = mClip.currentFrame;
         this.§=!g§ = mClip.currentFrame * §&!a§;
      }
      
      public function §3!X§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §'!y§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §@t§() : Boolean
      {
         return this.§!4§;
      }
      
      public function set §@t§(param1:Boolean) : void
      {
         this.§!4§ = param1;
      }
   }
}
