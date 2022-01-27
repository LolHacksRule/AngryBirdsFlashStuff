package §3R§
{
   import §4"@§.§6p§;
   import §4"@§.DisplayObject;
   import §4"@§.Sprite;
   import §7!C§.§8!w§;
   
   public class §case§ extends Sprite
   {
       
      
      protected var §9+§:Sprite;
      
      protected var §6C§:DisplayObject;
      
      protected var §]^§:Sprite;
      
      public function §case§()
      {
         super();
         addChild(this.§]^§ = new Sprite());
         this.§]^§.addChild(this.§9+§ = new Sprite());
         this.§6C§ = new §6p§(2,2,0);
         this.§6C§.width = §8!w§.§6c§;
         this.§6C§.height = §8!w§.§9"-§;
         addChild(this.§6C§);
         this.§6C§.alpha = 0.5;
      }
      
      public function get §"#§() : Sprite
      {
         return this.§9+§;
      }
      
      public function get §#!g§() : DisplayObject
      {
         return this.§6C§;
      }
      
      public function get §'W§() : Sprite
      {
         return this.§]^§;
      }
      
      public function §&4§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§6C§.width / this.§6C§.height;
         this.§6C§.width = param1 + 600 / _loc3_;
         this.§6C§.height = param2 + 600 / _loc3_;
      }
   }
}
