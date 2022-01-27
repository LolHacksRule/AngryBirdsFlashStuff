package §=8§
{
   import §'!N§.§>p§;
   import flash.display.MovieClip;
   
   public class §,!%§ extends §>p§
   {
      
      private static const §3[§:Number = 1000 / 60;
       
      
      private var §&g§:String;
      
      private var §+!G§:String;
      
      private var §@!+§:int = 0;
      
      private var §&!6§:int = 0;
      
      private var §%1§:Number = 0;
      
      private var § &§:Boolean = false;
      
      public function §,!%§(param1:XML, param2:§'^§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §<!4§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§%1§ += param1;
         this.§&!6§ = this.§%1§ / §3[§;
         while(this.§@!+§ < this.§&!6§)
         {
            ++this.§@!+§;
            mClip.gotoAndStop(this.§@!+§);
            this.§&g§ = mClip.currentLabel;
            if(this.§&g§ != this.§+!G§)
            {
               _loc2_ = this.§&g§;
               this.§&!6§ = this.§@!+§;
               this.§%1§ = this.§&!6§ * §3[§;
            }
         }
         this.§@!+§ = this.§&!6§;
         this.§+!G§ = this.§&g§;
         return _loc2_;
      }
      
      public function §`3§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §>Z§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §[Z§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §3j§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§&g§ = param1;
         this.§+!G§ = param1;
         this.§&!6§ = mClip.currentFrame;
         this.§@!+§ = mClip.currentFrame;
         this.§%1§ = mClip.currentFrame * §3[§;
      }
      
      public function § !M§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §]9§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §]!6§() : Boolean
      {
         return this.§ &§;
      }
      
      public function set §]!6§(param1:Boolean) : void
      {
         this.§ &§ = param1;
      }
   }
}
