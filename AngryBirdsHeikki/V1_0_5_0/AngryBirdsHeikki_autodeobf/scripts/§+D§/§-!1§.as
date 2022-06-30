package §+D§
{
   import §3-§.§1L§;
   import §[=§.§=!I§;
   import §[=§.DisplayObject;
   import §[=§.Sprite;
   
   public class §-!1§ extends Sprite
   {
       
      
      protected var §,H§:Sprite;
      
      protected var §#!U§:DisplayObject;
      
      protected var §7f§:Sprite;
      
      public function §-!1§()
      {
         super();
         addChild(this.§7f§ = new Sprite());
         this.§7f§.addChild(this.§,H§ = new Sprite());
         this.§#!U§ = new §=!I§(2,2,0);
         this.§#!U§.width = §1L§.§6w§;
         this.§#!U§.height = §1L§.§[S§;
         addChild(this.§#!U§);
         this.§#!U§.alpha = 0.5;
      }
      
      public function get §!a§() : Sprite
      {
         return this.§,H§;
      }
      
      public function get §<u§() : DisplayObject
      {
         return this.§#!U§;
      }
      
      public function get §>!7§() : Sprite
      {
         return this.§7f§;
      }
      
      public function §6!c§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§#!U§.width / this.§#!U§.height;
         this.§#!U§.width = param1 + 600 / _loc3_;
         this.§#!U§.height = param2 + 600 / _loc3_;
      }
   }
}
