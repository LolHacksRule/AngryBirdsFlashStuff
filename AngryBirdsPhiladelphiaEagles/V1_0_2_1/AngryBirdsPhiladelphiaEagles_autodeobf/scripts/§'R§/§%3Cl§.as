package §'R§
{
   public class §<l§
   {
      
      public static const §12§:int = 0;
      
      public static const §`l§:int = 1;
      
      public static const §!W§:int = 2;
      
      public static const §3!'§:int = 3;
      
      public static const §2!8§:int = 4;
      
      private static var §0!C§:§<l§ = new §<l§(0,0,10,500,7.5,600,§12§);
      
      private static var §-N§:§<l§ = new §<l§(0,0,10,500,7.5,600,§`l§);
      
      private static var §<q§:§<l§ = new §<l§(0,0,15,1750,5,300,§3!'§);
      
      private static var §'X§:§<l§ = new §<l§(0,0,10,1500,5,150,§!W§);
      
      private static var §8!O§:§<l§ = new §<l§(0,0,5,10,7,275,§2!8§);
       
      
      public var x:Number;
      
      public var y:Number;
      
      private var §&!F§:Number;
      
      private var §%>§:Number;
      
      private var §3!!§:Number;
      
      private var §>c§:Number;
      
      private var §^U§:int;
      
      public function §<l§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.§&!F§ = param3;
         this.§%>§ = param4;
         this.§3!!§ = param5;
         this.§>c§ = param6;
         this.§^U§ = param7;
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §<l§
      {
         var _loc4_:§<l§ = null;
         switch(param1)
         {
            case §`l§:
               _loc4_ = §-N§;
               break;
            case §!W§:
               _loc4_ = §'X§;
               break;
            case §3!'§:
               _loc4_ = §<q§;
               break;
            case §2!8§:
               _loc4_ = §8!O§;
               break;
            default:
               _loc4_ = §0!C§;
         }
         return new §<l§(param2,param3,_loc4_.§;w§,_loc4_.push,_loc4_.§7!8§,_loc4_.damage,param1);
      }
      
      public function get §;w§() : Number
      {
         return this.§&!F§;
      }
      
      public function get push() : Number
      {
         return this.§%>§;
      }
      
      public function get §7!8§() : Number
      {
         return this.§3!!§;
      }
      
      public function get damage() : Number
      {
         return this.§>c§;
      }
      
      public function get type() : int
      {
         return this.§^U§;
      }
   }
}
