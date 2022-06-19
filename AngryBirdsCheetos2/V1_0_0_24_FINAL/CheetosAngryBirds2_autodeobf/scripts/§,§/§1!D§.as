package §,§
{
   import §^a§.§ !'§;
   import §^a§.DisplayObject;
   import §^a§.Sprite;
   import §`h§.§@!Z§;
   
   public class §1!D§ extends Sprite
   {
       
      
      protected var §0!C§:Sprite;
      
      protected var §"'§:DisplayObject;
      
      protected var §"!2§:Sprite;
      
      public function §1!D§()
      {
         super();
         addChild(this.§"!2§ = new Sprite());
         this.§"!2§.addChild(this.§0!C§ = new Sprite());
         this.§"'§ = new § !'§(2,2,0);
         this.§"'§.width = §@!Z§.§?!L§;
         this.§"'§.height = §@!Z§.§"r§;
         addChild(this.§"'§);
         this.§"'§.alpha = 0.5;
      }
      
      public function get §%P§() : Sprite
      {
         return this.§0!C§;
      }
      
      public function get §,%§() : DisplayObject
      {
         return this.§"'§;
      }
      
      public function get §<!#§() : Sprite
      {
         return this.§"!2§;
      }
      
      public function §%x§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§"'§.width / this.§"'§.height;
         this.§"'§.width = param1 + 600 / _loc3_;
         this.§"'§.height = param2 + 600 / _loc3_;
      }
   }
}
