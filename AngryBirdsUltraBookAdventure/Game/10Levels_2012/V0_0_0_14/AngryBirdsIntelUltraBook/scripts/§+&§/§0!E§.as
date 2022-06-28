package §+&§
{
   import §5i§.§4!]§;
   import §9E§.§1!w§;
   import §9E§.DisplayObject;
   import §9E§.Sprite;
   
   public class §0!E§ extends Sprite
   {
       
      
      protected var §4!Z§:Sprite;
      
      protected var §^%§:DisplayObject;
      
      protected var §9!E§:Sprite;
      
      public function §0!E§()
      {
         super();
         addChild(this.§9!E§ = new Sprite());
         this.§9!E§.addChild(this.§4!Z§ = new Sprite());
         this.§^%§ = new §1!w§(2,2,0);
         this.§^%§.width = §4!]§.§]m§;
         this.§^%§.height = §4!]§.§0N§;
         addChild(this.§^%§);
         this.§^%§.alpha = 0.5;
      }
      
      public function get §,!+§() : Sprite
      {
         return this.§4!Z§;
      }
      
      public function get §6"§() : DisplayObject
      {
         return this.§^%§;
      }
      
      public function get §>!6§() : Sprite
      {
         return this.§9!E§;
      }
      
      public function §'C§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§^%§.width / this.§^%§.height;
         this.§^%§.width = param1 + 600 / _loc3_;
         this.§^%§.height = param2 + 600 / _loc3_;
      }
   }
}
