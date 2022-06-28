package §2!H§
{
   import § D§.§]!B§;
   import §6!7§.§3x§;
   import §6!7§.DisplayObject;
   import §6!7§.Sprite;
   
   public class §'!I§ extends Sprite
   {
       
      
      protected var §1c§:Sprite;
      
      protected var §26§:DisplayObject;
      
      protected var §'!k§:Sprite;
      
      public function §'!I§()
      {
         super();
         addChild(this.§'!k§ = new Sprite());
         this.§'!k§.addChild(this.§1c§ = new Sprite());
         this.§26§ = new §3x§(2,2,0);
         this.§26§.width = §]!B§.SCREEN_WIDTH;
         this.§26§.height = §]!B§.SCREEN_HEIGHT;
         addChild(this.§26§);
         this.§26§.alpha = 0.5;
      }
      
      public function get §`!K§() : Sprite
      {
         return this.§1c§;
      }
      
      public function get §8,§() : DisplayObject
      {
         return this.§26§;
      }
      
      public function get §0x§() : Sprite
      {
         return this.§'!k§;
      }
      
      public function §;0§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§26§.width / this.§26§.height;
         this.§26§.width = param1 + 600 / _loc3_;
         this.§26§.height = param2 + 600 / _loc3_;
      }
   }
}
