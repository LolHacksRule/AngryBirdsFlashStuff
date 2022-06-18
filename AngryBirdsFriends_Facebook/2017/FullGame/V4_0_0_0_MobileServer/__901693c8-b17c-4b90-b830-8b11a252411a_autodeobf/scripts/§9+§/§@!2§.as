package §9+§
{
   import §&!v§.§0"s§;
   import §&!v§.§1i§;
   import §&!v§.Sprite;
   import §1P§.§-"i§;
   import §1P§.Event;
   import §<$;§.BitmapFont;
   import §<$;§.TextField;
   import §>l§.§7!<§;
   import §>l§.§9#§;
   import flash.system.System;
   
   class §@!2§ extends Sprite
   {
       
      
      private var §2!q§:§0"s§;
      
      private var §[!&§:TextField;
      
      private var §<$=§:int = 0;
      
      private var §'6§:int = 0;
      
      private var §0"u§:Number = 0;
      
      function §@!2§()
      {
         super();
         this.§2!q§ = new §0"s§(50,25,0);
         this.§[!&§ = new TextField(48,25,"",BitmapFont.§4+§,BitmapFont.§?#V§,16777215);
         this.§[!&§.x = 2;
         this.§[!&§.hAlign = §9#§.LEFT;
         this.§[!&§.vAlign = §7!<§.TOP;
         addChild(this.§2!q§);
         addChild(this.§[!&§);
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         this.§1"M§(0,this.§;#m§(),0);
         blendMode = §1i§.NONE;
      }
      
      private function §1"M§(param1:Number, param2:Number, param3:int) : void
      {
         this.§[!&§.text = "FPS: " + param1.toFixed(param1 < 100 ? 1 : 0) + "\nMEM: " + param2.toFixed(param2 < 100 ? 1 : 0) + "\nDRW: " + param3;
      }
      
      private function §;#m§() : Number
      {
         return System.totalMemory * 9.54e-7;
      }
      
      private function onEnterFrame(param1:§-"i§) : void
      {
         this.§0"u§ += param1.§]"m§;
         ++this.§<$=§;
         if(this.§0"u§ > 1)
         {
            this.§1"M§(this.§<$=§ / this.§0"u§,this.§;#m§(),this.§'6§ - 2);
            this.§<$=§ = this.§0"u§ = 0;
         }
      }
      
      public function get §6S§() : int
      {
         return this.§'6§;
      }
      
      public function set §6S§(param1:int) : void
      {
         this.§'6§ = param1;
      }
   }
}
