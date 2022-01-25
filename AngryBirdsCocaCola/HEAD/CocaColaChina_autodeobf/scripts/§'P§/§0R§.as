package §'P§
{
   import §7]§.§8N§;
   import flash.display.MovieClip;
   
   public class §0R§ extends §8N§
   {
      
      private static const §!D§:Number = 1000 / 60;
       
      
      private var §4>§:String;
      
      private var §6!%§:String;
      
      private var §2L§:int = 0;
      
      private var § for§:int = 0;
      
      private var §@!D§:Number = 0;
      
      private var §`l§:Boolean = false;
      
      public function §0R§(param1:XML, param2:§`;§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §-!>§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§@!D§ += param1;
         this.§ for§ = this.§@!D§ / §!D§;
         while(this.§2L§ < this.§ for§)
         {
            ++this.§2L§;
            mClip.gotoAndStop(this.§2L§);
            this.§4>§ = mClip.currentLabel;
            if(this.§4>§ != this.§6!%§)
            {
               _loc2_ = this.§4>§;
               this.§ for§ = this.§2L§;
               this.§@!D§ = this.§ for§ * §!D§;
            }
         }
         this.§2L§ = this.§ for§;
         this.§6!%§ = this.§4>§;
         return _loc2_;
      }
      
      public function §,!B§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §&J§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §]!G§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §`6§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§4>§ = param1;
         this.§6!%§ = param1;
         this.§ for§ = mClip.currentFrame;
         this.§2L§ = mClip.currentFrame;
         this.§@!D§ = mClip.currentFrame * §!D§;
      }
      
      public function §7!D§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §;!V§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §0M§() : Boolean
      {
         return this.§`l§;
      }
      
      public function set §0M§(param1:Boolean) : void
      {
         this.§`l§ = param1;
      }
   }
}
