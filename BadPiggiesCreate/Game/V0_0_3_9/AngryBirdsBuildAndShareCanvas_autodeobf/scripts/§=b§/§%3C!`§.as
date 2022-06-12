package §=b§
{
   import §3!S§.§%s§;
   import §7q§.§"L§;
   import §7q§.DisplayObject;
   import §7q§.Sprite;
   
   public class §<!`§ extends Sprite
   {
       
      
      protected var §?!j§:Sprite;
      
      protected var §>!O§:DisplayObject;
      
      protected var §'!@§:Sprite;
      
      public function §<!`§()
      {
         super();
         addChild(this.§'!@§ = new Sprite());
         this.§'!@§.addChild(this.§?!j§ = new Sprite());
         this.§>!O§ = new §"L§(2,2,0);
         this.§>!O§.width = §%s§.§"<§;
         this.§>!O§.height = §%s§.§9%§;
         addChild(this.§>!O§);
         this.§>!O§.alpha = 0.5;
      }
      
      public function get §!n§() : Sprite
      {
         return this.§?!j§;
      }
      
      public function get §]O§() : DisplayObject
      {
         return this.§>!O§;
      }
      
      public function get §]!P§() : Sprite
      {
         return this.§'!@§;
      }
      
      public function §!" §(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§>!O§.width / this.§>!O§.height;
         this.§>!O§.width = param1 + 600 / _loc3_;
         this.§>!O§.height = param2 + 600 / _loc3_;
      }
   }
}
