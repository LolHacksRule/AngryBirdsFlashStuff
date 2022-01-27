package §%"§
{
   import §<!F§.§5!+§;
   import §<!N§.DisplayObject;
   import §<!N§.Sprite;
   import §<!N§.§^3§;
   
   public class §3!+§ extends Sprite
   {
       
      
      protected var §^,§:Sprite;
      
      protected var § b§:DisplayObject;
      
      protected var §!!K§:Sprite;
      
      public function §3!+§()
      {
         super();
         addChild(this.§!!K§ = new Sprite());
         this.§!!K§.addChild(this.§^,§ = new Sprite());
         this.§ b§ = new §^3§(2,2,0);
         this.§ b§.width = §5!+§.§[!0§;
         this.§ b§.height = §5!+§.§>!8§;
         addChild(this.§ b§);
         this.§ b§.alpha = 0.5;
      }
      
      public function get §91§() : Sprite
      {
         return this.§^,§;
      }
      
      public function get §!y§() : DisplayObject
      {
         return this.§ b§;
      }
      
      public function get §1=§() : Sprite
      {
         return this.§!!K§;
      }
      
      public function §3!N§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§ b§.width / this.§ b§.height;
         this.§ b§.width = param1 + 600 / _loc3_;
         this.§ b§.height = param2 + 600 / _loc3_;
      }
   }
}
