package §^!$§
{
   public class §;Y§
   {
      
      public static const §1!V§:int = 0;
      
      public static const §=!=§:int = 1;
      
      public static const §&!c§:int = 2;
      
      public static const §3@§:int = 3;
      
      public static const §@!K§:int = 4;
      
      private static var §0!3§:§;Y§ = new §;Y§(0,0,10,500,7.5,600,§1!V§);
      
      private static var §^!E§:§;Y§ = new §;Y§(0,0,10,500,7.5,600,§=!=§);
      
      private static var §9!<§:§;Y§ = new §;Y§(0,0,15,1750,5,300,§3@§);
      
      private static var §=!I§:§;Y§ = new §;Y§(0,0,10,1500,5,150,§&!c§);
      
      private static var §8!2§:§;Y§ = new §;Y§(0,0,5,10,7,275,§@!K§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §@!d§:Number;
      
      private var §^!O§:Number;
      
      private var §>![§:Number;
      
      private var §]!;§:Number;
      
      private var §;6§:int;
      
      public function §;Y§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§@!d§ = param3;
         this.§^!O§ = param4;
         this.§>![§ = param5;
         this.§]!;§ = param6;
         this.§;6§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §;Y§
      {
         var _loc4_:§;Y§ = null;
         switch(param1)
         {
            case §=!=§:
               _loc4_ = §^!E§;
               break;
            case §&!c§:
               _loc4_ = §=!I§;
               break;
            case §3@§:
               _loc4_ = §9!<§;
               break;
            case §@!K§:
               _loc4_ = §8!2§;
               break;
            default:
               _loc4_ = §0!3§;
         }
         return new §;Y§(param2,param3,_loc4_.§>>§,_loc4_.push,_loc4_.§%A§,_loc4_.damage,param1);
      }
      
      public function get §>>§() : Number
      {
         return this.§@!d§;
      }
      
      public function get push() : Number
      {
         return this.§^!O§;
      }
      
      public function get §%A§() : Number
      {
         return this.§>![§;
      }
      
      public function get damage() : Number
      {
         return this.§]!;§;
      }
      
      public function get type() : int
      {
         return this.§;6§;
      }
   }
}
