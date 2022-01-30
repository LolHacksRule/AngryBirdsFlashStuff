package §[!F§
{
   import §&<§.§@j§;
   import §8,§.§8!h§;
   import flash.display.MovieClip;
   
   public class §>""§ extends §@j§
   {
      
      private static const §+!#§:Number = 1000 / 60;
       
      
      private var §!D§:String;
      
      private var §0o§:String;
      
      private var §#"§:int = 0;
      
      private var § !y§:int = 0;
      
      private var §2!§:Number = 0;
      
      private var §^&§:Boolean = false;
      
      public function §>""§(param1:XML, param2:§3j§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §8!h§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §3@§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§2!§ += param1;
         this.§ !y§ = this.§2!§ / §+!#§;
         while(this.§#"§ < this.§ !y§)
         {
            ++this.§#"§;
            mClip.gotoAndStop(this.§#"§);
            this.§!D§ = mClip.currentLabel;
            if(this.§!D§ != this.§0o§)
            {
               _loc2_ = this.§!D§;
               this.§ !y§ = this.§#"§;
               this.§2!§ = this.§ !y§ * §+!#§;
            }
         }
         this.§#"§ = this.§ !y§;
         this.§0o§ = this.§!D§;
         return _loc2_;
      }
      
      public function §"I§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §#!q§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §+H§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §7?§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§!D§ = param1;
         this.§0o§ = param1;
         this.§ !y§ = mClip.currentFrame;
         this.§#"§ = mClip.currentFrame;
         this.§2!§ = mClip.currentFrame * §+!#§;
      }
      
      public function §0V§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §,!^§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §35§() : Boolean
      {
         return this.§^&§;
      }
      
      public function set §35§(param1:Boolean) : void
      {
         this.§^&§ = param1;
      }
   }
}
