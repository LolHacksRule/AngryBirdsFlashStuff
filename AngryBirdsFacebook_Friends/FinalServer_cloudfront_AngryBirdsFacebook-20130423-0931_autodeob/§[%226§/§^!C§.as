package §["6§
{
   import §8m§.§@"M§;
   import §@!"§.§?l§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §^!C§
   {
       
      
      private var §>!=§:MovieClip;
      
      private var §%!d§:Array;
      
      public function §^!C§(param1:MovieClip)
      {
         super();
         this.§>!=§ = param1;
      }
      
      public function activate() : void
      {
         §?l§.§ "G§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         this.§%!d§ = [];
      }
      
      public function deActivate() : void
      {
         var _loc1_:MovieClip = null;
         §?l§.§ "G§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         for each(_loc1_ in this.§%!d§)
         {
            if(this.§>!=§)
            {
               if(_loc1_.parent == this.§>!=§)
               {
                  this.§>!=§.removeChild(_loc1_);
               }
            }
         }
         this.§%!d§ = [];
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc3_:MovieClip = null;
         var _loc2_:int = this.§%!d§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§%!d§[_loc2_];
            if(_loc3_.currentFrame == _loc3_.totalFrames)
            {
               this.§%!d§.splice(_loc2_,1);
               if(this.§>!=§)
               {
                  if(_loc3_.parent == this.§>!=§)
                  {
                     this.§>!=§.removeChild(_loc3_);
                  }
               }
            }
            _loc2_--;
         }
         if(Math.random() > 0.97)
         {
            this.§<!h§();
         }
      }
      
      public function §<!h§() : void
      {
         var _loc1_:int = Math.floor(Math.random() * 4);
         _loc1_ = Math.min(_loc1_,3);
         var _loc2_:String = "FireWorks" + (_loc1_ + 1);
         var _loc3_:Class = §?q§.§ q§(_loc2_);
         var _loc4_:MovieClip;
         (_loc4_ = new _loc3_()).x = Math.random() * this.§>!=§.width;
         _loc4_.y = Math.random() * this.§>!=§.height;
         §@"M§.§3"C§("Sound_Fireworks_Blast" + (_loc1_ + 1));
         this.§>!=§.addChild(_loc4_);
         _loc4_.gotoAndPlay(1);
         this.§%!d§.push(_loc4_);
      }
   }
}
