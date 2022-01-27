package §'"A§
{
   import §+d§.§2!g§;
   
   public class §##4§
   {
      
      public static const §42§:String = "red";
      
      public static const §5!g§:String = "big";
      
      public static const §?!v§:String = "black";
      
      public static const §^"+§:String = "blue";
      
      public static const §`!B§:String = "yellow";
      
      public static const §'m§:String = "pink";
       
      
      public var red:int;
      
      public var §0"0§:int;
      
      public var black:int;
      
      public var yellow:int;
      
      public var blue:int;
      
      public var pink:int;
      
      public function §##4§()
      {
         super();
      }
      
      public function update(param1:§2!g§) : void
      {
         this.red = param1[§42§];
         this.§0"0§ = param1[§5!g§];
         this.black = param1[§?!v§];
         this.yellow = param1[§`!B§];
         this.blue = param1[§^"+§];
         this.pink = param1[§'m§];
      }
      
      public function §1$§(param1:String) : int
      {
         switch(param1)
         {
            case §42§:
               return this.red;
            case §5!g§:
               return this.§0"0§;
            case §?!v§:
               return this.black;
            case §^"+§:
               return this.blue;
            case §`!B§:
               return this.yellow;
            case §'m§:
               return this.pink;
            default:
               throw new Error("Unknown id.");
         }
      }
   }
}
