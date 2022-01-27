package §8]§
{
   import §!!0§.§2§;
   import flash.display.MovieClip;
   
   public class §93§ extends §2§
   {
      
      private static const §]_§:Number = 1000 / 60;
       
      
      private var §]!"§:String;
      
      private var §+!H§:String;
      
      private var §@R§:int = 0;
      
      private var §6C§:int = 0;
      
      private var §!`§:Number = 0;
      
      private var §#N§:Boolean = false;
      
      public function §93§(param1:XML, param2:§+a§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §3o§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§!`§ += param1;
         this.§6C§ = this.§!`§ / §]_§;
         while(this.§@R§ < this.§6C§)
         {
            ++this.§@R§;
            mClip.gotoAndStop(this.§@R§);
            this.§]!"§ = mClip.currentLabel;
            if(this.§]!"§ != this.§+!H§)
            {
               _loc2_ = this.§]!"§;
               this.§6C§ = this.§@R§;
               this.§!`§ = this.§6C§ * §]_§;
            }
         }
         this.§@R§ = this.§6C§;
         this.§+!H§ = this.§]!"§;
         return _loc2_;
      }
      
      public function §28§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §'!,§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §0!P§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §#!&§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§]!"§ = param1;
         this.§+!H§ = param1;
         this.§6C§ = mClip.currentFrame;
         this.§@R§ = mClip.currentFrame;
         this.§!`§ = mClip.currentFrame * §]_§;
      }
      
      public function §6;§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §#!!§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §,J§() : Boolean
      {
         return this.§#N§;
      }
      
      public function set §,J§(param1:Boolean) : void
      {
         this.§#N§ = param1;
      }
   }
}
