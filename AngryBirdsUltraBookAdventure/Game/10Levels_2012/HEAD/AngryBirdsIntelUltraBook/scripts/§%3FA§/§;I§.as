package §?A§
{
   import §-!>§.§4!T§;
   import §1!&§.§!!9§;
   import §1!&§.DisplayObject;
   import §1!&§.Sprite;
   
   public class §;I§ extends Sprite
   {
       
      
      protected var §<!,§:Sprite;
      
      protected var §'!b§:DisplayObject;
      
      protected var §7!H§:Sprite;
      
      public function §;I§()
      {
         super();
         addChild(this.§7!H§ = new Sprite());
         this.§7!H§.addChild(this.§<!,§ = new Sprite());
         this.§'!b§ = new §!!9§(2,2,0);
         this.§'!b§.width = §4!T§.SCREEN_WIDTH;
         this.§'!b§.height = §4!T§.SCREEN_HEIGHT;
         addChild(this.§'!b§);
         this.§'!b§.alpha = 0.5;
      }
      
      public function get §#!B§() : Sprite
      {
         return this.§<!,§;
      }
      
      public function get §>L§() : DisplayObject
      {
         return this.§'!b§;
      }
      
      public function get §"!$§() : Sprite
      {
         return this.§7!H§;
      }
      
      public function §1'§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§'!b§.width / this.§'!b§.height;
         this.§'!b§.width = param1 + 600 / _loc3_;
         this.§'!b§.height = param2 + 600 / _loc3_;
      }
   }
}
