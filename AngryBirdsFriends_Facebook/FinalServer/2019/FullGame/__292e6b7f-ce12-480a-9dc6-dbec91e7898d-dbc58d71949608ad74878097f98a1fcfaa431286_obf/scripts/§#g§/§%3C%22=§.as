package §#g§
{
   import §,#e§.§;!`§;
   import §,#e§.DisplayObject;
   import §,#e§.Sprite;
   import §?#z§.§]$?§;
   
   public class §<"=§ extends Sprite
   {
       
      
      protected var §"#s§:Sprite;
      
      protected var §!!4§:DisplayObject;
      
      protected var §2S§:Sprite;
      
      public function §<"=§()
      {
         super();
         addChild(this.§2S§ = new Sprite());
         this.§2S§.addChild(this.§"#s§ = new Sprite());
         this.§!!4§ = new §;!`§(2,2,0);
         this.§!!4§.width = §]$?§.§!!x§;
         this.§!!4§.height = §]$?§.§@!=§;
         addChild(this.§!!4§);
         this.§!!4§.alpha = 0.5;
      }
      
      public function get §'$+§() : Sprite
      {
         return this.§"#s§;
      }
      
      public function get §1"Z§() : DisplayObject
      {
         return this.§!!4§;
      }
      
      public function get §&!5§() : Sprite
      {
         return this.§2S§;
      }
      
      public function §?!D§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§!!4§.width / this.§!!4§.height;
         this.§!!4§.width = param1 + 600 / _loc3_;
         this.§!!4§.height = param2 + 600 / _loc3_;
      }
   }
}
