package §?b§
{
   import §5H§.§[k§;
   import §9W§.§3g§;
   import §9W§.DisplayObject;
   import §9W§.Sprite;
   
   public class §32§ extends Sprite
   {
       
      
      protected var §%9§:Sprite;
      
      protected var §3`§:DisplayObject;
      
      protected var §17§:Sprite;
      
      public function §32§()
      {
         super();
         addChild(this.§17§ = new Sprite());
         this.§17§.addChild(this.§%9§ = new Sprite());
         this.§3`§ = new §3g§(2,2,0);
         this.§3`§.width = §[k§.§>§;
         this.§3`§.height = §[k§.§%i§;
         addChild(this.§3`§);
         this.§3`§.alpha = 0.5;
      }
      
      public function get §>s§() : Sprite
      {
         return this.§%9§;
      }
      
      public function get §"`§() : DisplayObject
      {
         return this.§3`§;
      }
      
      public function get §5!;§() : Sprite
      {
         return this.§17§;
      }
      
      public function §;s§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§3`§.width / this.§3`§.height;
         this.§3`§.width = param1 + 600 / _loc3_;
         this.§3`§.height = param2 + 600 / _loc3_;
      }
   }
}
