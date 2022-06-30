package §"W§
{
   public class §<!#§
   {
      
      public static const §>!6§:int = 0;
      
      public static const §32§:int = 1;
      
      public static const §1a§:int = 2;
      
      public static const §`k§:int = 3;
      
      public static const §[!$§:int = 4;
      
      private static var §7!e§:§<!#§ = new §<!#§(0,0,10,500,7.5,600,§>!6§);
      
      private static var §"g§:§<!#§ = new §<!#§(0,0,10,500,7.5,600,§32§);
      
      private static var §[w§:§<!#§ = new §<!#§(0,0,15,1750,5,300,§`k§);
      
      private static var §>!A§:§<!#§ = new §<!#§(0,0,10,1500,5,150,§1a§);
      
      private static var §35§:§<!#§ = new §<!#§(0,0,5,10,7,275,§[!$§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §6!8§:Number;
      
      private var §4q§:Number;
      
      private var §]!T§:Number;
      
      private var §7D§:Number;
      
      private var §!,§:int;
      
      public function §<!#§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§6!8§ = param3;
         this.§4q§ = param4;
         this.§]!T§ = param5;
         this.§7D§ = param6;
         this.§!,§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §<!#§
      {
         var _loc4_:§<!#§ = null;
         switch(param1)
         {
            case §32§:
               _loc4_ = §"g§;
               break;
            case §1a§:
               _loc4_ = §>!A§;
               break;
            case §`k§:
               _loc4_ = §[w§;
               break;
            case §[!$§:
               _loc4_ = §35§;
               break;
            default:
               _loc4_ = §7!e§;
         }
         return new §<!#§(param2,param3,_loc4_.§1o§,_loc4_.push,_loc4_.§4!c§,_loc4_.damage,param1);
      }
      
      public function get §1o§() : Number
      {
         return this.§6!8§;
      }
      
      public function get push() : Number
      {
         return this.§4q§;
      }
      
      public function get §4!c§() : Number
      {
         return this.§]!T§;
      }
      
      public function get damage() : Number
      {
         return this.§7D§;
      }
      
      public function get type() : int
      {
         return this.§!,§;
      }
   }
}
