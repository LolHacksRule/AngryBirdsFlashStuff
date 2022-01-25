package § 2§
{
   import §3!0§.§`i§;
   import §`!B§.DisplayObject;
   import §`!B§.Sprite;
   import §`!B§.§]!J§;
   
   public class §0",§ extends Sprite
   {
       
      
      protected var §6!+§:Sprite;
      
      protected var §-3§:DisplayObject;
      
      protected var §,!o§:Sprite;
      
      public function §0",§()
      {
         super();
         addChild(this.§,!o§ = new Sprite());
         this.§,!o§.addChild(this.§6!+§ = new Sprite());
         this.§-3§ = new §]!J§(2,2,0);
         this.§-3§.width = §`i§.§8#§;
         this.§-3§.height = §`i§.§1k§;
         addChild(this.§-3§);
         this.§-3§.alpha = 0.5;
      }
      
      public function get §<C§() : Sprite
      {
         return this.§6!+§;
      }
      
      public function get §8!C§() : DisplayObject
      {
         return this.§-3§;
      }
      
      public function get §8O§() : Sprite
      {
         return this.§,!o§;
      }
      
      public function §,u§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§-3§.width / this.§-3§.height;
         this.§-3§.width = param1 + 600 / _loc3_;
         this.§-3§.height = param2 + 600 / _loc3_;
      }
   }
}
