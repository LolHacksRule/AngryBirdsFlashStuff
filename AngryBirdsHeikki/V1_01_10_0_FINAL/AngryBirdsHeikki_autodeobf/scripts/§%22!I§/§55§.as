package §"!I§
{
   import §2Y§.§7?§;
   import §2Y§.DisplayObject;
   import §2Y§.Sprite;
   import §9b§.§"!S§;
   
   public class §55§ extends Sprite
   {
       
      
      protected var §3b§:Sprite;
      
      protected var §1!c§:DisplayObject;
      
      protected var §5!]§:Sprite;
      
      public function §55§()
      {
         super();
         addChild(this.§5!]§ = new Sprite());
         this.§5!]§.addChild(this.§3b§ = new Sprite());
         this.§1!c§ = new §7?§(2,2,0);
         this.§1!c§.width = §"!S§.§3i§;
         this.§1!c§.height = §"!S§.§!!d§;
         addChild(this.§1!c§);
         this.§1!c§.alpha = 0.5;
      }
      
      public function get §2]§() : Sprite
      {
         return this.§3b§;
      }
      
      public function get §!C§() : DisplayObject
      {
         return this.§1!c§;
      }
      
      public function get §[$§() : Sprite
      {
         return this.§5!]§;
      }
      
      public function §@B§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§1!c§.width / this.§1!c§.height;
         this.§1!c§.width = param1 + 600 / _loc3_;
         this.§1!c§.height = param2 + 600 / _loc3_;
      }
   }
}
