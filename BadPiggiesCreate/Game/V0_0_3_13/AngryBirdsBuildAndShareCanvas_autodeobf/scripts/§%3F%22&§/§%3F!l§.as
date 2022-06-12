package §?"&§
{
   public class §?!l§
   {
      
      public static const §5B§:int = 0;
      
      public static const §;A§:int = 1;
      
      public static const §,!N§:int = 2;
      
      public static const §@"-§:int = 3;
      
      public static const § ]§:int = 4;
      
      public static const §@!7§:int = 5;
      
      private static var §`!<§:§?!l§ = new §?!l§(0,0,10,500,7.5,600,§5B§);
      
      private static var §!b§:§?!l§ = new §?!l§(0,0,10,500,7.5,600,§;A§);
      
      private static var §2"9§:§?!l§ = new §?!l§(0,0,15,1750,5,300,§@"-§);
      
      private static var §?P§:§?!l§ = new §?!l§(0,0,8,1500,0,0,§@!7§);
      
      private static var §7"9§:§?!l§ = new §?!l§(0,0,10,1500,5,150,§,!N§);
      
      private static var §>s§:§?!l§ = new §?!l§(0,0,5,10,7,275,§ ]§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §@!C§:Number;
      
      private var §1X§:Number;
      
      private var §"k§:Number;
      
      private var §3!9§:Number;
      
      private var §4!I§:int;
      
      private var §94§:Vector.<§"!q§>;
      
      public function §?!l§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:Vector.<§"!q§> = null)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§@!C§ = param3;
         this.§1X§ = param4;
         this.§"k§ = param5;
         this.§3!9§ = param6;
         this.§4!I§ = param7;
         this.§94§ = param8;
      }
      
      public static function §=g§(param1:int, param2:Number, param3:Number, param4:Vector.<§"!q§> = null) : §?!l§
      {
         var _loc5_:§?!l§ = null;
         switch(param1)
         {
            case §;A§:
               _loc5_ = §!b§;
               break;
            case §,!N§:
               _loc5_ = §7"9§;
               break;
            case §@"-§:
               _loc5_ = §2"9§;
               break;
            case §@!7§:
               _loc5_ = §?P§;
               break;
            case § ]§:
               _loc5_ = §>s§;
               break;
            default:
               _loc5_ = §`!<§;
         }
         return new §?!l§(param2,param3,_loc5_.§["2§,_loc5_.push,_loc5_.§4!N§,_loc5_.damage,param1,param4);
      }
      
      public function get §["2§() : Number
      {
         return this.§@!C§;
      }
      
      public function get push() : Number
      {
         return this.§1X§;
      }
      
      public function get §4!N§() : Number
      {
         return this.§"k§;
      }
      
      public function get damage() : Number
      {
         return this.§3!9§;
      }
      
      public function get type() : int
      {
         return this.§4!I§;
      }
      
      public function get §?!b§() : Vector.<§"!q§>
      {
         return this.§94§;
      }
   }
}
