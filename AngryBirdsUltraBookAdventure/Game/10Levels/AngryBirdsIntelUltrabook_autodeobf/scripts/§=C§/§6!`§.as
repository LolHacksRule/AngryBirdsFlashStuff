package §=C§
{
   import §6!!§.§[!T§;
   import §]!@§.§ ?§;
   
   public class §6!`§ extends §[!T§
   {
      
      public static const TYPE_BOMB_POWERUP:int = 5;
      
      private static var BOMB_POWERUP:§[!T§ = new §6!`§(0,0,§ ?§.§2=§,§ ?§.§,T§,§ ?§.§[!3§,§ ?§.§+!H§,TYPE_BOMB_POWERUP);
       
      
      public function §6!`§(x:Number, y:Number, pushRadius:Number, push:Number, damageRadius:Number, damage:Number, explosionType:int = 0)
      {
         super(x,y,pushRadius,push,damageRadius,damage,explosionType);
      }
      
      public static function createExplosion(type:int, x:Number, y:Number) : §[!T§
      {
         var base:§[!T§ = null;
         switch(type)
         {
            case TYPE_BOMB_POWERUP:
               base = BOMB_POWERUP;
               return new §[!T§(x,y,base.pushRadius,base.push,base.damageRadius,base.damage,type);
            default:
               return §[!T§.createExplosion(type,x,y);
         }
      }
   }
}
