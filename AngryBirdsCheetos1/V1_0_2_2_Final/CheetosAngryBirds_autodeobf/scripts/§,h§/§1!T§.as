package §,h§
{
   public class §1!T§
   {
      
      public static const §>!$§:int = 0;
      
      public static const § 9§:int = 1;
      
      public static const §-!Z§:int = 2;
      
      public static const §,!^§:int = 3;
      
      public static const §`!D§:int = 4;
      
      private static var §%!"§:§1!T§ = new §1!T§(0,0,10,500,7.5,600,§>!$§);
      
      private static var §1!8§:§1!T§ = new §1!T§(0,0,10,500,7.5,600,§ 9§);
      
      private static var §7K§:§1!T§ = new §1!T§(0,0,15,1750,5,300,§,!^§);
      
      private static var TNT:§1!T§ = new §1!T§(0,0,10,1500,5,150,§-!Z§);
      
      private static var §4R§:§1!T§ = new §1!T§(0,0,5,10,7,275,§`!D§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §<!2§:Number;
      
      private var §+!L§:Number;
      
      private var §<6§:Number;
      
      private var §'U§:Number;
      
      private var §`Z§:int;
      
      public function §1!T§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§<!2§ = param3;
         this.§+!L§ = param4;
         this.§<6§ = param5;
         this.§'U§ = param6;
         this.§`Z§ = param7;
      }
      
      public static function §%!J§(param1:int, param2:Number, param3:Number) : §1!T§
      {
         var _loc4_:§1!T§ = null;
         switch(param1)
         {
            case § 9§:
               _loc4_ = §1!8§;
               break;
            case §-!Z§:
               _loc4_ = TNT;
               break;
            case §,!^§:
               _loc4_ = §7K§;
               break;
            case §`!D§:
               _loc4_ = §4R§;
               break;
            default:
               _loc4_ = §%!"§;
         }
         return new §1!T§(param2,param3,_loc4_.§0k§,_loc4_.push,_loc4_.§<!&§,_loc4_.damage,param1);
      }
      
      public function get §0k§() : Number
      {
         return this.§<!2§;
      }
      
      public function get push() : Number
      {
         return this.§+!L§;
      }
      
      public function get §<!&§() : Number
      {
         return this.§<6§;
      }
      
      public function get damage() : Number
      {
         return this.§'U§;
      }
      
      public function get type() : int
      {
         return this.§`Z§;
      }
   }
}
