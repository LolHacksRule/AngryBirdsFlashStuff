package §&F§
{
   import §&!9§.§7!D§;
   import §&!9§.DisplayObject;
   import §&!9§.Sprite;
   import §0!b§.§#!=§;
   
   public class §!?§ extends Sprite
   {
       
      
      protected var §2`§:Sprite;
      
      protected var §%! §:DisplayObject;
      
      protected var §5E§:Sprite;
      
      public function §!?§()
      {
         super();
         addChild(this.§5E§ = new Sprite());
         this.§5E§.addChild(this.§2`§ = new Sprite());
         this.§%! § = new §7!D§(2,2,0);
         this.§%! §.width = §#!=§.§[!]§;
         this.§%! §.height = §#!=§.§?!E§;
         addChild(this.§%! §);
         this.§%! §.alpha = 0.5;
      }
      
      public function get §8!7§() : Sprite
      {
         return this.§2`§;
      }
      
      public function get §@!§() : DisplayObject
      {
         return this.§%! §;
      }
      
      public function get set() : Sprite
      {
         return this.§5E§;
      }
      
      public function §&Y§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§%! §.width / this.§%! §.height;
         this.§%! §.width = param1 + 600 / _loc3_;
         this.§%! §.height = param2 + 600 / _loc3_;
      }
   }
}
