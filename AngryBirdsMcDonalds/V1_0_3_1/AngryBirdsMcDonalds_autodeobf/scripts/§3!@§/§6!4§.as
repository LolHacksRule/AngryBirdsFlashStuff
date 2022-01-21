package §3!@§
{
   import § !Y§.§2#§;
   import §&c§.§2!]§;
   import §&c§.DisplayObject;
   import §&c§.Sprite;
   
   public class §6!4§ extends Sprite
   {
       
      
      protected var §6i§:Sprite;
      
      protected var §7"§:DisplayObject;
      
      protected var §7G§:Sprite;
      
      public function §6!4§()
      {
         super();
         addChild(this.§7G§ = new Sprite());
         this.§7G§.addChild(this.§6i§ = new Sprite());
         this.§7"§ = new §2!]§(2,2,0);
         this.§7"§.width = §2#§.§#@§;
         this.§7"§.height = §2#§.§#k§;
         addChild(this.§7"§);
         this.§7"§.alpha = 0.5;
      }
      
      public function get §1=§() : Sprite
      {
         return this.§6i§;
      }
      
      public function get §5!I§() : DisplayObject
      {
         return this.§7"§;
      }
      
      public function get §+I§() : Sprite
      {
         return this.§7G§;
      }
      
      public function §,!M§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§7"§.width / this.§7"§.height;
         this.§7"§.width = param1 + 600 / _loc3_;
         this.§7"§.height = param2 + 600 / _loc3_;
      }
   }
}
