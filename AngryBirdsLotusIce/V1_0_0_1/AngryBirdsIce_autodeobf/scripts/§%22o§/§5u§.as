package §"o§
{
   import §;j§.§8[§;
   import §@!=§.§4G§;
   import §@!=§.DisplayObject;
   import §@!=§.Sprite;
   
   public class §5u§ extends Sprite
   {
       
      
      protected var §'!A§:Sprite;
      
      protected var §4f§:DisplayObject;
      
      protected var §5B§:Sprite;
      
      public function §5u§()
      {
         super();
         addChild(this.§5B§ = new Sprite());
         this.§5B§.addChild(this.§'!A§ = new Sprite());
         this.§4f§ = new §4G§(2,2,0);
         this.§4f§.width = §8[§.§!!"§;
         this.§4f§.height = §8[§.§2G§;
         addChild(this.§4f§);
         this.§4f§.alpha = 0.5;
      }
      
      public function get §^y§() : Sprite
      {
         return this.§'!A§;
      }
      
      public function get §`8§() : DisplayObject
      {
         return this.§4f§;
      }
      
      public function get §!'§() : Sprite
      {
         return this.§5B§;
      }
      
      public function §,0§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§4f§.width / this.§4f§.height;
         this.§4f§.width = param1 + 600 / _loc3_;
         this.§4f§.height = param2 + 600 / _loc3_;
      }
   }
}
