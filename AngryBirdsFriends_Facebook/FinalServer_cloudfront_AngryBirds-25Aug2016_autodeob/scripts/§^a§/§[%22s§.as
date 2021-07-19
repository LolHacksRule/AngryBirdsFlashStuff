package §^a§
{
   import §2,§.BitmapFont;
   import §2,§.TextField;
   import §4"D§.§2!O§;
   import §4"D§.§;#C§;
   import §9$§.Sprite;
   import §9$§.§["T§;
   import §9$§.§],§;
   import §?a§.§+"a§;
   import §?a§.Event;
   import flash.system.System;
   
   class §["s§ extends Sprite
   {
       
      
      private var §4!s§:§],§;
      
      private var §@]§:TextField;
      
      private var §8#Z§:int = 0;
      
      private var §#$&§:int = 0;
      
      private var §#$0§:Number = 0;
      
      function §["s§()
      {
         super();
         this.§4!s§ = new §],§(50,25,0);
         this.§@]§ = new TextField(48,25,"",BitmapFont.§,"1§,BitmapFont.§<;§,16777215);
         this.§@]§.x = 2;
         this.§@]§.hAlign = §2!O§.LEFT;
         this.§@]§.vAlign = §;#C§.TOP;
         addChild(this.§4!s§);
         addChild(this.§@]§);
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         this.§8#w§(0,this.§'#D§(),0);
         blendMode = §["T§.NONE;
      }
      
      private function §8#w§(param1:Number, param2:Number, param3:int) : void
      {
         this.§@]§.text = "FPS: " + param1.toFixed(param1 < 100 ? 1 : 0) + "\nMEM: " + param2.toFixed(param2 < 100 ? 1 : 0) + "\nDRW: " + param3;
      }
      
      private function §'#D§() : Number
      {
         return System.totalMemory * 9.54e-7;
      }
      
      private function onEnterFrame(param1:§+"a§) : void
      {
         this.§#$0§ += param1.§+!$§;
         ++this.§8#Z§;
         if(this.§#$0§ > 1)
         {
            this.§8#w§(this.§8#Z§ / this.§#$0§,this.§'#D§(),this.§#$&§ - 2);
            this.§8#Z§ = this.§#$0§ = 0;
         }
      }
      
      public function get §^#d§() : int
      {
         return this.§#$&§;
      }
      
      public function set §^#d§(param1:int) : void
      {
         this.§#$&§ = param1;
      }
   }
}
