package §3"#§
{
   import §&!]§.§7!J§;
   import §&!]§.DisplayObject;
   import §&!]§.Sprite;
   import §>"2§.§8k§;
   
   public class §7X§ extends Sprite
   {
       
      
      protected var §;o§:Sprite;
      
      protected var §]Q§:DisplayObject;
      
      protected var §1!7§:Sprite;
      
      public function §7X§()
      {
         super();
         addChild(this.§1!7§ = new Sprite());
         this.§1!7§.addChild(this.§;o§ = new Sprite());
         this.§]Q§ = new §7!J§(2,2,0);
         this.§]Q§.width = §8k§.§<A§;
         this.§]Q§.height = §8k§.§[s§;
         addChild(this.§]Q§);
         this.§]Q§.alpha = 0.5;
      }
      
      public function get §%!Q§() : Sprite
      {
         return this.§;o§;
      }
      
      public function get §5!#§() : DisplayObject
      {
         return this.§]Q§;
      }
      
      public function get §7"?§() : Sprite
      {
         return this.§1!7§;
      }
      
      public function §]!f§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§]Q§.width / this.§]Q§.height;
         this.§]Q§.width = param1 + 600 / _loc3_;
         this.§]Q§.height = param2 + 600 / _loc3_;
      }
   }
}
