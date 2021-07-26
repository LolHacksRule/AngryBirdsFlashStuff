package §"#k§
{
   import §+"!§.BitmapFont;
   import §+"!§.TextField;
   import §,#e§.§4!_§;
   import §,#e§.§;!`§;
   import §,#e§.Sprite;
   import §,$&§.§%"<§;
   import §,$&§.Event;
   import §8#p§.§!"'§;
   import §8#p§.§>§;
   import flash.system.System;
   
   class §8L§ extends Sprite
   {
       
      
      private var §8"A§:§;!`§;
      
      private var §%!8§:TextField;
      
      private var §^!u§:int = 0;
      
      private var §!#X§:int = 0;
      
      private var §#"w§:Number = 0;
      
      function §8L§()
      {
         super();
         this.§8"A§ = new §;!`§(50,25,0);
         this.§%!8§ = new TextField(48,25,"",BitmapFont.§=#t§,BitmapFont.§-Q§,16777215);
         this.§%!8§.x = 2;
         this.§%!8§.hAlign = §!"'§.LEFT;
         this.§%!8§.vAlign = §>#3§.TOP;
         addChild(this.§8"A§);
         addChild(this.§%!8§);
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         this.§[";§(0,this.§,L§(),0);
         blendMode = §4!_§.NONE;
      }
      
      private function §[";§(param1:Number, param2:Number, param3:int) : void
      {
         this.§%!8§.text = "FPS: " + param1.toFixed(param1 < 100 ? 1 : 0) + "\nMEM: " + param2.toFixed(param2 < 100 ? 1 : 0) + "\nDRW: " + param3;
      }
      
      private function §,L§() : Number
      {
         return System.totalMemory * 9.54e-7;
      }
      
      private function onEnterFrame(param1:§%"<§) : void
      {
         this.§#"w§ += param1.§^!%§;
         ++this.§^!u§;
         if(this.§#"w§ > 1)
         {
            this.§[";§(this.§^!u§ / this.§#"w§,this.§,L§(),this.§!#X§ - 2);
            this.§^!u§ = this.§#"w§ = 0;
         }
      }
      
      public function get §!"c§() : int
      {
         return this.§!#X§;
      }
      
      public function set §!"c§(param1:int) : void
      {
         this.§!#X§ = param1;
      }
   }
}
