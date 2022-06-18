package §#;§
{
   import §;q§.§-!>§;
   import §;q§.DisplayObject;
   import §;q§.Sprite;
   import §`t§.§^?§;
   
   public class §#O§ extends Sprite
   {
       
      
      protected var §+1§:Sprite;
      
      protected var §`W§:DisplayObject;
      
      protected var §]u§:Sprite;
      
      public function §#O§()
      {
         super();
         addChild(this.§]u§ = new Sprite());
         this.§]u§.addChild(this.§+1§ = new Sprite());
         this.§`W§ = new §-!>§(2,2,0);
         this.§`W§.width = §^?§.§7i§;
         this.§`W§.height = §^?§.§3[§;
         addChild(this.§`W§);
         this.§`W§.alpha = 0.5;
      }
      
      public function get §>g§() : Sprite
      {
         return this.§+1§;
      }
      
      public function get §#!H§() : DisplayObject
      {
         return this.§`W§;
      }
      
      public function get §?!A§() : Sprite
      {
         return this.§]u§;
      }
      
      public function §5P§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§`W§.width / this.§`W§.height;
         this.§`W§.width = param1 + 600 / _loc3_;
         this.§`W§.height = param2 + 600 / _loc3_;
      }
   }
}
