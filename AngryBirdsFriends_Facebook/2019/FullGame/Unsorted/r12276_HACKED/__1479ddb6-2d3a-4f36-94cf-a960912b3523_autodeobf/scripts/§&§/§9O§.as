package §&§#8
{
   import §#Z§.§1$§;
   import §#Z§.§6J§;
   import §#Z§.Sprite;
   import §0"D§.§=#?§;
   import §0"D§.§["Z§;
   import §<!S§.§2"]§;
   import §<!S§.Event;
   import §[M§.BitmapFont;
   import §[M§.TextField;
   import flash.system.System;
   
   class §9O§ extends Sprite
   {
       
      
      private var §>"l§:§6J§;
      
      private var §>$D§:TextField;
      
      private var §4j§:int = 0;
      
      private var §;T§:int = 0;
      
      private var §!!R§:Number = 0;
      
      function §9O§()
      {
         super();
         this.§>"l§ = new §6J§(50,25,0);
         this.§>$D§ = new TextField(48,25,"",BitmapFont.§#!R§,BitmapFont.§1!0§,16777215);
         this.§>$D§.x = 2;
         this.§>$D§.hAlign = §["Z§.LEFT;
         this.§>$D§.vAlign = §=#?§.TOP;
         addChild(this.§>"l§);
         addChild(this.§>$D§);
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         this.§`c§(0,this.§;o§(),0);
         blendMode = §1$§.NONE;
      }
      
      private function §`c§(param1:Number, param2:Number, param3:int) : void
      {
         this.§>$D§.text = "FPS: " + param1.toFixed(param1 < 100 ? 1 : 0) + "\nMEM: " + param2.toFixed(param2 < 100 ? 1 : 0) + "\nDRW: " + param3;
      }
      
      private function §;o§() : Number
      {
         return System.totalMemory * 9.54e-7;
      }
      
      private function onEnterFrame(param1:§2"]§) : void
      {
         this.§!!R§ += param1.§-!s§;
         ++this.§4j§;
         if(this.§!!R§ > 1)
         {
            this.§`c§(this.§4j§ / this.§!!R§,this.§;o§(),this.§;T§ - 2);
            this.§4j§ = this.§!!R§ = 0;
         }
      }
      
      public function get §;4§() : int
      {
         return this.§;T§;
      }
      
      public function set §;4§(param1:int) : void
      {
         this.§;T§ = param1;
      }
   }
}
