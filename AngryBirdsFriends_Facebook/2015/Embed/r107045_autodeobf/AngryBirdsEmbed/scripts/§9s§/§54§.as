package §9s§
{
   import §#!@§.§?h§;
   import §#!@§.DisplayObject;
   import §#!@§.Sprite;
   import §6h§.§[!4§;
   
   public class §54§ extends Sprite
   {
       
      
      protected var §`!'§:Sprite;
      
      protected var §`B§:DisplayObject;
      
      protected var §[b§:Sprite;
      
      public function §54§()
      {
         super();
         addChild(this.§[b§ = new Sprite());
         this.§[b§.addChild(this.§`!'§ = new Sprite());
         this.§`B§ = new §?h§(2,2,0);
         this.§`B§.width = §[!4§.§71§;
         this.§`B§.height = §[!4§.§=6§;
         addChild(this.§`B§);
         this.§`B§.alpha = 0.5;
      }
      
      public function get §0!4§() : Sprite
      {
         return this.§`!'§;
      }
      
      public function get §"x§() : DisplayObject
      {
         return this.§`B§;
      }
      
      public function get §7C§() : Sprite
      {
         return this.§[b§;
      }
      
      public function §>^§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§`B§.width / this.§`B§.height;
         this.§`B§.width = param1 + 600 / _loc3_;
         this.§`B§.height = param2 + 600 / _loc3_;
      }
   }
}
