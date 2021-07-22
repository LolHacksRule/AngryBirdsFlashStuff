package §3!#§
{
   public class §0"A§
   {
      
      public static const §&§:int = 0;
      
      public static const §>"%§:int = 1;
      
      public static const §,5§:int = 2;
      
      public static const §!!K§:int = 3;
      
      public static const §&`§:int = 4;
      
      public static const §5"=§:int = 5;
      
      private static var §+]§:§0"A§ = new §0"A§(0,0,10,500,7.5,600,§&§);
      
      private static var §;4§:§0"A§ = new §0"A§(0,0,10,500,7.5,600,§>"%§);
      
      private static var §;Z§:§0"A§ = new §0"A§(0,0,15,1750,5,300,§!!K§);
      
      private static var §5f§:§0"A§ = new §0"A§(0,0,8,1500,0,0,§5"=§);
      
      private static var §5!%§:§0"A§ = new §0"A§(0,0,10,1500,5,150,§,5§);
      
      private static var §2!D§:§0"A§ = new §0"A§(0,0,5,10,7,275,§&`§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §#O§:Number;
      
      private var §use§:Number;
      
      private var §==§:Number;
      
      private var §1!i§:Number;
      
      private var §6#§:int;
      
      private var §@!#§:Vector.<§5"A§>;
      
      public function §0"A§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:Vector.<§5"A§> = null)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§#O§ = param3;
         this.§use§ = param4;
         this.§==§ = param5;
         this.§1!i§ = param6;
         this.§6#§ = param7;
         this.§@!#§ = param8;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number, param4:Vector.<§5"A§> = null) : §0"A§
      {
         var _loc5_:§0"A§ = null;
         switch(param1)
         {
            case §>"%§:
               _loc5_ = §;4§;
               break;
            case §,5§:
               _loc5_ = §5!%§;
               break;
            case §!!K§:
               _loc5_ = §;Z§;
               break;
            case §5"=§:
               _loc5_ = §5f§;
               break;
            case §&`§:
               _loc5_ = §2!D§;
               break;
            default:
               _loc5_ = §+]§;
         }
         return new §0"A§(param2,param3,_loc5_.§3"H§,_loc5_.push,_loc5_.§%!§,_loc5_.damage,param1,param4);
      }
      
      public function get §3"H§() : Number
      {
         return this.§#O§;
      }
      
      public function get push() : Number
      {
         return this.§use§;
      }
      
      public function get §%!§() : Number
      {
         return this.§==§;
      }
      
      public function get damage() : Number
      {
         return this.§1!i§;
      }
      
      public function get type() : int
      {
         return this.§6#§;
      }
      
      public function get §[!l§() : Vector.<§5"A§>
      {
         return this.§@!#§;
      }
   }
}
