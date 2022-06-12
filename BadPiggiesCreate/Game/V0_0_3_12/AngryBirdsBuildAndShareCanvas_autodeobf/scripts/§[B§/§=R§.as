package §[B§
{
   import §7"1§.§%W§;
   import §@!i§.§'!a§;
   import §@!i§.DisplayObject;
   import §@!i§.Sprite;
   
   public class §=R§ extends Sprite
   {
       
      
      protected var §4!x§:Sprite;
      
      protected var §2$§:DisplayObject;
      
      protected var §[a§:Sprite;
      
      public function §=R§()
      {
         super();
         addChild(this.§[a§ = new Sprite());
         this.§[a§.addChild(this.§4!x§ = new Sprite());
         this.§2$§ = new §'!a§(2,2,0);
         this.§2$§.width = §%W§.§0<§;
         this.§2$§.height = §%W§.§-!'§;
         addChild(this.§2$§);
         this.§2$§.alpha = 0.5;
      }
      
      public function get §-!H§() : Sprite
      {
         return this.§4!x§;
      }
      
      public function get §]&§() : DisplayObject
      {
         return this.§2$§;
      }
      
      public function get §3!4§() : Sprite
      {
         return this.§[a§;
      }
      
      public function §%"=§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§2$§.width / this.§2$§.height;
         this.§2$§.width = param1 + 600 / _loc3_;
         this.§2$§.height = param2 + 600 / _loc3_;
      }
   }
}
