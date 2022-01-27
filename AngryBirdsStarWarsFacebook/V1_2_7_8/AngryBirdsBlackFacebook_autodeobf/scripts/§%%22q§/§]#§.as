package §%"q§
{
   import §[!`§.§#e§;
   import com.rovio.assets.§5"]§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §]#§ extends §,L§
   {
       
      
      protected var §3-§:MovieClip;
      
      protected var §[o§:Object;
      
      public function §]#§()
      {
         super();
      }
      
      override public function update() : void
      {
         super.update();
         this.§>"9§();
         if(this.§[o§)
         {
            this.§7!!§(false);
         }
      }
      
      public function §%!t§() : void
      {
         if(this.§[o§)
         {
            this.§7!!§(false);
         }
         if(this.§3-§)
         {
            this.§3-§.gotoAndPlay(1);
         }
         else
         {
            this.§3-§ = new §5"]§.§4!K§(this.removeAnimationClassName)();
            addChild(this.§3-§);
            this.§3-§.addEventListener(Event.COMPLETE,this.§4!O§);
            §&"_§.visible = false;
         }
         this.§[o§ = data;
      }
      
      protected function get removeAnimationClassName() : String
      {
         throw new Error("Must implement abstract method.");
      }
      
      private function §4!O§(param1:Event) : void
      {
         this.§>"9§();
         this.§7!!§(true);
      }
      
      private function §7!!§(param1:Boolean) : void
      {
         var _loc2_:§#e§ = new §#e§(§#e§.§'Z§,true);
         _loc2_.data = {
            "data":this.§[o§,
            "refresh":param1
         };
         dispatchEvent(_loc2_);
         this.§[o§ = null;
      }
      
      private function §>"9§() : void
      {
         if(this.§3-§)
         {
            this.§3-§.stop();
            removeChild(this.§3-§);
            this.§3-§ = null;
            §&"_§.visible = true;
         }
      }
   }
}
