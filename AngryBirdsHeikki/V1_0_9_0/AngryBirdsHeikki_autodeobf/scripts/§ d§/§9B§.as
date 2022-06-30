package § d§
{
   import §#!f§.§,!0§;
   import §#!f§.DisplayObject;
   import §#!f§.Sprite;
   import §>!F§.§9!Z§;
   
   public class §9B§ extends Sprite
   {
       
      
      protected var §1U§:Sprite;
      
      protected var §`[§:DisplayObject;
      
      protected var §-! §:Sprite;
      
      public function §9B§()
      {
         super();
         addChild(this.§-! § = new Sprite());
         this.§-! §.addChild(this.§1U§ = new Sprite());
         this.§`[§ = new §,!0§(2,2,0);
         this.§`[§.width = §9!Z§.§,e§;
         this.§`[§.height = §9!Z§.§5§;
         addChild(this.§`[§);
         this.§`[§.alpha = 0.5;
      }
      
      public function get §1K§() : Sprite
      {
         return this.§1U§;
      }
      
      public function get §]x§() : DisplayObject
      {
         return this.§`[§;
      }
      
      public function get §=n§() : Sprite
      {
         return this.§-! §;
      }
      
      public function §^!b§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§`[§.width / this.§`[§.height;
         this.§`[§.width = param1 + 600 / _loc3_;
         this.§`[§.height = param2 + 600 / _loc3_;
      }
   }
}
