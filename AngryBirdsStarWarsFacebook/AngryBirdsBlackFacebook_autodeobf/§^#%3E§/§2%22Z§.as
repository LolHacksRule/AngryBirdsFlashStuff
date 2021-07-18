package §^#>§
{
   import §!!U§.§2"D§;
   import §!!U§.DisplayObject;
   import §!!U§.Sprite;
   import com.angrybirds.§,!q§;
   
   public class §2"Z§ extends Sprite
   {
       
      
      protected var §9!z§:Sprite;
      
      protected var §1"g§:DisplayObject;
      
      protected var §[!,§:Sprite;
      
      public function §2"Z§()
      {
         super();
         addChild(this.§[!,§ = new Sprite());
         this.§[!,§.addChild(this.§9!z§ = new Sprite());
         this.§1"g§ = new §2"D§(2,2,0);
         this.§1"g§.width = §,!q§.§%N§;
         this.§1"g§.height = §,!q§.§>#O§;
         addChild(this.§1"g§);
         this.§1"g§.alpha = 0.5;
      }
      
      public function get §2"E§() : Sprite
      {
         return this.§9!z§;
      }
      
      public function get §>D§() : DisplayObject
      {
         return this.§1"g§;
      }
      
      public function get §`"D§() : Sprite
      {
         return this.§[!,§;
      }
      
      public function §>"g§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§1"g§.width / this.§1"g§.height;
         this.§1"g§.width = param1 + 600 / _loc3_;
         this.§1"g§.height = param2 + 600 / _loc3_;
      }
   }
}
