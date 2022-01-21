package §@!b§
{
   import §2!g§.§2c§;
   import §2!g§.DisplayObject;
   import §2!g§.Sprite;
   import §2o§.§<H§;
   
   public class §^[§ extends Sprite
   {
       
      
      protected var §+N§:Sprite;
      
      protected var §2!l§:DisplayObject;
      
      protected var §0n§:Sprite;
      
      public function §^[§()
      {
         super();
         addChild(this.§0n§ = new Sprite());
         this.§0n§.addChild(this.§+N§ = new Sprite());
         this.§2!l§ = new §2c§(2,2,0);
         this.§2!l§.width = §<H§.§]A§;
         this.§2!l§.height = §<H§.§<!T§;
         addChild(this.§2!l§);
         this.§2!l§.alpha = 0.5;
      }
      
      public function get §#D§() : Sprite
      {
         return this.§+N§;
      }
      
      public function get §[Y§() : DisplayObject
      {
         return this.§2!l§;
      }
      
      public function get §>9§() : Sprite
      {
         return this.§0n§;
      }
      
      public function §3P§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§2!l§.width / this.§2!l§.height;
         this.§2!l§.width = param1 + 600 / _loc3_;
         this.§2!l§.height = param2 + 600 / _loc3_;
      }
   }
}
