package §4n§
{
   public class §!b§
   {
      
      public static const §&;§:int = 0;
      
      public static const §4!G§:int = 1;
      
      public static const §!!@§:int = 2;
      
      public static const §7!>§:int = 3;
      
      public static const §continue§:int = 4;
      
      public static const §5!E§:int = 5;
      
      private static var §!!3§:§!b§ = new §!b§(0,0,10,500,7.5,600,§&;§);
      
      private static var § !8§:§!b§ = new §!b§(0,0,10,500,7.5,600,§4!G§);
      
      private static var §,M§:§!b§ = new §!b§(0,0,15,1750,5,300,§7!>§);
      
      private static var §3!!§:§!b§ = new §!b§(0,0,8,1500,0,0,§5!E§);
      
      private static var §<V§:§!b§ = new §!b§(0,0,10,1500,5,150,§!!@§);
      
      private static var §%;§:§!b§ = new §!b§(0,0,5,10,7,275,§continue§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §7!N§:Number;
      
      private var §`C§:Number;
      
      private var § J§:Number;
      
      private var §8g§:Number;
      
      private var §`_§:int;
      
      private var §=a§:Vector.<§@!4§>;
      
      public function §!b§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:Vector.<§@!4§> = null)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§7!N§ = param3;
         this.§`C§ = param4;
         this.§ J§ = param5;
         this.§8g§ = param6;
         this.§`_§ = param7;
         this.§=a§ = param8;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number, param4:Vector.<§@!4§> = null) : §!b§
      {
         var _loc5_:§!b§ = null;
         switch(param1)
         {
            case §4!G§:
               _loc5_ = § !8§;
               break;
            case §!!@§:
               _loc5_ = §<V§;
               break;
            case §7!>§:
               _loc5_ = §,M§;
               break;
            case §5!E§:
               _loc5_ = §3!!§;
               break;
            case §continue§:
               _loc5_ = §%;§;
               break;
            default:
               _loc5_ = §!!3§;
         }
         return new §!b§(param2,param3,_loc5_.§@$§,_loc5_.push,_loc5_.§5!7§,_loc5_.damage,param1,param4);
      }
      
      public function get §@$§() : Number
      {
         return this.§7!N§;
      }
      
      public function get push() : Number
      {
         return this.§`C§;
      }
      
      public function get §5!7§() : Number
      {
         return this.§ J§;
      }
      
      public function get damage() : Number
      {
         return this.§8g§;
      }
      
      public function get type() : int
      {
         return this.§`_§;
      }
      
      public function get §#7§() : Vector.<§@!4§>
      {
         return this.§=a§;
      }
   }
}
