package §9T§
{
   import § N§.§6!O§;
   import § N§.DisplayObject;
   import § N§.Sprite;
   import §8!B§.§#! §;
   
   public class §@A§ extends Sprite
   {
       
      
      protected var §5'§:Sprite;
      
      protected var §`&§:DisplayObject;
      
      protected var §^!K§:Sprite;
      
      public function §@A§()
      {
         super();
         addChild(this.§^!K§ = new Sprite());
         this.§^!K§.addChild(this.§5'§ = new Sprite());
         this.§`&§ = new §6!O§(2,2,0);
         this.§`&§.width = §#! §.§-p§;
         this.§`&§.height = §#! §.§5!9§;
         addChild(this.§`&§);
         this.§`&§.alpha = 0.5;
      }
      
      public function get §'t§() : Sprite
      {
         return this.§5'§;
      }
      
      public function get §'Z§() : DisplayObject
      {
         return this.§`&§;
      }
      
      public function get §1!$§() : Sprite
      {
         return this.§^!K§;
      }
      
      public function §;!B§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§`&§.width / this.§`&§.height;
         this.§`&§.width = param1 + 600 / _loc3_;
         this.§`&§.height = param2 + 600 / _loc3_;
      }
   }
}
