package §'b§
{
   import §6l§.§ l§;
   import flash.display.MovieClip;
   
   public class §6!L§ extends § l§
   {
      
      private static const §`!;§:Number = 1000 / 60;
       
      
      private var §0!L§:String;
      
      private var §#I§:String;
      
      private var §74§:int = 0;
      
      private var §;!C§:int = 0;
      
      private var § z§:Number = 0;
      
      private var §0G§:Boolean = false;
      
      public function §6!L§(param1:XML, param2:§'^§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §?V§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§ z§ += param1;
         this.§;!C§ = this.§ z§ / §`!;§;
         while(this.§74§ < this.§;!C§)
         {
            ++this.§74§;
            mClip.gotoAndStop(this.§74§);
            this.§0!L§ = mClip.currentLabel;
            if(this.§0!L§ != this.§#I§)
            {
               _loc2_ = this.§0!L§;
               this.§;!C§ = this.§74§;
               this.§ z§ = this.§;!C§ * §`!;§;
            }
         }
         this.§74§ = this.§;!C§;
         this.§#I§ = this.§0!L§;
         return _loc2_;
      }
      
      public function §]d§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §&u§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §4v§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §"A§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§0!L§ = param1;
         this.§#I§ = param1;
         this.§;!C§ = mClip.currentFrame;
         this.§74§ = mClip.currentFrame;
         this.§ z§ = mClip.currentFrame * §`!;§;
      }
      
      public function §=!+§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §#!?§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §?+§() : Boolean
      {
         return this.§0G§;
      }
      
      public function set §?+§(param1:Boolean) : void
      {
         this.§0G§ = param1;
      }
   }
}
