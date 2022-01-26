package §0V§
{
   import §3§.§2?§;
   import §3§.DisplayObject;
   import §3§.Sprite;
   import §^Q§.§,^§;
   
   public class §73§ extends Sprite
   {
       
      
      protected var §>F§:Sprite;
      
      protected var §4M§:DisplayObject;
      
      protected var §=H§:Sprite;
      
      public function §73§()
      {
         super();
         addChild(this.§=H§ = new Sprite());
         this.§=H§.addChild(this.§>F§ = new Sprite());
         this.§4M§ = new §2?§(2,2,0);
         this.§4M§.width = §,^§.§=!#§;
         this.§4M§.height = §,^§.§,n§;
         addChild(this.§4M§);
         this.§4M§.alpha = 0.5;
      }
      
      public function get §&^§() : Sprite
      {
         return this.§>F§;
      }
      
      public function get §^!2§() : DisplayObject
      {
         return this.§4M§;
      }
      
      public function get §3<§() : Sprite
      {
         return this.§=H§;
      }
      
      public function §1!Y§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§4M§.width / this.§4M§.height;
         this.§4M§.width = param1 + 600 / _loc3_;
         this.§4M§.height = param2 + 600 / _loc3_;
      }
   }
}
