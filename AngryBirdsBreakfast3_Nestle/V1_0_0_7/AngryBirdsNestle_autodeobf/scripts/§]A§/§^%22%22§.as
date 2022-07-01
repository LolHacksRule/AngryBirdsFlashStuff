package §]A§
{
   import § !=§.DisplayObject;
   import § !=§.Sprite;
   import § !=§.§break§;
   import com.angrybirds.§#Z§;
   
   public class §^""§ extends Sprite
   {
       
      
      protected var §!!!§:Sprite;
      
      protected var §`c§:DisplayObject;
      
      protected var §@c§:Sprite;
      
      public function §^""§()
      {
         super();
         addChild(this.§@c§ = new Sprite());
         this.§@c§.addChild(this.§!!!§ = new Sprite());
         this.§`c§ = new §break§(2,2,0);
         this.§`c§.width = §#Z§.§ c§;
         this.§`c§.height = §#Z§.§1<§;
         addChild(this.§`c§);
         this.§`c§.alpha = 0.5;
      }
      
      public function get §9R§() : Sprite
      {
         return this.§!!!§;
      }
      
      public function get §@"3§() : DisplayObject
      {
         return this.§`c§;
      }
      
      public function get §2!x§() : Sprite
      {
         return this.§@c§;
      }
      
      public function §4!+§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§`c§.width / this.§`c§.height;
         this.§`c§.width = param1 + 600 / _loc3_;
         this.§`c§.height = param2 + 600 / _loc3_;
      }
   }
}
