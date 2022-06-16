package §`!4§
{
   import §90§.§0!'§;
   import §90§.DisplayObject;
   import §90§.Sprite;
   import §>!O§.§[+§;
   
   public class §-9§ extends Sprite
   {
       
      
      protected var §`!A§:Sprite;
      
      protected var §]q§:DisplayObject;
      
      protected var §;k§:Sprite;
      
      public function §-9§()
      {
         super();
         addChild(this.§;k§ = new Sprite());
         this.§;k§.addChild(this.§`!A§ = new Sprite());
         this.§]q§ = new §0!'§(2,2,0);
         this.§]q§.width = §[+§.§'q§;
         this.§]q§.height = §[+§.§0!-§;
         addChild(this.§]q§);
         this.§]q§.alpha = 0.5;
      }
      
      public function get §4q§() : Sprite
      {
         return this.§`!A§;
      }
      
      public function get §,U§() : DisplayObject
      {
         return this.§]q§;
      }
      
      public function get §2^§() : Sprite
      {
         return this.§;k§;
      }
      
      public function §[@§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§]q§.width / this.§]q§.height;
         this.§]q§.width = param1 + 600 / _loc3_;
         this.§]q§.height = param2 + 600 / _loc3_;
      }
   }
}
