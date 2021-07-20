package §]!@§
{
   import §#!,§.§6!Y§;
   import §#!,§.DisplayObject;
   import §#!,§.Sprite;
   import §?!Y§.§`S§;
   
   public class §9?§ extends Sprite
   {
       
      
      protected var §1!`§:Sprite;
      
      protected var §<!R§:DisplayObject;
      
      protected var §@!@§:Sprite;
      
      public function §9?§()
      {
         super();
         addChild(this.§@!@§ = new Sprite());
         this.§@!@§.addChild(this.§1!`§ = new Sprite());
         this.§<!R§ = new §6!Y§(2,2,0);
         this.§<!R§.width = §`S§.SCREEN_WIDTH;
         this.§<!R§.height = §`S§.SCREEN_HEIGHT;
         addChild(this.§<!R§);
         this.§<!R§.alpha = 0.5;
      }
      
      public function get §#q§() : Sprite
      {
         return this.§1!`§;
      }
      
      public function get §5e§() : DisplayObject
      {
         return this.§<!R§;
      }
      
      public function get §<J§() : Sprite
      {
         return this.§@!@§;
      }
      
      public function §]!b§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§<!R§.width / this.§<!R§.height;
         this.§<!R§.width = param1 + 600 / _loc3_;
         this.§<!R§.height = param2 + 600 / _loc3_;
      }
   }
}
