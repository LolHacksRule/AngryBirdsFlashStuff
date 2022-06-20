package §%#A§
{
   import §<"1§.§@!N§;
   import §<o§.§3h§;
   import flash.display.MovieClip;
   
   public class §'=§ extends §@!N§
   {
      
      private static const §="K§:Number = 1000 / 60;
       
      
      private var §0"#§:String;
      
      private var §+",§:String;
      
      private var §%#?§:int = 0;
      
      private var §8!#§:int = 0;
      
      private var §@p§:Number = 0;
      
      private var §2"J§:Boolean = false;
      
      public function §'=§(param1:XML, param2:§]!_§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §3h§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §8#i§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§@p§ += param1;
         this.§8!#§ = this.§@p§ / §="K§;
         while(this.§%#?§ < this.§8!#§)
         {
            ++this.§%#?§;
            mClip.gotoAndStop(this.§%#?§);
            this.§0"#§ = mClip.currentLabel;
            if(this.§0"#§ != this.§+",§)
            {
               _loc2_ = this.§0"#§;
               this.§8!#§ = this.§%#?§;
               this.§@p§ = this.§8!#§ * §="K§;
            }
         }
         this.§%#?§ = this.§8!#§;
         this.§+",§ = this.§0"#§;
         return _loc2_;
      }
      
      public function §&!r§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §3!S§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §!"1§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §&"X§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§0"#§ = param1;
         this.§+",§ = param1;
         this.§8!#§ = mClip.currentFrame;
         this.§%#?§ = mClip.currentFrame;
         this.§@p§ = mClip.currentFrame * §="K§;
      }
      
      public function §3K§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §'"1§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get isPlaying() : Boolean
      {
         return this.§2"J§;
      }
      
      public function set isPlaying(param1:Boolean) : void
      {
         this.§2"J§ = param1;
      }
   }
}
