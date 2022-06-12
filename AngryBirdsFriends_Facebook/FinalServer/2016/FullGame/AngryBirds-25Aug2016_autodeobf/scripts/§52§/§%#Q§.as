package §52§
{
   import §9$§.DisplayObject;
   import §9$§.Sprite;
   import §9$§.§],§;
   import §?§.§>"$§;
   
   public class §%#Q§ extends Sprite
   {
       
      
      protected var §^#1§:Sprite;
      
      protected var §7D§:DisplayObject;
      
      protected var §["q§:Sprite;
      
      public function §%#Q§()
      {
         super();
         addChild(this.§["q§ = new Sprite());
         this.§["q§.addChild(this.§^#1§ = new Sprite());
         this.§7D§ = new §],§(2,2,0);
         this.§7D§.width = §>"$§.§ "+§;
         this.§7D§.height = §>"$§.§&#-§;
         addChild(this.§7D§);
         this.§7D§.alpha = 0.5;
      }
      
      public function get §@$9§() : Sprite
      {
         return this.§^#1§;
      }
      
      public function get §?"n§() : DisplayObject
      {
         return this.§7D§;
      }
      
      public function get §?"Y§() : Sprite
      {
         return this.§["q§;
      }
      
      public function §'W§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§7D§.width / this.§7D§.height;
         this.§7D§.width = param1 + 600 / _loc3_;
         this.§7D§.height = param2 + 600 / _loc3_;
      }
   }
}
