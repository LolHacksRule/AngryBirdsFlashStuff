package §"!2§
{
   import §>!<§.UIComponentInteractiveRovio;
   import flash.display.MovieClip;
   
   public class §+,§ extends UIComponentInteractiveRovio
   {
      
      private static const §[!7§:Number = 1000 / 60;
       
      
      private var §!&§:String;
      
      private var §!!2§:String;
      
      private var §8=§:int = 0;
      
      private var §%!A§:int = 0;
      
      private var §@!f§:Number = 0;
      
      private var §0!"§:Boolean = false;
      
      public function §+,§(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §0!]§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§@!f§ += param1;
         this.§%!A§ = this.§@!f§ / §[!7§;
         while(this.§8=§ < this.§%!A§)
         {
            ++this.§8=§;
            mClip.gotoAndStop(this.§8=§);
            this.§!&§ = mClip.currentLabel;
            if(this.§!&§ != this.§!!2§)
            {
               _loc2_ = this.§!&§;
               this.§%!A§ = this.§8=§;
               this.§@!f§ = this.§%!A§ * §[!7§;
            }
         }
         this.§8=§ = this.§%!A§;
         this.§!!2§ = this.§!&§;
         return _loc2_;
      }
      
      public function §[!?§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §-!R§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §;#§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §"r§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§!&§ = param1;
         this.§!!2§ = param1;
         this.§%!A§ = mClip.currentFrame;
         this.§8=§ = mClip.currentFrame;
         this.§@!f§ = mClip.currentFrame * §[!7§;
      }
      
      public function §8!-§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §1!c§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §9X§() : Boolean
      {
         return this.§0!"§;
      }
      
      public function set §9X§(param1:Boolean) : void
      {
         this.§0!"§ = param1;
      }
   }
}
