package §4A§
{
   import §,!Q§.§2P§;
   import §,!Q§.DisplayObject;
   import §,!Q§.Sprite;
   import §-v§.§,!1§;
   
   public class §'l§ extends Sprite
   {
       
      
      protected var §3!<§:Sprite;
      
      protected var §>R§:DisplayObject;
      
      protected var §'!4§:Sprite;
      
      public function §'l§()
      {
         super();
         addChild(this.§'!4§ = new Sprite());
         this.§'!4§.addChild(this.§3!<§ = new Sprite());
         this.§>R§ = new §2P§(2,2,0);
         this.§>R§.width = §,!1§.§ e§;
         this.§>R§.height = §,!1§.§9!;§;
         addChild(this.§>R§);
         this.§>R§.alpha = 0.5;
      }
      
      public function get §+M§() : Sprite
      {
         return this.§3!<§;
      }
      
      public function get §]!A§() : DisplayObject
      {
         return this.§>R§;
      }
      
      public function get §]M§() : Sprite
      {
         return this.§'!4§;
      }
      
      public function §@!8§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§>R§.width / this.§>R§.height;
         this.§>R§.width = param1 + 600 / _loc3_;
         this.§>R§.height = param2 + 600 / _loc3_;
      }
   }
}
