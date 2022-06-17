package §?$#§
{
   import §#Z§.§6J§;
   import §#Z§.DisplayObject;
   import §#Z§.Sprite;
   import §+!n§.§+!p§;
   
   public class §-!2§ extends Sprite
   {
       
      
      protected var §>"C§:Sprite;
      
      protected var §]"n§:DisplayObject;
      
      protected var §[!?§:Sprite;
      
      public function §-!2§()
      {
         super();
         addChild(this.§[!?§ = new Sprite());
         this.§[!?§.addChild(this.§>"C§ = new Sprite());
         this.§]"n§ = new §6J§(2,2,0);
         this.§]"n§.width = §+!p§.§2"?§;
         this.§]"n§.height = §+!p§.§%!"§;
         addChild(this.§]"n§);
         this.§]"n§.alpha = 0.5;
      }
      
      public function get §<"O§() : Sprite
      {
         return this.§>"C§;
      }
      
      public function get §`A§() : DisplayObject
      {
         return this.§]"n§;
      }
      
      public function get §9!8§() : Sprite
      {
         return this.§[!?§;
      }
      
      public function §>#Q§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§]"n§.width / this.§]"n§.height;
         this.§]"n§.width = param1 + 600 / _loc3_;
         this.§]"n§.height = param2 + 600 / _loc3_;
      }
   }
}
