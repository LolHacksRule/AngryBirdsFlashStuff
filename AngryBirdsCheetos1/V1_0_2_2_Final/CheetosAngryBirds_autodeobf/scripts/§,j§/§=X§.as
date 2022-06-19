package §,j§
{
   import §1§.§&!3§;
   import flash.display.MovieClip;
   
   public class §=X§ extends §&!3§
   {
      
      private static const §#y§:Number = 1000 / 60;
       
      
      private var §03§:String;
      
      private var §-!W§:String;
      
      private var §[#§:int = 0;
      
      private var §#M§:int = 0;
      
      private var §4!3§:Number = 0;
      
      private var §;!T§:Boolean = false;
      
      public function §=X§(param1:XML, param2:§1-§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §<&§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§4!3§ += param1;
         this.§#M§ = this.§4!3§ / §#y§;
         while(this.§[#§ < this.§#M§)
         {
            ++this.§[#§;
            mClip.gotoAndStop(this.§[#§);
            this.§03§ = mClip.currentLabel;
            if(this.§03§ != this.§-!W§)
            {
               _loc2_ = this.§03§;
               this.§#M§ = this.§[#§;
               this.§4!3§ = this.§#M§ * §#y§;
            }
         }
         this.§[#§ = this.§#M§;
         this.§-!W§ = this.§03§;
         return _loc2_;
      }
      
      public function §5c§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §'!%§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §1!X§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §=5§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§03§ = param1;
         this.§-!W§ = param1;
         this.§#M§ = mClip.currentFrame;
         this.§[#§ = mClip.currentFrame;
         this.§4!3§ = mClip.currentFrame * §#y§;
      }
      
      public function §[V§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §;]§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §#I§() : Boolean
      {
         return this.§;!T§;
      }
      
      public function set §#I§(param1:Boolean) : void
      {
         this.§;!T§ = param1;
      }
   }
}
