package §55§
{
   import §%!5§.§7;§;
   import §0@§.§"%§;
   import §0@§.DisplayObject;
   import §0@§.Sprite;
   
   public class §&!N§ extends Sprite
   {
       
      
      protected var §6Q§:Sprite;
      
      protected var §;`§:DisplayObject;
      
      protected var §1m§:Sprite;
      
      public function §&!N§()
      {
         super();
         addChild(this.§1m§ = new Sprite());
         this.§1m§.addChild(this.§6Q§ = new Sprite());
         this.§;`§ = new §"%§(2,2,0);
         this.§;`§.width = §7;§.§`B§;
         this.§;`§.height = §7;§.§]!n§;
         addChild(this.§;`§);
         this.§;`§.alpha = 0.5;
      }
      
      public function get §5§() : Sprite
      {
         return this.§6Q§;
      }
      
      public function get §4!I§() : DisplayObject
      {
         return this.§;`§;
      }
      
      public function get §=X§() : Sprite
      {
         return this.§1m§;
      }
      
      public function §3=§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§;`§.width / this.§;`§.height;
         this.§;`§.width = param1 + 600 / _loc3_;
         this.§;`§.height = param2 + 600 / _loc3_;
      }
   }
}
