package §2_§
{
   import §7!B§.§;R§;
   import §7!B§.DisplayObject;
   import §7!B§.Sprite;
   import §>! §.§^!c§;
   
   public class §;!b§ extends Sprite
   {
       
      
      protected var §7[§:Sprite;
      
      protected var §?!s§:DisplayObject;
      
      protected var §,F§:Sprite;
      
      public function §;!b§()
      {
         super();
         addChild(this.§,F§ = new Sprite());
         this.§,F§.addChild(this.§7[§ = new Sprite());
         this.§?!s§ = new §;R§(2,2,0);
         this.§?!s§.width = §^!c§.§"!c§;
         this.§?!s§.height = §^!c§.§%g§;
         addChild(this.§?!s§);
         this.§?!s§.alpha = 0.5;
      }
      
      public function get § !J§() : Sprite
      {
         return this.§7[§;
      }
      
      public function get §5!,§() : DisplayObject
      {
         return this.§?!s§;
      }
      
      public function get §#"§() : Sprite
      {
         return this.§,F§;
      }
      
      public function §;!W§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§?!s§.width / this.§?!s§.height;
         this.§?!s§.width = param1 + 600 / _loc3_;
         this.§?!s§.height = param2 + 600 / _loc3_;
      }
   }
}
