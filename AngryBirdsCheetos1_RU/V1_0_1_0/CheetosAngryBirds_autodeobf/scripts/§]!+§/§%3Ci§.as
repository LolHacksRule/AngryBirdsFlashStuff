package §]!+§
{
   public class §<i§
   {
      
      public static const §#!P§:int = 0;
      
      public static const §"Y§:int = 1;
      
      public static const §`N§:int = 2;
      
      public static const § !_§:int = 3;
      
      public static const §,f§:int = 4;
      
      private static var §^8§:§<i§ = new §<i§(0,0,10,500,7.5,600,§#!P§);
      
      private static var §!!?§:§<i§ = new §<i§(0,0,10,500,7.5,600,§"Y§);
      
      private static var §;Y§:§<i§ = new §<i§(0,0,15,1750,5,300,§ !_§);
      
      private static var TNT:§<i§ = new §<i§(0,0,10,1500,5,150,§`N§);
      
      private static var §0+§:§<i§ = new §<i§(0,0,5,10,7,275,§,f§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §3!B§:Number;
      
      private var §3E§:Number;
      
      private var §[u§:Number;
      
      private var §3F§:Number;
      
      private var §>!X§:int;
      
      public function §<i§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§3!B§ = param3;
         this.§3E§ = param4;
         this.§[u§ = param5;
         this.§3F§ = param6;
         this.§>!X§ = param7;
      }
      
      public static function §42§(param1:int, param2:Number, param3:Number) : §<i§
      {
         var _loc4_:§<i§ = null;
         switch(param1)
         {
            case §"Y§:
               _loc4_ = §!!?§;
               break;
            case §`N§:
               _loc4_ = TNT;
               break;
            case § !_§:
               _loc4_ = §;Y§;
               break;
            case §,f§:
               _loc4_ = §0+§;
               break;
            default:
               _loc4_ = §^8§;
         }
         return new §<i§(param2,param3,_loc4_.§7O§,_loc4_.push,_loc4_.§5!R§,_loc4_.damage,param1);
      }
      
      public function get §7O§() : Number
      {
         return this.§3!B§;
      }
      
      public function get push() : Number
      {
         return this.§3E§;
      }
      
      public function get §5!R§() : Number
      {
         return this.§[u§;
      }
      
      public function get damage() : Number
      {
         return this.§3F§;
      }
      
      public function get type() : int
      {
         return this.§>!X§;
      }
   }
}
