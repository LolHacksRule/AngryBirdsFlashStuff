package §7z§
{
   import §1!A§.§@!O§;
   import §1!A§.DisplayObject;
   import §1!A§.Sprite;
   import §;!X§.§7`§;
   
   public class §]Z§ extends Sprite
   {
       
      
      protected var §,@§:Sprite;
      
      protected var §4Y§:DisplayObject;
      
      protected var §@!I§:Sprite;
      
      public function §]Z§()
      {
         super();
         addChild(this.§@!I§ = new Sprite());
         this.§@!I§.addChild(this.§,@§ = new Sprite());
         this.§4Y§ = new §@!O§(2,2,0);
         this.§4Y§.width = §7`§.§1=§;
         this.§4Y§.height = §7`§.§@!#§;
         addChild(this.§4Y§);
         this.§4Y§.alpha = 0.5;
      }
      
      public function get §^!5§() : Sprite
      {
         return this.§,@§;
      }
      
      public function get §,!#§() : DisplayObject
      {
         return this.§4Y§;
      }
      
      public function get § !#§() : Sprite
      {
         return this.§@!I§;
      }
      
      public function §"^§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§4Y§.width / this.§4Y§.height;
         this.§4Y§.width = param1 + 600 / _loc3_;
         this.§4Y§.height = param2 + 600 / _loc3_;
      }
   }
}
