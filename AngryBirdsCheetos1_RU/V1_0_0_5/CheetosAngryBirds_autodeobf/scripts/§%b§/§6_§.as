package §%b§
{
   import §'d§.§3>§;
   import §null §.§>U§;
   import §null §.DisplayObject;
   import §null §.Sprite;
   
   public class §6_§ extends Sprite
   {
       
      
      protected var §^!+§:Sprite;
      
      protected var §4!V§:DisplayObject;
      
      protected var §<!+§:Sprite;
      
      public function §6_§()
      {
         super();
         addChild(this.§<!+§ = new Sprite());
         this.§<!+§.addChild(this.§^!+§ = new Sprite());
         this.§4!V§ = new §>U§(2,2,0);
         this.§4!V§.width = §3>§.§'R§;
         this.§4!V§.height = §3>§.§'Z§;
         addChild(this.§4!V§);
         this.§4!V§.alpha = 0.5;
      }
      
      public function get §<g§() : Sprite
      {
         return this.§^!+§;
      }
      
      public function get §5!C§() : DisplayObject
      {
         return this.§4!V§;
      }
      
      public function get §4d§() : Sprite
      {
         return this.§<!+§;
      }
      
      public function §-!3§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§4!V§.width / this.§4!V§.height;
         this.§4!V§.width = param1 + 600 / _loc3_;
         this.§4!V§.height = param2 + 600 / _loc3_;
      }
   }
}
