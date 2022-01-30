package §@"1§
{
   import §0!Y§.§-f§;
   import §0!Y§.DisplayObject;
   import §0!Y§.Sprite;
   import com.angrybirds.§4!l§;
   
   public class §&m§ extends Sprite
   {
       
      
      protected var §%h§:Sprite;
      
      protected var §>`§:DisplayObject;
      
      protected var §;!'§:Sprite;
      
      public function §&m§()
      {
         super();
         addChild(this.§;!'§ = new Sprite());
         this.§;!'§.addChild(this.§%h§ = new Sprite());
         this.§>`§ = new §-f§(2,2,0);
         this.§>`§.width = §4!l§.§^!z§;
         this.§>`§.height = §4!l§.§^!y§;
         addChild(this.§>`§);
         this.§>`§.alpha = 0.5;
      }
      
      public function get §5!Z§() : Sprite
      {
         return this.§%h§;
      }
      
      public function get §5!p§() : DisplayObject
      {
         return this.§>`§;
      }
      
      public function get §-'§() : Sprite
      {
         return this.§;!'§;
      }
      
      public function §`L§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§>`§.width / this.§>`§.height;
         this.§>`§.width = param1 + 600 / _loc3_;
         this.§>`§.height = param2 + 600 / _loc3_;
      }
   }
}
