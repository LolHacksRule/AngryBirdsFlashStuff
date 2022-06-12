package §%h§
{
   import §]!2§.§?"2§;
   import §]!2§.DisplayObject;
   import §]!2§.Sprite;
   import §`%§.§8!0§;
   
   public class §8!y§ extends Sprite
   {
       
      
      protected var §5Q§:Sprite;
      
      protected var §'!,§:DisplayObject;
      
      protected var §<!h§:Sprite;
      
      public function §8!y§()
      {
         super();
         addChild(this.§<!h§ = new Sprite());
         this.§<!h§.addChild(this.§5Q§ = new Sprite());
         this.§'!,§ = new §?"2§(2,2,0);
         this.§'!,§.width = §8!0§.§;"#§;
         this.§'!,§.height = §8!0§.§3g§;
         addChild(this.§'!,§);
         this.§'!,§.alpha = 0.5;
      }
      
      public function get §4!t§() : Sprite
      {
         return this.§5Q§;
      }
      
      public function get §8H§() : DisplayObject
      {
         return this.§'!,§;
      }
      
      public function get §%!5§() : Sprite
      {
         return this.§<!h§;
      }
      
      public function §@M§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§'!,§.width / this.§'!,§.height;
         this.§'!,§.width = param1 + 600 / _loc3_;
         this.§'!,§.height = param2 + 600 / _loc3_;
      }
   }
}
