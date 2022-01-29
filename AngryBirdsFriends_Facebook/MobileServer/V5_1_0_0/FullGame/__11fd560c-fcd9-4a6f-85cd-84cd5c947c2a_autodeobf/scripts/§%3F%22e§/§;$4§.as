package §?"e§
{
   import § "x§.BitmapFont;
   import § "x§.TextField;
   import §5!D§.§&!$§;
   import §5!D§.§=!G§;
   import §5#m§.§?!"§;
   import §5#m§.Event;
   import §^"S§.§'#E§;
   import §^"S§.§>$7§;
   import §^"S§.Sprite;
   import flash.system.System;
   
   class §;$4§ extends Sprite
   {
       
      
      private var §3!X§:§'#E§;
      
      private var §4!"§:TextField;
      
      private var §+"8§:int = 0;
      
      private var §6#M§:int = 0;
      
      private var §+!`§:Number = 0;
      
      function §;$4§()
      {
         super();
         this.§3!X§ = new §'#E§(50,25,0);
         this.§4!"§ = new TextField(48,25,"",BitmapFont.§=!a§,BitmapFont.§"!Y§,16777215);
         this.§4!"§.x = 2;
         this.§4!"§.hAlign = §=!G§.LEFT;
         this.§4!"§.vAlign = §&!$§.TOP;
         addChild(this.§3!X§);
         addChild(this.§4!"§);
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         this.§"9§(0,this.§"#e§(),0);
         blendMode = §>$7§.NONE;
      }
      
      private function §"9§(param1:Number, param2:Number, param3:int) : void
      {
         this.§4!"§.text = "FPS: " + param1.toFixed(param1 < 100 ? 1 : 0) + "\nMEM: " + param2.toFixed(param2 < 100 ? 1 : 0) + "\nDRW: " + param3;
      }
      
      private function §"#e§() : Number
      {
         return System.totalMemory * 9.54e-7;
      }
      
      private function onEnterFrame(param1:§?!"§) : void
      {
         this.§+!`§ += param1.§["-§;
         ++this.§+"8§;
         if(this.§+!`§ > 1)
         {
            this.§"9§(this.§+"8§ / this.§+!`§,this.§"#e§(),this.§6#M§ - 2);
            this.§+"8§ = this.§+!`§ = 0;
         }
      }
      
      public function get §<D§() : int
      {
         return this.§6#M§;
      }
      
      public function set §<D§(param1:int) : void
      {
         this.§6#M§ = param1;
      }
   }
}
