package §""d§
{
   import §#!k§.§4!4§;
   import §4##§.§7!Y§;
   import flash.display.MovieClip;
   
   public class §<`§ extends §7!Y§
   {
      
      private static const §@&§:Number = 1000 / 60;
       
      
      private var § #-§:String;
      
      private var §]t§:String;
      
      private var §`"'§:int = 0;
      
      private var §@!g§:int = 0;
      
      private var §5!e§:Number = 0;
      
      private var §`!n§:Boolean = false;
      
      public function §<`§(param1:XML, param2:§,m§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §4!4§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §6V§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§5!e§ += param1;
         this.§@!g§ = this.§5!e§ / §@&§;
         while(this.§`"'§ < this.§@!g§)
         {
            ++this.§`"'§;
            mClip.gotoAndStop(this.§`"'§);
            this.§ #-§ = mClip.currentLabel;
            if(this.§ #-§ != this.§]t§)
            {
               _loc2_ = this.§ #-§;
               this.§@!g§ = this.§`"'§;
               this.§5!e§ = this.§@!g§ * §@&§;
            }
         }
         this.§`"'§ = this.§@!g§;
         this.§]t§ = this.§ #-§;
         return _loc2_;
      }
      
      public function §-!j§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §3!q§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §]7§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §%"Y§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§ #-§ = param1;
         this.§]t§ = param1;
         this.§@!g§ = mClip.currentFrame;
         this.§`"'§ = mClip.currentFrame;
         this.§5!e§ = mClip.currentFrame * §@&§;
      }
      
      public function §7!?§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §8"R§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §^"h§() : Boolean
      {
         return this.§`!n§;
      }
      
      public function set §^"h§(param1:Boolean) : void
      {
         this.§`!n§ = param1;
      }
   }
}
