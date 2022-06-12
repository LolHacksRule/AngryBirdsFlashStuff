package §%!0§
{
   import §+!-§.§4!O§;
   import §+!-§.DisplayObject;
   import §+!-§.Sprite;
   import §,P§.§'_§;
   
   public class §3!g§ extends Sprite
   {
       
      
      protected var §"!i§:Sprite;
      
      protected var §5!W§:DisplayObject;
      
      protected var §,"§:Sprite;
      
      public function §3!g§()
      {
         super();
         addChild(this.§,"§ = new Sprite());
         this.§,"§.addChild(this.§"!i§ = new Sprite());
         this.§5!W§ = new §4!O§(2,2,0);
         this.§5!W§.width = §'_§.§["3§;
         this.§5!W§.height = §'_§.§7$§;
         addChild(this.§5!W§);
         this.§5!W§.alpha = 0.5;
      }
      
      public function get §@>§() : Sprite
      {
         return this.§"!i§;
      }
      
      public function get §`V§() : DisplayObject
      {
         return this.§5!W§;
      }
      
      public function get §+h§() : Sprite
      {
         return this.§,"§;
      }
      
      public function §,!n§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§5!W§.width / this.§5!W§.height;
         this.§5!W§.width = param1 + 600 / _loc3_;
         this.§5!W§.height = param2 + 600 / _loc3_;
      }
   }
}
