package §]!&§
{
   import §]!5§.§=j§;
   import flash.display.MovieClip;
   
   public class §0!Q§ extends §=j§
   {
      
      private static const §0o§:Number = 1000 / 60;
       
      
      private var §4W§:String;
      
      private var §@'§:String;
      
      private var §&!3§:int = 0;
      
      private var §@5§:int = 0;
      
      private var §[C§:Number = 0;
      
      private var §@!W§:Boolean = false;
      
      public function §0!Q§(param1:XML, param2:§]!K§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §]a§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§[C§ += param1;
         this.§@5§ = this.§[C§ / §0o§;
         while(this.§&!3§ < this.§@5§)
         {
            ++this.§&!3§;
            mClip.gotoAndStop(this.§&!3§);
            this.§4W§ = mClip.currentLabel;
            if(this.§4W§ != this.§@'§)
            {
               _loc2_ = this.§4W§;
               this.§@5§ = this.§&!3§;
               this.§[C§ = this.§@5§ * §0o§;
            }
         }
         this.§&!3§ = this.§@5§;
         this.§@'§ = this.§4W§;
         return _loc2_;
      }
      
      public function §&!G§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §+>§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §;!>§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §`Q§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§4W§ = param1;
         this.§@'§ = param1;
         this.§@5§ = mClip.currentFrame;
         this.§&!3§ = mClip.currentFrame;
         this.§[C§ = mClip.currentFrame * §0o§;
      }
      
      public function §3!`§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §7!W§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §"U§() : Boolean
      {
         return this.§@!W§;
      }
      
      public function set §"U§(param1:Boolean) : void
      {
         this.§@!W§ = param1;
      }
   }
}
