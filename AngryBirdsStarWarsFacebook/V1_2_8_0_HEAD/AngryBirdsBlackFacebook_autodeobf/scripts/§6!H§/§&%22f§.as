package §6!H§
{
   import §1!i§.§,#_§;
   
   public class §&"f§
   {
      
      public static const §0!o§:String = "red";
      
      public static const §7Y§:String = "big";
      
      public static const §<#P§:String = "black";
      
      public static const § "o§:String = "blue";
      
      public static const §4!W§:String = "yellow";
      
      public static const §[!J§:String = "pink";
       
      
      public var red:int;
      
      public var §8#<§:int;
      
      public var black:int;
      
      public var yellow:int;
      
      public var blue:int;
      
      public var pink:int;
      
      public function §&"f§()
      {
         super();
      }
      
      public function update(param1:§,#_§) : void
      {
         this.red = param1[§0!o§];
         this.§8#<§ = param1[§7Y§];
         this.black = param1[§<#P§];
         this.yellow = param1[§4!W§];
         this.blue = param1[§ "o§];
         this.pink = param1[§[!J§];
      }
      
      public function §+"l§(param1:String) : int
      {
         switch(param1)
         {
            case §0!o§:
               return this.red;
            case §7Y§:
               return this.§8#<§;
            case §<#P§:
               return this.black;
            case § "o§:
               return this.blue;
            case §4!W§:
               return this.yellow;
            case §[!J§:
               return this.pink;
            default:
               throw new Error("Unknown id.");
         }
      }
   }
}
