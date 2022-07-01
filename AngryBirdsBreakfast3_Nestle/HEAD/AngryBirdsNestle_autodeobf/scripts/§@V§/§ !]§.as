package §@V§
{
   import §0!m§.§@!S§;
   import §3!J§.§8!l§;
   import §3!J§.DisplayObject;
   import §3!J§.Sprite;
   
   public class § !]§ extends Sprite
   {
       
      
      protected var §?'§:Sprite;
      
      protected var §]!1§:DisplayObject;
      
      protected var §1O§:Sprite;
      
      public function § !]§()
      {
         super();
         addChild(this.§1O§ = new Sprite());
         this.§1O§.addChild(this.§?'§ = new Sprite());
         this.§]!1§ = new §8!l§(2,2,0);
         this.§]!1§.width = §@!S§.§3z§;
         this.§]!1§.height = §@!S§.§`!,§;
         addChild(this.§]!1§);
         this.§]!1§.alpha = 0.5;
      }
      
      public function get §,0§() : Sprite
      {
         return this.§?'§;
      }
      
      public function get §&!S§() : DisplayObject
      {
         return this.§]!1§;
      }
      
      public function get §3x§() : Sprite
      {
         return this.§1O§;
      }
      
      public function §9l§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§]!1§.width / this.§]!1§.height;
         this.§]!1§.width = param1 + 600 / _loc3_;
         this.§]!1§.height = param2 + 600 / _loc3_;
      }
   }
}
