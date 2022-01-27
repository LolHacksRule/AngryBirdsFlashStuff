package §?!<§
{
   import §'!&§.§ "E§;
   import §'!&§.DisplayObject;
   import §'!&§.Sprite;
   import §+!9§.§;0§;
   
   public class §^w§ extends Sprite
   {
       
      
      protected var §4!<§:Sprite;
      
      protected var §>=§:DisplayObject;
      
      protected var § !I§:Sprite;
      
      public function §^w§()
      {
         super();
         addChild(this.§ !I§ = new Sprite());
         this.§ !I§.addChild(this.§4!<§ = new Sprite());
         this.§>=§ = new § "E§(2,2,0);
         this.§>=§.width = §;0§.§+g§;
         this.§>=§.height = §;0§.§5+§;
         addChild(this.§>=§);
         this.§>=§.alpha = 0.5;
      }
      
      public function get §5">§() : Sprite
      {
         return this.§4!<§;
      }
      
      public function get §?N§() : DisplayObject
      {
         return this.§>=§;
      }
      
      public function get §^l§() : Sprite
      {
         return this.§ !I§;
      }
      
      public function §,6§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§>=§.width / this.§>=§.height;
         this.§>=§.width = param1 + 600 / _loc3_;
         this.§>=§.height = param2 + 600 / _loc3_;
      }
   }
}
