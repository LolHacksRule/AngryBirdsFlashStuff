package §'!`§
{
   public class §6!5§
   {
      
      public static const §3!2§:int = 0;
      
      public static const §=!5§:int = 1;
      
      public static const §@E§:int = 2;
      
      public static const §%!=§:int = 3;
      
      public static const § !Q§:int = 4;
      
      private static var §<!T§:§6!5§ = new §6!5§(0,0,10,500,7.5,600,§3!2§);
      
      private static var §?<§:§6!5§ = new §6!5§(0,0,10,500,7.5,600,§=!5§);
      
      private static var §`G§:§6!5§ = new §6!5§(0,0,15,1750,5,300,§%!=§);
      
      private static var §<!E§:§6!5§ = new §6!5§(0,0,10,1500,5,150,§@E§);
      
      private static var §!t§:§6!5§ = new §6!5§(0,0,5,10,7,275,§ !Q§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §`!^§:Number;
      
      private var §1!W§:Number;
      
      private var §%;§:Number;
      
      private var §6Z§:Number;
      
      private var §4!O§:int;
      
      public function §6!5§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§`!^§ = param3;
         this.§1!W§ = param4;
         this.§%;§ = param5;
         this.§6Z§ = param6;
         this.§4!O§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §6!5§
      {
         var _loc4_:§6!5§ = null;
         switch(param1)
         {
            case §=!5§:
               _loc4_ = §?<§;
               break;
            case §@E§:
               _loc4_ = §<!E§;
               break;
            case §%!=§:
               _loc4_ = §`G§;
               break;
            case § !Q§:
               _loc4_ = §!t§;
               break;
            default:
               _loc4_ = §<!T§;
         }
         return new §6!5§(param2,param3,_loc4_.§@!C§,_loc4_.push,_loc4_.§^!T§,_loc4_.damage,param1);
      }
      
      public function get §@!C§() : Number
      {
         return this.§`!^§;
      }
      
      public function get push() : Number
      {
         return this.§1!W§;
      }
      
      public function get §^!T§() : Number
      {
         return this.§%;§;
      }
      
      public function get damage() : Number
      {
         return this.§6Z§;
      }
      
      public function get type() : int
      {
         return this.§4!O§;
      }
   }
}
