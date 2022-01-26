package §[x§
{
   import §!Y§.§[o§;
   import §^V§.§09§;
   import §^V§.DisplayObject;
   import §^V§.Sprite;
   
   public class §"0§ extends Sprite
   {
       
      
      protected var §-I§:Sprite;
      
      protected var §0!<§:DisplayObject;
      
      protected var §`s§:Sprite;
      
      public function §"0§()
      {
         super();
         addChild(this.§`s§ = new Sprite());
         this.§`s§.addChild(this.§-I§ = new Sprite());
         this.§0!<§ = new §09§(2,2,0);
         this.§0!<§.width = §[o§.static;
         this.§0!<§.height = §[o§.§for§;
         addChild(this.§0!<§);
         this.§0!<§.alpha = 0.5;
      }
      
      public function get §4-§() : Sprite
      {
         return this.§-I§;
      }
      
      public function get §2!8§() : DisplayObject
      {
         return this.§0!<§;
      }
      
      public function get §8X§() : Sprite
      {
         return this.§`s§;
      }
      
      public function § in§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§0!<§.width / this.§0!<§.height;
         this.§0!<§.width = param1 + 600 / _loc3_;
         this.§0!<§.height = param2 + 600 / _loc3_;
      }
   }
}
