package §`!X§
{
   public class §0+§
   {
      
      public static const §&!C§:int = 0;
      
      public static const §=t§:int = 1;
      
      public static const §7!G§:int = 2;
      
      public static const §;w§:int = 3;
      
      public static const §3Z§:int = 4;
      
      private static var §7t§:§0+§ = new §0+§(0,0,10,500,7.5,600,§&!C§);
      
      private static var §?!6§:§0+§ = new §0+§(0,0,10,500,7.5,600,§=t§);
      
      private static var §2!H§:§0+§ = new §0+§(0,0,15,1750,5,300,§;w§);
      
      private static var §9r§:§0+§ = new §0+§(0,0,10,1500,5,150,§7!G§);
      
      private static var §2!D§:§0+§ = new §0+§(0,0,5,10,7,275,§3Z§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §<!;§:Number;
      
      private var §[b§:Number;
      
      private var §=!!§:Number;
      
      private var §7!=§:Number;
      
      private var §<]§:int;
      
      public function §0+§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§<!;§ = param3;
         this.§[b§ = param4;
         this.§=!!§ = param5;
         this.§7!=§ = param6;
         this.§<]§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §0+§
      {
         var _loc4_:§0+§ = null;
         switch(param1)
         {
            case §=t§:
               _loc4_ = §?!6§;
               break;
            case §7!G§:
               _loc4_ = §9r§;
               break;
            case §;w§:
               _loc4_ = §2!H§;
               break;
            case §3Z§:
               _loc4_ = §2!D§;
               break;
            default:
               _loc4_ = §7t§;
         }
         return new §0+§(param2,param3,_loc4_.§9x§,_loc4_.push,_loc4_.§]p§,_loc4_.damage,param1);
      }
      
      public function get §9x§() : Number
      {
         return this.§<!;§;
      }
      
      public function get push() : Number
      {
         return this.§[b§;
      }
      
      public function get §]p§() : Number
      {
         return this.§=!!§;
      }
      
      public function get damage() : Number
      {
         return this.§7!=§;
      }
      
      public function get type() : int
      {
         return this.§<]§;
      }
   }
}
