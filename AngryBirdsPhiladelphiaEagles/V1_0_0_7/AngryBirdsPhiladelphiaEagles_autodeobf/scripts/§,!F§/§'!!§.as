package §,!F§
{
   import §"^§.§9=§;
   import §4G§.§5T§;
   import §4G§.DisplayObject;
   import §4G§.Sprite;
   
   public class §'!!§ extends Sprite
   {
       
      
      protected var §^'§:Sprite;
      
      protected var §9!0§:DisplayObject;
      
      protected var § =§:Sprite;
      
      public function §'!!§()
      {
         super();
         addChild(this.§ =§ = new Sprite());
         this.§ =§.addChild(this.§^'§ = new Sprite());
         this.§9!0§ = new §5T§(2,2,0);
         this.§9!0§.width = §9=§.§^&§;
         this.§9!0§.height = §9=§.§"#§;
         addChild(this.§9!0§);
         this.§9!0§.alpha = 0.5;
      }
      
      public function get §%i§() : Sprite
      {
         return this.§^'§;
      }
      
      public function get §?f§() : DisplayObject
      {
         return this.§9!0§;
      }
      
      public function get §4<§() : Sprite
      {
         return this.§ =§;
      }
      
      public function §]7§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§9!0§.width / this.§9!0§.height;
         this.§9!0§.width = param1 + 600 / _loc3_;
         this.§9!0§.height = param2 + 600 / _loc3_;
      }
   }
}
