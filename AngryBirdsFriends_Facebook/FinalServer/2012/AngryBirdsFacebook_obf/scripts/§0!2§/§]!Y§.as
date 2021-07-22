package §0!2§
{
   import §5!G§.§&2§;
   import §]!v§.§+!`§;
   import §]!v§.DisplayObject;
   import §]!v§.Sprite;
   
   public class §]!Y§ extends Sprite
   {
       
      
      protected var §9!v§:Sprite;
      
      protected var §8">§:DisplayObject;
      
      protected var §,"$§:Sprite;
      
      public function §]!Y§()
      {
         super();
         addChild(this.§,"$§ = new Sprite());
         this.§,"$§.addChild(this.§9!v§ = new Sprite());
         this.§8">§ = new §+!`§(2,2,0);
         this.§8">§.width = §&2§.§5!f§;
         this.§8">§.height = §&2§.§#!h§;
         addChild(this.§8">§);
         this.§8">§.alpha = 0.5;
      }
      
      public function get §1!q§() : Sprite
      {
         return this.§9!v§;
      }
      
      public function get §5"%§() : DisplayObject
      {
         return this.§8">§;
      }
      
      public function get §53§() : Sprite
      {
         return this.§,"$§;
      }
      
      public function §;X§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§8">§.width / this.§8">§.height;
         this.§8">§.width = param1 + 600 / _loc3_;
         this.§8">§.height = param2 + 600 / _loc3_;
      }
   }
}
