package §1"a§
{
   import §]Q§.§&#P§;
   import com.rovio.assets.§5_§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §8!N§ extends §;"2§
   {
       
      
      protected var §]!`§:MovieClip;
      
      protected var §;"4§:Object;
      
      public function §8!N§()
      {
         super();
      }
      
      override public function update() : void
      {
         super.update();
         this.§-!k§();
         if(this.§;"4§)
         {
            this.§-!G§(false);
         }
      }
      
      public function §+-§() : void
      {
         if(this.§;"4§)
         {
            this.§-!G§(false);
         }
         if(this.§]!`§)
         {
            this.§]!`§.gotoAndPlay(1);
         }
         else
         {
            this.§]!`§ = new §5_§.§`"G§(this.removeAnimationClassName)();
            addChild(this.§]!`§);
            this.§]!`§.addEventListener(Event.COMPLETE,this.§7D§);
            §5!-§.visible = false;
         }
         this.§;"4§ = data;
      }
      
      protected function get removeAnimationClassName() : String
      {
         throw new Error("Must implement abstract method.");
      }
      
      private function §7D§(param1:Event) : void
      {
         this.§-!k§();
         this.§-!G§(true);
      }
      
      private function §-!G§(param1:Boolean) : void
      {
         var _loc2_:§&#P§ = new §&#P§(§&#P§.§-"&§,true);
         _loc2_.data = {
            "data":this.§;"4§,
            "refresh":param1
         };
         dispatchEvent(_loc2_);
         this.§;"4§ = null;
      }
      
      private function §-!k§() : void
      {
         if(this.§]!`§)
         {
            this.§]!`§.stop();
            removeChild(this.§]!`§);
            this.§]!`§ = null;
            §5!-§.visible = true;
         }
      }
   }
}
