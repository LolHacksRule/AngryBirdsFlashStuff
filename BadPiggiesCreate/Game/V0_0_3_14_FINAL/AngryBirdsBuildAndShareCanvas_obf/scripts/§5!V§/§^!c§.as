package §5!V§
{
   import §%c§.§=!X§;
   import §default§.DisplayObject;
   import §default§.Sprite;
   import §default§.§^$§;
   
   public class §^!c§ extends Sprite
   {
       
      
      protected var §`!5§:Sprite;
      
      protected var §@"-§:DisplayObject;
      
      protected var §0W§:Sprite;
      
      public function §^!c§()
      {
         super();
         addChild(this.§0W§ = new Sprite());
         this.§0W§.addChild(this.§`!5§ = new Sprite());
         this.§@"-§ = new §^$§(2,2,0);
         this.§@"-§.width = §=!X§.§^!N§;
         this.§@"-§.height = §=!X§.§5!P§;
         addChild(this.§@"-§);
         this.§@"-§.alpha = 0.5;
      }
      
      public function get §&e§() : Sprite
      {
         return this.§`!5§;
      }
      
      public function get §-"3§() : DisplayObject
      {
         return this.§@"-§;
      }
      
      public function get §8<§() : Sprite
      {
         return this.§0W§;
      }
      
      public function §""5§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§@"-§.width / this.§@"-§.height;
         this.§@"-§.width = param1 + 600 / _loc3_;
         this.§@"-§.height = param2 + 600 / _loc3_;
      }
   }
}
