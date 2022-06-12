package §>2§
{
   import §6#H§.§,"$§;
   import §6#H§.DisplayObject;
   import §6#H§.Sprite;
   import §`#@§.§7n§;
   
   public class §1!=§ extends Sprite
   {
       
      
      protected var §""z§:Sprite;
      
      protected var §7g§:DisplayObject;
      
      protected var §,"9§:Sprite;
      
      public function §1!=§()
      {
         super();
         addChild(this.§,"9§ = new Sprite());
         this.§,"9§.addChild(this.§""z§ = new Sprite());
         this.§7g§ = new §,"$§(2,2,0);
         this.§7g§.width = §7n§.§1!Q§;
         this.§7g§.height = §7n§.§##3§;
         addChild(this.§7g§);
         this.§7g§.alpha = 0.5;
      }
      
      public function get §`#N§() : Sprite
      {
         return this.§""z§;
      }
      
      public function get §[r§() : DisplayObject
      {
         return this.§7g§;
      }
      
      public function get §2$9§() : Sprite
      {
         return this.§,"9§;
      }
      
      public function §?#G§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§7g§.width / this.§7g§.height;
         this.§7g§.width = param1 + 600 / _loc3_;
         this.§7g§.height = param2 + 600 / _loc3_;
      }
   }
}
