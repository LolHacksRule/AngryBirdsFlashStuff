package §3E§
{
   import §7!U§.§2!7§;
   import §7u§.§&x§;
   import §7u§.DisplayObject;
   import §7u§.Sprite;
   
   public class §`J§ extends Sprite
   {
       
      
      protected var §^!G§:Sprite;
      
      protected var §4O§:DisplayObject;
      
      protected var §7;§:Sprite;
      
      public function §`J§()
      {
         super();
         addChild(this.§7;§ = new Sprite());
         this.§7;§.addChild(this.§^!G§ = new Sprite());
         this.§4O§ = new §&x§(2,2,0);
         this.§4O§.width = §2!7§.§'s§;
         this.§4O§.height = §2!7§.§&!8§;
         addChild(this.§4O§);
         this.§4O§.alpha = 0.5;
      }
      
      public function get §5;§() : Sprite
      {
         return this.§^!G§;
      }
      
      public function get §,!G§() : DisplayObject
      {
         return this.§4O§;
      }
      
      public function get §;$§() : Sprite
      {
         return this.§7;§;
      }
      
      public function §=!-§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§4O§.width / this.§4O§.height;
         this.§4O§.width = param1 + 600 / _loc3_;
         this.§4O§.height = param2 + 600 / _loc3_;
      }
   }
}
