package §<L§
{
   import §#M§.§+!Z§;
   import §2![§.§7Q§;
   import §2![§.DisplayObject;
   import §2![§.Sprite;
   
   public class §?,§ extends Sprite
   {
       
      
      protected var §@!`§:Sprite;
      
      protected var §5?§:DisplayObject;
      
      protected var §8!Q§:Sprite;
      
      public function §?,§()
      {
         super();
         addChild(this.§8!Q§ = new Sprite());
         this.§8!Q§.addChild(this.§@!`§ = new Sprite());
         this.§5?§ = new §7Q§(2,2,0);
         this.§5?§.width = §+!Z§.§]?§;
         this.§5?§.height = §+!Z§.§@+§;
         addChild(this.§5?§);
         this.§5?§.alpha = 0.5;
      }
      
      public function get §+!o§() : Sprite
      {
         return this.§@!`§;
      }
      
      public function get §&r§() : DisplayObject
      {
         return this.§5?§;
      }
      
      public function get §%z§() : Sprite
      {
         return this.§8!Q§;
      }
      
      public function §2!h§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§5?§.width / this.§5?§.height;
         this.§5?§.width = param1 + 600 / _loc3_;
         this.§5?§.height = param2 + 600 / _loc3_;
      }
   }
}
