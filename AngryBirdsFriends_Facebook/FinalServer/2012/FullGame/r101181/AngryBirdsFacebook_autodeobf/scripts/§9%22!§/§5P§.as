package §9"!§
{
   import §1!$§.§!"?§;
   import §1!$§.DisplayObject;
   import §1!$§.Sprite;
   import §]!A§.;
   
   public class §5P§ extends Sprite
   {
       
      
      protected var §9Y§:Sprite;
      
      protected var §^w§:DisplayObject;
      
      protected var §27§:Sprite;
      
      public function §5P§()
      {
         super();
         addChild(this.§27§ = new Sprite());
         this.§27§.addChild(this.§9Y§ = new Sprite());
         this.§^w§ = new §!"?§(2,2,0);
         this.§^w§.width = §#6§.§;H§;
         this.§^w§.height = §#6§.§+P§;
         addChild(this.§^w§);
         this.§^w§.alpha = 0.5;
      }
      
      public function get §!0§() : Sprite
      {
         return this.§9Y§;
      }
      
      public function get §>§() : DisplayObject
      {
         return this.§^w§;
      }
      
      public function get §]Y§() : Sprite
      {
         return this.§27§;
      }
      
      public function §!!U§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§^w§.width / this.§^w§.height;
         this.§^w§.width = param1 + 600 / _loc3_;
         this.§^w§.height = param2 + 600 / _loc3_;
      }
   }
}
