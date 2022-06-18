package §`i§
{
   import §>%§.§]3§;
   import §]!6§.§8D§;
   import §]!6§.DisplayObject;
   import §]!6§.Sprite;
   
   public class §%6§ extends Sprite
   {
       
      
      protected var §6r§:Sprite;
      
      protected var §9!E§:DisplayObject;
      
      protected var §`C§:Sprite;
      
      public function §%6§()
      {
         super();
         addChild(this.§`C§ = new Sprite());
         this.§`C§.addChild(this.§6r§ = new Sprite());
         this.§9!E§ = new §8D§(2,2,0);
         this.§9!E§.width = §]3§.§1!D§;
         this.§9!E§.height = §]3§.§#A§;
         addChild(this.§9!E§);
         this.§9!E§.alpha = 0.5;
      }
      
      public function get §@5§() : Sprite
      {
         return this.§6r§;
      }
      
      public function get §'I§() : DisplayObject
      {
         return this.§9!E§;
      }
      
      public function get §2w§() : Sprite
      {
         return this.§`C§;
      }
      
      public function §9g§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§9!E§.width / this.§9!E§.height;
         this.§9!E§.width = param1 + 600 / _loc3_;
         this.§9!E§.height = param2 + 600 / _loc3_;
      }
   }
}
