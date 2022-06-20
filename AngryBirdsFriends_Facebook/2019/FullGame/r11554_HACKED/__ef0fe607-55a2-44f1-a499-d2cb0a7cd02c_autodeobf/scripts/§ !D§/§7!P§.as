package § !D§
{
   import §!6§.§4";§;
   import §!6§.DisplayObject;
   import §!6§.Sprite;
   import §=!2§.§%"T§;
   
   public class §7!P§ extends Sprite
   {
       
      
      protected var §>$;§:Sprite;
      
      protected var §5"g§:DisplayObject;
      
      protected var §&"h§:Sprite;
      
      public function §7!P§()
      {
         super();
         addChild(this.§&"h§ = new Sprite());
         this.§&"h§.addChild(this.§>$;§ = new Sprite());
         this.§5"g§ = new §4";§(2,2,0);
         this.§5"g§.width = §%"T§.§["?§;
         this.§5"g§.height = §%"T§.§01§;
         addChild(this.§5"g§);
         this.§5"g§.alpha = 0.5;
      }
      
      public function get §<#g§() : Sprite
      {
         return this.§>$;§;
      }
      
      public function get §-#$§() : DisplayObject
      {
         return this.§5"g§;
      }
      
      public function get § #[§() : Sprite
      {
         return this.§&"h§;
      }
      
      public function §>!6§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§5"g§.width / this.§5"g§.height;
         this.§5"g§.width = param1 + 600 / _loc3_;
         this.§5"g§.height = param2 + 600 / _loc3_;
      }
   }
}
