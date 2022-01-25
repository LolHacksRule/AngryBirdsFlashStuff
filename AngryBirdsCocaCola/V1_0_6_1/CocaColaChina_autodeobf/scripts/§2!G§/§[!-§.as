package §2!G§
{
   import §;A§.§7!K§;
   import §<!$§.§6f§;
   import §<!$§.DisplayObject;
   import §<!$§.Sprite;
   
   public class §[!-§ extends Sprite
   {
       
      
      protected var §&w§:Sprite;
      
      protected var §83§:DisplayObject;
      
      protected var §<T§:Sprite;
      
      public function §[!-§()
      {
         super();
         addChild(this.§<T§ = new Sprite());
         this.§<T§.addChild(this.§&w§ = new Sprite());
         this.§83§ = new §6f§(2,2,0);
         this.§83§.width = §7!K§.§'[§;
         this.§83§.height = §7!K§.§+!U§;
         addChild(this.§83§);
         this.§83§.alpha = 0.5;
      }
      
      public function get §&z§() : Sprite
      {
         return this.§&w§;
      }
      
      public function get §[!^§() : DisplayObject
      {
         return this.§83§;
      }
      
      public function get §99§() : Sprite
      {
         return this.§<T§;
      }
      
      public function §`!P§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§83§.width / this.§83§.height;
         this.§83§.width = param1 + 600 / _loc3_;
         this.§83§.height = param2 + 600 / _loc3_;
      }
   }
}
