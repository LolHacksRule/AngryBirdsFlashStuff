package §+!%§
{
   import §->§.§7d§;
   import §->§.DisplayObject;
   import §->§.Sprite;
   import §-l§.§?'§;
   
   public class §[!<§ extends Sprite
   {
       
      
      protected var §]!>§:Sprite;
      
      protected var §5#§:DisplayObject;
      
      protected var §7E§:Sprite;
      
      public function §[!<§()
      {
         super();
         addChild(this.§7E§ = new Sprite());
         this.§7E§.addChild(this.§]!>§ = new Sprite());
         this.§5#§ = new §7d§(2,2,0);
         this.§5#§.width = §?'§.§?t§;
         this.§5#§.height = §?'§.§,!,§;
         addChild(this.§5#§);
         this.§5#§.alpha = 0.5;
      }
      
      public function get §#!4§() : Sprite
      {
         return this.§]!>§;
      }
      
      public function get §'!+§() : DisplayObject
      {
         return this.§5#§;
      }
      
      public function get §0C§() : Sprite
      {
         return this.§7E§;
      }
      
      public function §<@§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§5#§.width / this.§5#§.height;
         this.§5#§.width = param1 + 600 / _loc3_;
         this.§5#§.height = param2 + 600 / _loc3_;
      }
   }
}
