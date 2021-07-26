package §?"§
{
   import §5!G§.§&2§;
   import §>s§.§+m§;
   import com.rovio.assets.§>"5§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §4C§
   {
       
      
      private var §+<§:MovieClip;
      
      private var §0"F§:Array;
      
      public function §4C§(param1:MovieClip)
      {
         super();
         this.§+<§ = param1;
      }
      
      public function activate() : void
      {
         §&2§.§5!k§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         this.§0"F§ = [];
      }
      
      public function deActivate() : void
      {
         var _loc1_:MovieClip = null;
         §&2§.§5!k§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         for each(_loc1_ in this.§0"F§)
         {
            if(this.§+<§)
            {
               if(_loc1_.parent == this.§+<§)
               {
                  this.§+<§.removeChild(_loc1_);
               }
            }
         }
         this.§0"F§ = [];
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc3_:MovieClip = null;
         var _loc2_:int = this.§0"F§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§0"F§[_loc2_];
            if(_loc3_.currentFrame == _loc3_.totalFrames)
            {
               this.§0"F§.splice(_loc2_,1);
               if(this.§+<§)
               {
                  if(_loc3_.parent == this.§+<§)
                  {
                     this.§+<§.removeChild(_loc3_);
                  }
               }
            }
            _loc2_--;
         }
         if(Math.random() > 0.97)
         {
            this.§7u§();
         }
      }
      
      public function §7u§() : void
      {
         var _loc1_:int = 0;
         _loc1_ = Math.floor(Math.random() * 4);
         _loc1_ = Math.min(_loc1_,3);
         var _loc2_:String = "FireWorks" + (_loc1_ + 1);
         var _loc3_:Class = §>"5§.§6s§(_loc2_);
         var _loc4_:MovieClip;
         (_loc4_ = new _loc3_()).x = Math.random() * this.§+<§.width;
         _loc4_.y = Math.random() * this.§+<§.height;
         §+m§.§]!N§("Sound_Fireworks_Blast" + (_loc1_ + 1));
         this.§+<§.addChild(_loc4_);
         _loc4_.gotoAndPlay(1);
         this.§0"F§.push(_loc4_);
      }
   }
}
