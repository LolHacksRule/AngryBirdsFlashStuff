package §'!j§
{
   import §!$;§.§;"#§;
   import §!$;§.Event;
   import §&!D§.BitmapFont;
   import §&!D§.TextField;
   import §,#=§.§4A§;
   import §,#=§.§6G§;
   import §6#H§.§+!'§;
   import §6#H§.§,"$§;
   import §6#H§.Sprite;
   import flash.system.System;
   
   class §@#7§ extends Sprite
   {
       
      
      private var §#[§:§,"$§;
      
      private var §2"<§:TextField;
      
      private var §^!1§:int = 0;
      
      private var §4#&§:int = 0;
      
      private var §6!;§:Number = 0;
      
      function §@#7§()
      {
         super();
         this.§#[§ = new §,"$§(50,25,0);
         this.§2"<§ = new TextField(48,25,"",BitmapFont.§!!-§,BitmapFont.§-q§,16777215);
         this.§2"<§.x = 2;
         this.§2"<§.hAlign = §6G§.LEFT;
         this.§2"<§.vAlign = §4A§.TOP;
         addChild(this.§#[§);
         addChild(this.§2"<§);
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         this.§44§(0,this.§<q§(),0);
         blendMode = §+!'§.NONE;
      }
      
      private function §44§(param1:Number, param2:Number, param3:int) : void
      {
         this.§2"<§.text = "FPS: " + param1.toFixed(param1 < 100 ? 1 : 0) + "\nMEM: " + param2.toFixed(param2 < 100 ? 1 : 0) + "\nDRW: " + param3;
      }
      
      private function §<q§() : Number
      {
         return System.totalMemory * 9.54e-7;
      }
      
      private function onEnterFrame(param1:§;"#§) : void
      {
         this.§6!;§ += param1.§-!z§;
         ++this.§^!1§;
         if(this.§6!;§ > 1)
         {
            this.§44§(this.§^!1§ / this.§6!;§,this.§<q§(),this.§4#&§ - 2);
            this.§^!1§ = this.§6!;§ = 0;
         }
      }
      
      public function get §6#n§() : int
      {
         return this.§4#&§;
      }
      
      public function set §6#n§(param1:int) : void
      {
         this.§4#&§ = param1;
      }
   }
}
