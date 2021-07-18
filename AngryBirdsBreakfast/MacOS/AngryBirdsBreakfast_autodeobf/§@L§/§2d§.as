package §@L§
{
   import §6![§.§ !f§;
   import §6![§.DisplayObject;
   import §6![§.Sprite;
   import com.angrybirds.§&!"§;
   
   public class §2d§ extends Sprite
   {
       
      
      protected var §]F§:Sprite;
      
      protected var §&!S§:DisplayObject;
      
      protected var §?!f§:Sprite;
      
      public function §2d§()
      {
         super();
         addChild(this.§?!f§ = new Sprite());
         this.§?!f§.addChild(this.§]F§ = new Sprite());
         this.§&!S§ = new § !f§(2,2,0);
         this.§&!S§.width = §&!"§.§8#§;
         this.§&!S§.height = §&!"§.§'+§;
         addChild(this.§&!S§);
         this.§&!S§.alpha = 0.5;
      }
      
      public function get §1!g§() : Sprite
      {
         return this.§]F§;
      }
      
      public function get §'D§() : DisplayObject
      {
         return this.§&!S§;
      }
      
      public function get §2V§() : Sprite
      {
         return this.§?!f§;
      }
      
      public function §,'§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§&!S§.width / this.§&!S§.height;
         this.§&!S§.width = param1 + 600 / _loc3_;
         this.§&!S§.height = param2 + 600 / _loc3_;
      }
   }
}
