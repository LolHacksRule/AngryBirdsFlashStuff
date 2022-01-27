package §@b§
{
   import §7A§.§5"2§;
   
   public class §-";§
   {
      
      public static const §"N§:String = "red";
      
      public static const §?#&§:String = "big";
      
      public static const §%"H§:String = "black";
      
      public static const §-#5§:String = "blue";
      
      public static const §4"]§:String = "yellow";
      
      public static const §;!8§:String = "pink";
       
      
      public var red:int;
      
      public var §>!d§:int;
      
      public var black:int;
      
      public var yellow:int;
      
      public var blue:int;
      
      public var pink:int;
      
      public function §-";§()
      {
         super();
      }
      
      public function update(param1:§5"2§) : void
      {
         this.red = param1[§"N§];
         this.§>!d§ = param1[§?#&§];
         this.black = param1[§%"H§];
         this.yellow = param1[§4"]§];
         this.blue = param1[§-#5§];
         this.pink = param1[§;!8§];
      }
      
      public function §6"4§(param1:String) : int
      {
         switch(param1)
         {
            case §"N§:
               return this.red;
            case §?#&§:
               return this.§>!d§;
            case §%"H§:
               return this.black;
            case §-#5§:
               return this.blue;
            case §4"]§:
               return this.yellow;
            case §;!8§:
               return this.pink;
            default:
               throw new Error("Unknown id.");
         }
      }
   }
}
