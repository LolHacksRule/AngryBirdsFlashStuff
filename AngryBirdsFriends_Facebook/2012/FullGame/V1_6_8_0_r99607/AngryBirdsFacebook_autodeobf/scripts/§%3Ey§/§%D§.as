package §>y§
{
   import §+I§.§9!%§;
   import §1k§.§%4§;
   import com.rovio.assets.§#!J§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §%D§
   {
       
      
      private var §="§:MovieClip;
      
      private var §0!=§:Array;
      
      public function §%D§(param1:MovieClip)
      {
         super();
         this.§="§ = param1;
      }
      
      public function activate() : void
      {
         §9!%§.§ !W§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         this.§0!=§ = [];
      }
      
      public function deActivate() : void
      {
         var _loc1_:MovieClip = null;
         §9!%§.§ !W§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         for each(_loc1_ in this.§0!=§)
         {
            if(this.§="§)
            {
               if(_loc1_.parent == this.§="§)
               {
                  this.§="§.removeChild(_loc1_);
               }
            }
         }
         this.§0!=§ = [];
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc3_:MovieClip = null;
         var _loc2_:int = this.§0!=§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§0!=§[_loc2_];
            if(_loc3_.currentFrame == _loc3_.totalFrames)
            {
               this.§0!=§.splice(_loc2_,1);
               if(this.§="§)
               {
                  if(_loc3_.parent == this.§="§)
                  {
                     this.§="§.removeChild(_loc3_);
                  }
               }
            }
            _loc2_--;
         }
         if(Math.random() > 0.97)
         {
            this.§-!L§();
         }
      }
      
      public function §-!L§() : void
      {
         var _loc1_:int = 0;
         _loc1_ = Math.floor(Math.random() * 4);
         _loc1_ = Math.min(_loc1_,3);
         var _loc2_:String = "FireWorks" + (_loc1_ + 1);
         var _loc3_:Class = §#!J§.§1!Y§(_loc2_);
         var _loc4_:MovieClip;
         (_loc4_ = new _loc3_()).x = Math.random() * this.§="§.width;
         _loc4_.y = Math.random() * this.§="§.height;
         §%4§.§>f§("Sound_Fireworks_Blast" + (_loc1_ + 1));
         this.§="§.addChild(_loc4_);
         _loc4_.gotoAndPlay(1);
         this.§0!=§.push(_loc4_);
      }
   }
}
