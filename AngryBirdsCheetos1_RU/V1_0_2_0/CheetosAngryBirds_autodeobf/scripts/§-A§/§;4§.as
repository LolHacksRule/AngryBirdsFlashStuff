package §-A§
{
   import §,H§.§>!C§;
   import §,H§.DisplayObject;
   import §,H§.Sprite;
   import §@!W§.§8!W§;
   
   public class §;4§ extends Sprite
   {
       
      
      protected var §[!_§:Sprite;
      
      protected var §@<§:DisplayObject;
      
      protected var §3i§:Sprite;
      
      public function §;4§()
      {
         super();
         addChild(this.§3i§ = new Sprite());
         this.§3i§.addChild(this.§[!_§ = new Sprite());
         this.§@<§ = new §>!C§(2,2,0);
         this.§@<§.width = §8!W§.§34§;
         this.§@<§.height = §8!W§.§!=§;
         addChild(this.§@<§);
         this.§@<§.alpha = 0.5;
      }
      
      public function get §`!Q§() : Sprite
      {
         return this.§[!_§;
      }
      
      public function get §;!U§() : DisplayObject
      {
         return this.§@<§;
      }
      
      public function get §1`§() : Sprite
      {
         return this.§3i§;
      }
      
      public function §;!X§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§@<§.width / this.§@<§.height;
         this.§@<§.width = param1 + 600 / _loc3_;
         this.§@<§.height = param2 + 600 / _loc3_;
      }
   }
}
