package §]"P§
{
   import §!#`§.Event;
   import §!#`§.§^"O§;
   import §!6§.§4";§;
   import §!6§.§9§;
   import §!6§.Sprite;
   import §#"l§.§6!j§;
   import §#"l§.§^#r§;
   import §6!+§.BitmapFont;
   import §6!+§.TextField;
   import flash.system.System;
   
   class §+"@§ extends Sprite
   {
       
      
      private var §"U§:§4";§;
      
      private var §^g§:TextField;
      
      private var §#!'§:int = 0;
      
      private var §#"7§:int = 0;
      
      private var §5,§:Number = 0;
      
      function §+"@§()
      {
         super();
         this.§"U§ = new §4";§(50,25,0);
         this.§^g§ = new TextField(48,25,"",BitmapFont.§@!Y§,BitmapFont.§#!&§,16777215);
         this.§^g§.x = 2;
         this.§^g§.hAlign = §^#r§.LEFT;
         this.§^g§.vAlign = §6!j§.TOP;
         addChild(this.§"U§);
         addChild(this.§^g§);
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         this.§<!l§(0,this.§4#Y§(),0);
         blendMode = §9#6§.NONE;
      }
      
      private function §<!l§(param1:Number, param2:Number, param3:int) : void
      {
         this.§^g§.text = "FPS: " + param1.toFixed(param1 < 100 ? 1 : 0) + "\nMEM: " + param2.toFixed(param2 < 100 ? 1 : 0) + "\nDRW: " + param3;
      }
      
      private function §4#Y§() : Number
      {
         return System.totalMemory * 9.54e-7;
      }
      
      private function onEnterFrame(param1:§^"O§) : void
      {
         this.§5,§ += param1.§@#q§;
         ++this.§#!'§;
         if(this.§5,§ > 1)
         {
            this.§<!l§(this.§#!'§ / this.§5,§,this.§4#Y§(),this.§#"7§ - 2);
            this.§#!'§ = this.§5,§ = 0;
         }
      }
      
      public function get §<#!§() : int
      {
         return this.§#"7§;
      }
      
      public function set §<#!§(param1:int) : void
      {
         this.§#"7§ = param1;
      }
   }
}
