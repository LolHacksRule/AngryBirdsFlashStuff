package §9G§
{
   import §-![§.§5!<§;
   import §-![§.DisplayObject;
   import §-![§.Sprite;
   import com.angrybirds.§4"6§;
   
   public class §%!U§ extends Sprite
   {
       
      
      protected var §,!Q§:Sprite;
      
      protected var §6D§:DisplayObject;
      
      protected var § L§:Sprite;
      
      public function §%!U§()
      {
         super();
         addChild(this.§ L§ = new Sprite());
         this.§ L§.addChild(this.§,!Q§ = new Sprite());
         this.§6D§ = new §5!<§(2,2,0);
         this.§6D§.width = §4"6§.§,_§;
         this.§6D§.height = §4"6§.§-v§;
         addChild(this.§6D§);
         this.§6D§.alpha = 0.5;
      }
      
      public function get §?!R§() : Sprite
      {
         return this.§,!Q§;
      }
      
      public function get §8!S§() : DisplayObject
      {
         return this.§6D§;
      }
      
      public function get §++§() : Sprite
      {
         return this.§ L§;
      }
      
      public function §1o§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§6D§.width / this.§6D§.height;
         this.§6D§.width = param1 + 600 / _loc3_;
         this.§6D§.height = param2 + 600 / _loc3_;
      }
   }
}
