package §9T§
{
   import §+!^§.§'Y§;
   import §9!a§.DisplayObject;
   import §9!a§.Sprite;
   import §9!a§.§]o§;
   
   public class §1!O§ extends Sprite
   {
       
      
      protected var §6!,§:Sprite;
      
      protected var §49§:DisplayObject;
      
      protected var §&"§:Sprite;
      
      public function §1!O§()
      {
         super();
         addChild(this.§&"§ = new Sprite());
         this.§&"§.addChild(this.§6!,§ = new Sprite());
         this.§49§ = new §]o§(2,2,0);
         this.§49§.width = §'Y§.§8o§;
         this.§49§.height = §'Y§.§&I§;
         addChild(this.§49§);
         this.§49§.alpha = 0.5;
      }
      
      public function get §0!R§() : Sprite
      {
         return this.§6!,§;
      }
      
      public function get §+!"§() : DisplayObject
      {
         return this.§49§;
      }
      
      public function get §1!#§() : Sprite
      {
         return this.§&"§;
      }
      
      public function §12§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§49§.width / this.§49§.height;
         this.§49§.width = param1 + 600 / _loc3_;
         this.§49§.height = param2 + 600 / _loc3_;
      }
   }
}
