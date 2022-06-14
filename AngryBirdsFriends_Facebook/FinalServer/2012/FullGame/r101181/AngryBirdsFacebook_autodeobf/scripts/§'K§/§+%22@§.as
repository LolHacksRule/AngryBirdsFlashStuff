package §'K§
{
   import §6!B§.§>!E§;
   import §]!A§.;
   import com.rovio.assets.§8B§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §+"@§
   {
       
      
      private var §=!a§:MovieClip;
      
      private var §8"-§:Array;
      
      public function §+"@§(param1:MovieClip)
      {
         super();
         this.§=!a§ = param1;
      }
      
      public function activate() : void
      {
         §#6§.§ q§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         this.§8"-§ = [];
      }
      
      public function deActivate() : void
      {
         var _loc1_:MovieClip = null;
         §#6§.§ q§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         for each(_loc1_ in this.§8"-§)
         {
            if(this.§=!a§)
            {
               if(_loc1_.parent == this.§=!a§)
               {
                  this.§=!a§.removeChild(_loc1_);
               }
            }
         }
         this.§8"-§ = [];
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc3_:MovieClip = null;
         var _loc2_:int = this.§8"-§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§8"-§[_loc2_];
            if(_loc3_.currentFrame == _loc3_.totalFrames)
            {
               this.§8"-§.splice(_loc2_,1);
               if(this.§=!a§)
               {
                  if(_loc3_.parent == this.§=!a§)
                  {
                     this.§=!a§.removeChild(_loc3_);
                  }
               }
            }
            _loc2_--;
         }
         if(Math.random() > 0.97)
         {
            this.§#!N§();
         }
      }
      
      public function §#!N§() : void
      {
         var _loc1_:int = 0;
         _loc1_ = Math.floor(Math.random() * 4);
         _loc1_ = Math.min(_loc1_,3);
         var _loc2_:String = "FireWorks" + (_loc1_ + 1);
         var _loc3_:Class = §8B§.§6"C§(_loc2_);
         var _loc4_:MovieClip;
         (_loc4_ = new _loc3_()).x = Math.random() * this.§=!a§.width;
         _loc4_.y = Math.random() * this.§=!a§.height;
         §>!E§.§7N§("Sound_Fireworks_Blast" + (_loc1_ + 1));
         this.§=!a§.addChild(_loc4_);
         _loc4_.gotoAndPlay(1);
         this.§8"-§.push(_loc4_);
      }
   }
}
