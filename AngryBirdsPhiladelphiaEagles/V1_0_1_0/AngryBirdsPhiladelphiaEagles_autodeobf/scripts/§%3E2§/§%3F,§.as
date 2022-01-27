package §>2§
{
   import §3H§.§!q§;
   import §3H§.DisplayObject;
   import §3H§.Sprite;
   import §@w§.§2G§;
   
   public class §?,§ extends Sprite
   {
       
      
      protected var § ! §:Sprite;
      
      protected var §]^§:DisplayObject;
      
      protected var §5H§:Sprite;
      
      public function §?,§()
      {
         super();
         addChild(this.§5H§ = new Sprite());
         this.§5H§.addChild(this.§ ! § = new Sprite());
         this.§]^§ = new §!q§(2,2,0);
         this.§]^§.width = §2G§.§=!M§;
         this.§]^§.height = §2G§.§"!§;
         addChild(this.§]^§);
         this.§]^§.alpha = 0.5;
      }
      
      public function get §1A§() : Sprite
      {
         return this.§ ! §;
      }
      
      public function get §95§() : DisplayObject
      {
         return this.§]^§;
      }
      
      public function get §%!Q§() : Sprite
      {
         return this.§5H§;
      }
      
      public function §37§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§]^§.width / this.§]^§.height;
         this.§]^§.width = param1 + 600 / _loc3_;
         this.§]^§.height = param2 + 600 / _loc3_;
      }
   }
}
