package §'a§
{
   import §5x§.§3"§;
   import §5x§.DisplayObject;
   import §5x§.Sprite;
   import §9!W§.§=!@§;
   
   public class §3!f§ extends Sprite
   {
       
      
      protected var §!!K§:Sprite;
      
      protected var § !?§:DisplayObject;
      
      protected var §1h§:Sprite;
      
      public function §3!f§()
      {
         super();
         addChild(this.§1h§ = new Sprite());
         this.§1h§.addChild(this.§!!K§ = new Sprite());
         this.§ !?§ = new §3"§(2,2,0);
         this.§ !?§.width = §=!@§.§&"§;
         this.§ !?§.height = §=!@§.§+! §;
         addChild(this.§ !?§);
         this.§ !?§.alpha = 0.5;
      }
      
      public function get §!!d§() : Sprite
      {
         return this.§!!K§;
      }
      
      public function get §1e§() : DisplayObject
      {
         return this.§ !?§;
      }
      
      public function get §=z§() : Sprite
      {
         return this.§1h§;
      }
      
      public function §"!o§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§ !?§.width / this.§ !?§.height;
         this.§ !?§.width = param1 + 600 / _loc3_;
         this.§ !?§.height = param2 + 600 / _loc3_;
      }
   }
}
