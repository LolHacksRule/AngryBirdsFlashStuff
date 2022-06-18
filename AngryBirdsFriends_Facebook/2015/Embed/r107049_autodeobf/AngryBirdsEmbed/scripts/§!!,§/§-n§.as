package §!!,§
{
   public class §-n§
   {
      
      public static const §56§:int = 0;
      
      public static const §]3§:int = 1;
      
      public static const §&C§:int = 2;
      
      public static const §='§:int = 3;
      
      public static const §9§:int = 4;
      
      public static const §!k§:int = 5;
      
      private static var §35§:§-n§ = new §-n§(0,0,10,500,7.5,600,§56§);
      
      private static var §!!$§:§-n§ = new §-n§(0,0,10,500,7.5,600,§]3§);
      
      private static var §in§:§-n§ = new §-n§(0,0,15,2000,5,300,§='§);
      
      private static var §!Y§:§-n§ = new §-n§(0,0,8,2250,0,0,§!k§);
      
      private static var §@_§:§-n§ = new §-n§(0,0,10,1500,5,150,§&C§);
      
      private static var § Q§:§-n§ = new §-n§(0,0,5,10,7,275,§9§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §,@§:Number;
      
      private var §+!8§:Number;
      
      private var §@y§:Number;
      
      private var §%%§:Number;
      
      private var §[`§:int;
      
      private var §;Z§:Vector.<§`Q§>;
      
      public function §-n§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:Vector.<§`Q§> = null)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§,@§ = param3;
         this.§+!8§ = param4;
         this.§@y§ = param5;
         this.§%%§ = param6;
         this.§[`§ = param7;
         this.§;Z§ = param8;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number, param4:Vector.<§`Q§> = null) : §-n§
      {
         var _loc5_:§-n§ = null;
         switch(param1)
         {
            case §]3§:
               _loc5_ = §!!$§;
               break;
            case §&C§:
               _loc5_ = §@_§;
               break;
            case §='§:
               _loc5_ = §in§;
               break;
            case §!k§:
               _loc5_ = §!Y§;
               break;
            case §9§:
               _loc5_ = § Q§;
               break;
            default:
               _loc5_ = §35§;
         }
         return new §-n§(param2,param3,_loc5_.§%!"§,_loc5_.push,_loc5_.§^!'§,_loc5_.damage,param1,param4);
      }
      
      public function get §%!"§() : Number
      {
         return this.§,@§;
      }
      
      public function get push() : Number
      {
         return this.§+!8§;
      }
      
      public function get §^!'§() : Number
      {
         return this.§@y§;
      }
      
      public function get damage() : Number
      {
         return this.§%%§;
      }
      
      public function get type() : int
      {
         return this.§[`§;
      }
      
      public function get §6x§() : Vector.<§`Q§>
      {
         return this.§;Z§;
      }
   }
}
