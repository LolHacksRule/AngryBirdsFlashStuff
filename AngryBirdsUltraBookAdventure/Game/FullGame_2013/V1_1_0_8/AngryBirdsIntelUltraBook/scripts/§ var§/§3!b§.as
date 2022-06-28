package § var§
{
   public class §3!b§
   {
      
      public static const §%!G§:int = 0;
      
      public static const § !>§:int = 1;
      
      public static const §1!+§:int = 2;
      
      public static const §]`§:int = 3;
      
      public static const §3y§:int = 4;
      
      public static const §]!-§:int = 5;
      
      private static var §,!Q§:§3!b§ = new §3!b§(0,0,10,500,7.5,600,§%!G§);
      
      private static var §71§:§3!b§ = new §3!b§(0,0,10,500,7.5,600,§ !>§);
      
      private static var §"4§:§3!b§ = new §3!b§(0,0,15,1750,5,300,§]`§);
      
      private static var §#f§:§3!b§ = new §3!b§(0,0,8,1500,0,0,§]!-§);
      
      private static var § !r§:§3!b§ = new §3!b§(0,0,10,1500,5,150,§1!+§);
      
      private static var §7!&§:§3!b§ = new §3!b§(0,0,5,10,7,275,§3y§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §9!9§:Number;
      
      private var §4!0§:Number;
      
      private var §<!t§:Number;
      
      private var §-!J§:Number;
      
      private var §;!L§:int;
      
      private var §?,§:Vector.<§!u§>;
      
      public function §3!b§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:Vector.<§!u§> = null)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§9!9§ = param3;
         this.§4!0§ = param4;
         this.§<!t§ = param5;
         this.§-!J§ = param6;
         this.§;!L§ = param7;
         this.§?,§ = param8;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number, param4:Vector.<§!u§> = null) : §3!b§
      {
         var _loc5_:§3!b§ = null;
         switch(param1)
         {
            case § !>§:
               _loc5_ = §71§;
               break;
            case §1!+§:
               _loc5_ = § !r§;
               break;
            case §]`§:
               _loc5_ = §"4§;
               break;
            case §]!-§:
               _loc5_ = §#f§;
               break;
            case §3y§:
               _loc5_ = §7!&§;
               break;
            default:
               _loc5_ = §,!Q§;
         }
         return new §3!b§(param2,param3,_loc5_.§61§,_loc5_.push,_loc5_.§0!0§,_loc5_.damage,param1,param4);
      }
      
      public function get §61§() : Number
      {
         return this.§9!9§;
      }
      
      public function get push() : Number
      {
         return this.§4!0§;
      }
      
      public function get §0!0§() : Number
      {
         return this.§<!t§;
      }
      
      public function get damage() : Number
      {
         return this.§-!J§;
      }
      
      public function get type() : int
      {
         return this.§;!L§;
      }
      
      public function get §']§() : Vector.<§!u§>
      {
         return this.§?,§;
      }
   }
}
