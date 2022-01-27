package §=!G§
{
   import §"d§.§%-§;
   import com.rovio.assets.§%!Z§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §1x§ extends §4!C§
   {
       
      
      protected var §#!9§:MovieClip;
      
      protected var §9"4§:Object;
      
      public function §1x§()
      {
         super();
      }
      
      override public function update() : void
      {
         super.update();
         this.§+#1§();
         if(this.§9"4§)
         {
            this.§@"l§(false);
         }
      }
      
      public function §%!%§() : void
      {
         if(this.§9"4§)
         {
            this.§@"l§(false);
         }
         if(this.§#!9§)
         {
            this.§#!9§.gotoAndPlay(1);
         }
         else
         {
            this.§#!9§ = new §%!Z§.§;",§(this.removeAnimationClassName)();
            addChild(this.§#!9§);
            this.§#!9§.addEventListener(Event.COMPLETE,this.§^H§);
            §,# §.visible = false;
         }
         this.§9"4§ = data;
      }
      
      protected function get removeAnimationClassName() : String
      {
         throw new Error("Must implement abstract method.");
      }
      
      private function §^H§(param1:Event) : void
      {
         this.§+#1§();
         this.§@"l§(true);
      }
      
      private function §@"l§(param1:Boolean) : void
      {
         var _loc2_:§%-§ = new §%-§(§%-§.§<R§,true);
         _loc2_.data = {
            "data":this.§9"4§,
            "refresh":param1
         };
         dispatchEvent(_loc2_);
         this.§9"4§ = null;
      }
      
      private function §+#1§() : void
      {
         if(this.§#!9§)
         {
            this.§#!9§.stop();
            removeChild(this.§#!9§);
            this.§#!9§ = null;
            §,# §.visible = true;
         }
      }
   }
}
