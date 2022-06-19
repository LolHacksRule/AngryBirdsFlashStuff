package §!X§
{
   import §?m§.§7?§;
   import §]@§.§9!<§;
   import §]@§.DisplayObject;
   import §]@§.Sprite;
   
   public class §7]§ extends Sprite
   {
       
      
      protected var §4!0§:Sprite;
      
      protected var §]z§:DisplayObject;
      
      protected var §<b§:Sprite;
      
      public function §7]§()
      {
         super();
         addChild(this.§<b§ = new Sprite());
         this.§<b§.addChild(this.§4!0§ = new Sprite());
         this.§]z§ = new §9!<§(2,2,0);
         this.§]z§.width = §7?§.§;#§;
         this.§]z§.height = §7?§.§0h§;
         addChild(this.§]z§);
         this.§]z§.alpha = 0.5;
      }
      
      public function get §98§() : Sprite
      {
         return this.§4!0§;
      }
      
      public function get §%!X§() : DisplayObject
      {
         return this.§]z§;
      }
      
      public function get § !N§() : Sprite
      {
         return this.§<b§;
      }
      
      public function §try§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§]z§.width / this.§]z§.height;
         this.§]z§.width = param1 + 600 / _loc3_;
         this.§]z§.height = param2 + 600 / _loc3_;
      }
   }
}
