package §-!V§
{
   import §;!0§.§"[§;
   import flash.display.MovieClip;
   
   public class §+!T§ extends §"[§
   {
      
      private static const §^§:Number = 1000 / 60;
       
      
      private var §]!-§:String;
      
      private var §!s§:String;
      
      private var §`!<§:int = 0;
      
      private var §5§:int = 0;
      
      private var §;!V§:Number = 0;
      
      private var §!P§:Boolean = false;
      
      public function §+!T§(param1:XML, param2:§@§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §=!H§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§;!V§ += param1;
         this.§5§ = this.§;!V§ / §^§;
         while(this.§`!<§ < this.§5§)
         {
            ++this.§`!<§;
            mClip.gotoAndStop(this.§`!<§);
            this.§]!-§ = mClip.currentLabel;
            if(this.§]!-§ != this.§!s§)
            {
               _loc2_ = this.§]!-§;
               this.§5§ = this.§`!<§;
               this.§;!V§ = this.§5§ * §^§;
            }
         }
         this.§`!<§ = this.§5§;
         this.§!s§ = this.§]!-§;
         return _loc2_;
      }
      
      public function §2I§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §1w§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §%!#§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §"G§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§]!-§ = param1;
         this.§!s§ = param1;
         this.§5§ = mClip.currentFrame;
         this.§`!<§ = mClip.currentFrame;
         this.§;!V§ = mClip.currentFrame * §^§;
      }
      
      public function §@!e§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §?!A§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §6!W§() : Boolean
      {
         return this.§!P§;
      }
      
      public function set §6!W§(param1:Boolean) : void
      {
         this.§!P§ = param1;
      }
   }
}
