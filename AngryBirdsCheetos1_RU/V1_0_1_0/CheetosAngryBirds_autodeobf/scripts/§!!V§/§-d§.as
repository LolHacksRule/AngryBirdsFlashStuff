package §!!V§
{
   import §"!S§.§"_§;
   import §&!5§.§2G§;
   import §&!5§.DisplayObject;
   import §&!5§.Sprite;
   
   public class §-d§ extends Sprite
   {
       
      
      protected var §6!R§:Sprite;
      
      protected var §%8§:DisplayObject;
      
      protected var §^n§:Sprite;
      
      public function §-d§()
      {
         super();
         addChild(this.§^n§ = new Sprite());
         this.§^n§.addChild(this.§6!R§ = new Sprite());
         this.§%8§ = new §2G§(2,2,0);
         this.§%8§.width = §"_§.§]!`§;
         this.§%8§.height = §"_§.§-$§;
         addChild(this.§%8§);
         this.§%8§.alpha = 0.5;
      }
      
      public function get §]i§() : Sprite
      {
         return this.§6!R§;
      }
      
      public function get §3!A§() : DisplayObject
      {
         return this.§%8§;
      }
      
      public function get §9!B§() : Sprite
      {
         return this.§^n§;
      }
      
      public function §!I§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§%8§.width / this.§%8§.height;
         this.§%8§.width = param1 + 600 / _loc3_;
         this.§%8§.height = param2 + 600 / _loc3_;
      }
   }
}
