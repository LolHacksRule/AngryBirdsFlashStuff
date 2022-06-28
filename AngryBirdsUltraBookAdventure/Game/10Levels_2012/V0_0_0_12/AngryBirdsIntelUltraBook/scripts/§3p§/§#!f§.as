package §3p§
{
   public class §#!f§
   {
      
      public static const §?6§:int = 0;
      
      public static const §!q§:int = 1;
      
      public static const §#y§:int = 2;
      
      public static const §[!>§:int = 3;
      
      public static const §<v§:int = 4;
      
      private static var DEFAULT:§#!f§ = new §#!f§(0,0,10,500,7.5,600,§?6§);
      
      private static var §'!A§:§#!f§ = new §#!f§(0,0,10,500,7.5,600,§!q§);
      
      private static var §7!§:§#!f§ = new §#!f§(0,0,15,1750,5,300,§[!>§);
      
      private static var §;!I§:§#!f§ = new §#!f§(0,0,10,1500,5,150,§#y§);
      
      private static var §%!h§:§#!f§ = new §#!f§(0,0,5,10,7,275,§<v§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §'!+§:Number;
      
      private var §^!8§:Number;
      
      private var §8f§:Number;
      
      private var §&!#§:Number;
      
      private var §00§:int;
      
      public function §#!f§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§'!+§ = param3;
         this.§^!8§ = param4;
         this.§8f§ = param5;
         this.§&!#§ = param6;
         this.§00§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §#!f§
      {
         var _loc4_:§#!f§ = null;
         switch(param1)
         {
            case §!q§:
               _loc4_ = §'!A§;
               break;
            case §#y§:
               _loc4_ = §;!I§;
               break;
            case §[!>§:
               _loc4_ = §7!§;
               break;
            case §<v§:
               _loc4_ = §%!h§;
               break;
            default:
               _loc4_ = DEFAULT;
         }
         return new §#!f§(param2,param3,_loc4_.pushRadius,_loc4_.push,_loc4_.damageRadius,_loc4_.damage,param1);
      }
      
      public function get pushRadius() : Number
      {
         return this.§'!+§;
      }
      
      public function get push() : Number
      {
         return this.§^!8§;
      }
      
      public function get damageRadius() : Number
      {
         return this.§8f§;
      }
      
      public function get damage() : Number
      {
         return this.§&!#§;
      }
      
      public function get type() : int
      {
         return this.§00§;
      }
   }
}
