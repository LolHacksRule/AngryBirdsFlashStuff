package §'4§
{
   import §,"&§.§9q§;
   import §7!8§.§&!D§;
   import §7!8§.DisplayObject;
   import §7!8§.Sprite;
   
   public class §[h§ extends Sprite
   {
       
      
      protected var §+;§:Sprite;
      
      protected var §4Z§:DisplayObject;
      
      protected var §5V§:Sprite;
      
      public function §[h§()
      {
         super();
         addChild(this.§5V§ = new Sprite());
         this.§5V§.addChild(this.§+;§ = new Sprite());
         this.§4Z§ = new §&!D§(2,2,0);
         this.§4Z§.width = §9q§.§?[§;
         this.§4Z§.height = §9q§.§3!h§;
         addChild(this.§4Z§);
         this.§4Z§.alpha = 0.5;
      }
      
      public function get §#c§() : Sprite
      {
         return this.§+;§;
      }
      
      public function get §=I§() : DisplayObject
      {
         return this.§4Z§;
      }
      
      public function get §2!F§() : Sprite
      {
         return this.§5V§;
      }
      
      public function §&w§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§4Z§.width / this.§4Z§.height;
         this.§4Z§.width = param1 + 600 / _loc3_;
         this.§4Z§.height = param2 + 600 / _loc3_;
      }
   }
}
