package §;'§
{
   import §#]§.§'5§;
   import §;^§.§+a§;
   import §;^§.DisplayObject;
   import §;^§.Sprite;
   
   public class §^S§ extends Sprite
   {
       
      
      protected var §-!%§:Sprite;
      
      protected var §^o§:DisplayObject;
      
      protected var §<!K§:Sprite;
      
      public function §^S§()
      {
         super();
         addChild(this.§<!K§ = new Sprite());
         this.§<!K§.addChild(this.§-!%§ = new Sprite());
         this.§^o§ = new §+a§(2,2,0);
         this.§^o§.width = §'5§.§@!0§;
         this.§^o§.height = §'5§.§2!M§;
         addChild(this.§^o§);
         this.§^o§.alpha = 0.5;
      }
      
      public function get §=!D§() : Sprite
      {
         return this.§-!%§;
      }
      
      public function get §[1§() : DisplayObject
      {
         return this.§^o§;
      }
      
      public function get §;!E§() : Sprite
      {
         return this.§<!K§;
      }
      
      public function §!k§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§^o§.width / this.§^o§.height;
         this.§^o§.width = param1 + 600 / _loc3_;
         this.§^o§.height = param2 + 600 / _loc3_;
      }
   }
}
