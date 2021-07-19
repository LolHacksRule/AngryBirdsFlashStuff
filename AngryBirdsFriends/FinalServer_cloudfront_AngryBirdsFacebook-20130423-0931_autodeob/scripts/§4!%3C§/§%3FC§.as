package §4!<§
{
   import §'!6§.§5T§;
   import §'!6§.DisplayObject;
   import §'!6§.Sprite;
   import §@!"§.§?l§;
   
   public class §?C§ extends Sprite
   {
       
      
      protected var §0!A§:Sprite;
      
      protected var §%"=§:DisplayObject;
      
      protected var §'!2§:Sprite;
      
      public function §?C§()
      {
         super();
         addChild(this.§'!2§ = new Sprite());
         this.§'!2§.addChild(this.§0!A§ = new Sprite());
         this.§%"=§ = new §5T§(2,2,0);
         this.§%"=§.width = §?l§.§7!H§;
         this.§%"=§.height = §?l§.§<"P§;
         addChild(this.§%"=§);
         this.§%"=§.alpha = 0.5;
      }
      
      public function get §&!6§() : Sprite
      {
         return this.§0!A§;
      }
      
      public function get §4+§() : DisplayObject
      {
         return this.§%"=§;
      }
      
      public function get §0"?§() : Sprite
      {
         return this.§'!2§;
      }
      
      public function §@"?§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§%"=§.width / this.§%"=§.height;
         this.§%"=§.width = param1 + 600 / _loc3_;
         this.§%"=§.height = param2 + 600 / _loc3_;
      }
   }
}
