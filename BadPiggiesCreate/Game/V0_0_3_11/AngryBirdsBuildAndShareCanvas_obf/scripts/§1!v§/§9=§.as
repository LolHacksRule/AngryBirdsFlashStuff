package §1!v§
{
   import §'x§.§?z§;
   import §1!Y§.§5!W§;
   import §1!Y§.DisplayObject;
   import §1!Y§.Sprite;
   
   public class §9=§ extends Sprite
   {
       
      
      protected var §!q§:Sprite;
      
      protected var §"![§:DisplayObject;
      
      protected var §[!e§:Sprite;
      
      public function §9=§()
      {
         super();
         addChild(this.§[!e§ = new Sprite());
         this.§[!e§.addChild(this.§!q§ = new Sprite());
         this.§"![§ = new §5!W§(2,2,0);
         this.§"![§.width = §?z§.§ !q§;
         this.§"![§.height = §?z§.§%"2§;
         addChild(this.§"![§);
         this.§"![§.alpha = 0.5;
      }
      
      public function get §3v§() : Sprite
      {
         return this.§!q§;
      }
      
      public function get §,!§() : DisplayObject
      {
         return this.§"![§;
      }
      
      public function get §=!p§() : Sprite
      {
         return this.§[!e§;
      }
      
      public function §;&§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§"![§.width / this.§"![§.height;
         this.§"![§.width = param1 + 600 / _loc3_;
         this.§"![§.height = param2 + 600 / _loc3_;
      }
   }
}
