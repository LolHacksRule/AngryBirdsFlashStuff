package §0=§
{
   public class §9!E§
   {
      
      public static const §3v§:int = 0;
      
      public static const §3+§:int = 1;
      
      public static const §@t§:int = 2;
      
      public static const §5N§:int = 3;
      
      public static const §=!+§:int = 4;
      
      private static var §&!B§:§9!E§ = new §9!E§(0,0,10,500,7.5,600,§3v§);
      
      private static var §4i§:§9!E§ = new §9!E§(0,0,10,500,7.5,600,§3+§);
      
      private static var §0!+§:§9!E§ = new §9!E§(0,0,15,1750,5,300,§5N§);
      
      private static var §"!P§:§9!E§ = new §9!E§(0,0,10,1500,5,150,§@t§);
      
      private static var §]!8§:§9!E§ = new §9!E§(0,0,5,10,7,275,§=!+§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §^!J§:Number;
      
      private var §4l§:Number;
      
      private var §,W§:Number;
      
      private var §,!5§:Number;
      
      private var §<q§:int;
      
      public function §9!E§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§^!J§ = param3;
         this.§4l§ = param4;
         this.§,W§ = param5;
         this.§,!5§ = param6;
         this.§<q§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §9!E§
      {
         var _loc4_:§9!E§ = null;
         switch(param1)
         {
            case §3+§:
               _loc4_ = §4i§;
               break;
            case §@t§:
               _loc4_ = §"!P§;
               break;
            case §5N§:
               _loc4_ = §0!+§;
               break;
            case §=!+§:
               _loc4_ = §]!8§;
               break;
            default:
               _loc4_ = §&!B§;
         }
         return new §9!E§(param2,param3,_loc4_.§;e§,_loc4_.push,_loc4_.§%r§,_loc4_.damage,param1);
      }
      
      public function get §;e§() : Number
      {
         return this.§^!J§;
      }
      
      public function get push() : Number
      {
         return this.§4l§;
      }
      
      public function get §%r§() : Number
      {
         return this.§,W§;
      }
      
      public function get damage() : Number
      {
         return this.§,!5§;
      }
      
      public function get type() : int
      {
         return this.§<q§;
      }
   }
}
