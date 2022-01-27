package §4!-§
{
   import §&b§.§[F§;
   import §86§.§=u§;
   import §86§.DisplayObject;
   import §86§.Sprite;
   
   public class §&m§ extends Sprite
   {
       
      
      protected var §6%§:Sprite;
      
      protected var §%M§:DisplayObject;
      
      protected var §^Q§:Sprite;
      
      public function §&m§()
      {
         super();
         addChild(this.§^Q§ = new Sprite());
         this.§^Q§.addChild(this.§6%§ = new Sprite());
         this.§%M§ = new §=u§(2,2,0);
         this.§%M§.width = §[F§.§[!1§;
         this.§%M§.height = §[F§.§87§;
         addChild(this.§%M§);
         this.§%M§.alpha = 0.5;
      }
      
      public function get §&!,§() : Sprite
      {
         return this.§6%§;
      }
      
      public function get §^[§() : DisplayObject
      {
         return this.§%M§;
      }
      
      public function get §<!6§() : Sprite
      {
         return this.§^Q§;
      }
      
      public function §0!9§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§%M§.width / this.§%M§.height;
         this.§%M§.width = param1 + 600 / _loc3_;
         this.§%M§.height = param2 + 600 / _loc3_;
      }
   }
}
