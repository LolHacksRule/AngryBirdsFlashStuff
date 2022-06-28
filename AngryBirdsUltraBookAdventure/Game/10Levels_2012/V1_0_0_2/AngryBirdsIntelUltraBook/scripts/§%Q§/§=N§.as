package §%Q§
{
   public class §=N§
   {
      
      public static const §[!6§:int = 0;
      
      public static const §;!P§:int = 1;
      
      public static const §;!I§:int = 2;
      
      public static const § w§:int = 3;
      
      public static const §+!6§:int = 4;
      
      private static var §'4§:§=N§ = new §=N§(0,0,10,500,7.5,600,§[!6§);
      
      private static var §!?§:§=N§ = new §=N§(0,0,10,500,7.5,600,§;!P§);
      
      private static var §6D§:§=N§ = new §=N§(0,0,15,1750,5,300,§ w§);
      
      private static var §0!9§:§=N§ = new §=N§(0,0,10,1500,5,150,§;!I§);
      
      private static var §<!w§:§=N§ = new §=N§(0,0,5,10,7,275,§+!6§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §0!a§:Number;
      
      private var §#!i§:Number;
      
      private var §>!p§:Number;
      
      private var §2!O§:Number;
      
      private var §,s§:int;
      
      public function §=N§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§0!a§ = param3;
         this.§#!i§ = param4;
         this.§>!p§ = param5;
         this.§2!O§ = param6;
         this.§,s§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §=N§
      {
         var _loc4_:§=N§ = null;
         switch(param1)
         {
            case §;!P§:
               _loc4_ = §!?§;
               break;
            case §;!I§:
               _loc4_ = §0!9§;
               break;
            case § w§:
               _loc4_ = §6D§;
               break;
            case §+!6§:
               _loc4_ = §<!w§;
               break;
            default:
               _loc4_ = §'4§;
         }
         return new §=N§(param2,param3,_loc4_.§@!§,_loc4_.push,_loc4_.§8!K§,_loc4_.damage,param1);
      }
      
      public function get §@!§() : Number
      {
         return this.§0!a§;
      }
      
      public function get push() : Number
      {
         return this.§#!i§;
      }
      
      public function get §8!K§() : Number
      {
         return this.§>!p§;
      }
      
      public function get damage() : Number
      {
         return this.§2!O§;
      }
      
      public function get type() : int
      {
         return this.§,s§;
      }
   }
}
