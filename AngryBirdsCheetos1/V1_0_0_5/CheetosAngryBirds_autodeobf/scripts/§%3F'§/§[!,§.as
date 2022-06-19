package §?'§
{
   import §!!R§.DisplayObject;
   import §!!R§.Sprite;
   import §!!R§.§^!4§;
   import §!J§.§[&§;
   
   public class §[!,§ extends Sprite
   {
       
      
      protected var §6c§:Sprite;
      
      protected var §!! §:DisplayObject;
      
      protected var §!!2§:Sprite;
      
      public function §[!,§()
      {
         super();
         addChild(this.§!!2§ = new Sprite());
         this.§!!2§.addChild(this.§6c§ = new Sprite());
         this.§!! § = new §^!4§(2,2,0);
         this.§!! §.width = §[&§.§"L§;
         this.§!! §.height = §[&§.§#S§;
         addChild(this.§!! §);
         this.§!! §.alpha = 0.5;
      }
      
      public function get §#w§() : Sprite
      {
         return this.§6c§;
      }
      
      public function get §['§() : DisplayObject
      {
         return this.§!! §;
      }
      
      public function get §85§() : Sprite
      {
         return this.§!!2§;
      }
      
      public function §!3§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§!! §.width / this.§!! §.height;
         this.§!! §.width = param1 + 600 / _loc3_;
         this.§!! §.height = param2 + 600 / _loc3_;
      }
   }
}
