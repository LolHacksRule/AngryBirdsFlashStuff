package §3,§
{
   import §+I§.§9!%§;
   import §]&§.DisplayObject;
   import §]&§.Sprite;
   import §]&§.§[T§;
   
   public class §"z§ extends Sprite
   {
       
      
      protected var §!J§:Sprite;
      
      protected var §3"2§:DisplayObject;
      
      protected var §0!U§:Sprite;
      
      public function §"z§()
      {
         super();
         addChild(this.§0!U§ = new Sprite());
         this.§0!U§.addChild(this.§!J§ = new Sprite());
         this.§3"2§ = new §[T§(2,2,0);
         this.§3"2§.width = §9!%§.§^3§;
         this.§3"2§.height = §9!%§.§&"$§;
         addChild(this.§3"2§);
         this.§3"2§.alpha = 0.5;
      }
      
      public function get §;!c§() : Sprite
      {
         return this.§!J§;
      }
      
      public function get §9!A§() : DisplayObject
      {
         return this.§3"2§;
      }
      
      public function get §5!2§() : Sprite
      {
         return this.§0!U§;
      }
      
      public function §>"'§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§3"2§.width / this.§3"2§.height;
         this.§3"2§.width = param1 + 600 / _loc3_;
         this.§3"2§.height = param2 + 600 / _loc3_;
      }
   }
}
