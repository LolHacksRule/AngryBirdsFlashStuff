package §?!8§
{
   public class §2-§
   {
      
      public static const §35§:int = 0;
      
      public static const §9!K§:int = 1;
      
      public static const §[^§:int = 2;
      
      public static const §76§:int = 3;
      
      public static const §?<§:int = 4;
      
      public static const §7!F§:int = 5;
      
      private static var §<!?§:§2-§ = new §2-§(0,0,10,500,7.5,600,§35§);
      
      private static var §"!!§:§2-§ = new §2-§(0,0,10,500,7.5,600,§9!K§);
      
      private static var §=!@§:§2-§ = new §2-§(0,0,15,2000,5,300,§76§);
      
      private static var §0r§:§2-§ = new §2-§(0,0,8,2250,0,0,§7!F§);
      
      private static var § !O§:§2-§ = new §2-§(0,0,10,1500,5,150,§[^§);
      
      private static var § !0§:§2-§ = new §2-§(0,0,5,10,7,275,§?<§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §+!3§:Number;
      
      private var §9F§:Number;
      
      private var §%m§:Number;
      
      private var §;X§:Number;
      
      private var §"q§:int;
      
      private var §4a§:Vector.<§]f§>;
      
      public function §2-§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:Vector.<§]f§> = null)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§+!3§ = param3;
         this.§9F§ = param4;
         this.§%m§ = param5;
         this.§;X§ = param6;
         this.§"q§ = param7;
         this.§4a§ = param8;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number, param4:Vector.<§]f§> = null) : §2-§
      {
         var _loc5_:§2-§ = null;
         switch(param1)
         {
            case §9!K§:
               _loc5_ = §"!!§;
               break;
            case §[^§:
               _loc5_ = § !O§;
               break;
            case §76§:
               _loc5_ = §=!@§;
               break;
            case §7!F§:
               _loc5_ = §0r§;
               break;
            case §?<§:
               _loc5_ = § !0§;
               break;
            default:
               _loc5_ = §<!?§;
         }
         return new §2-§(param2,param3,_loc5_.§`!>§,_loc5_.push,_loc5_.§super§,_loc5_.damage,param1,param4);
      }
      
      public function get §`!>§() : Number
      {
         return this.§+!3§;
      }
      
      public function get push() : Number
      {
         return this.§9F§;
      }
      
      public function get §super§() : Number
      {
         return this.§%m§;
      }
      
      public function get damage() : Number
      {
         return this.§;X§;
      }
      
      public function get type() : int
      {
         return this.§"q§;
      }
      
      public function get §!+§() : Vector.<§]f§>
      {
         return this.§4a§;
      }
   }
}
