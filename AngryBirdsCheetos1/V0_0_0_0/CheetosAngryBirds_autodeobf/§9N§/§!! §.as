package §9N§
{
   import §!J§.§[&§;
   import §`a§.§?!N§;
   import §`a§.DisplayObject;
   import §`a§.Sprite;
   
   public class §!! § extends Sprite
   {
       
      
      protected var §-N§:Sprite;
      
      protected var §!!2§:DisplayObject;
      
      protected var §#w§:Sprite;
      
      public function §!! §()
      {
         super();
         addChild(this.§#w§ = new Sprite());
         this.§#w§.addChild(this.§-N§ = new Sprite());
         this.§!!2§ = new §?!N§(2,2,0);
         this.§!!2§.width = §[&§.§"L§;
         this.§!!2§.height = §[&§.§#S§;
         addChild(this.§!!2§);
         this.§!!2§.alpha = 0.5;
      }
      
      public function get §85§() : Sprite
      {
         return this.§-N§;
      }
      
      public function get §+S§() : DisplayObject
      {
         return this.§!!2§;
      }
      
      public function get §!3§() : Sprite
      {
         return this.§#w§;
      }
      
      public function §'7§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§!!2§.width / this.§!!2§.height;
         this.§!!2§.width = param1 + 600 / _loc3_;
         this.§!!2§.height = param2 + 600 / _loc3_;
      }
   }
}
