package §<!<§
{
   import §-!`§.§8!p§;
   import §-!`§.DisplayObject;
   import §-!`§.Sprite;
   import §?!-§.§'!V§;
   
   public class §@`§ extends Sprite
   {
       
      
      protected var §2!Z§:Sprite;
      
      protected var §2;§:DisplayObject;
      
      protected var §7t§:Sprite;
      
      public function §@`§()
      {
         super();
         addChild(this.§7t§ = new Sprite());
         this.§7t§.addChild(this.§2!Z§ = new Sprite());
         this.§2;§ = new §8!p§(2,2,0);
         this.§2;§.width = §'!V§.§&d§;
         this.§2;§.height = §'!V§.§6k§;
         addChild(this.§2;§);
         this.§2;§.alpha = 0.5;
      }
      
      public function get §'v§() : Sprite
      {
         return this.§2!Z§;
      }
      
      public function get §,w§() : DisplayObject
      {
         return this.§2;§;
      }
      
      public function get §3Z§() : Sprite
      {
         return this.§7t§;
      }
      
      public function §4!g§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§2;§.width / this.§2;§.height;
         this.§2;§.width = param1 + 600 / _loc3_;
         this.§2;§.height = param2 + 600 / _loc3_;
      }
   }
}
