package §-^§
{
   import §3Y§.§^!6§;
   import §?A§.§5a§;
   
   public class §?p§ extends §^!6§
   {
      
      public static const TYPE_BOMB_POWERUP:int = 5;
      
      private static var BOMB_POWERUP:§^!6§ = new §?p§(0,0,§5a§.§-f§,§5a§.§1F§,§5a§.§,B§,§5a§.§!O§,TYPE_BOMB_POWERUP);
       
      
      public function §?p§(x:Number, y:Number, pushRadius:Number, push:Number, damageRadius:Number, damage:Number, explosionType:int = 0)
      {
         super(x,y,pushRadius,push,damageRadius,damage,explosionType);
      }
      
      public static function createExplosion(type:int, x:Number, y:Number) : §^!6§
      {
         var base:§^!6§ = null;
         switch(type)
         {
            case TYPE_BOMB_POWERUP:
               base = BOMB_POWERUP;
               return new §^!6§(x,y,base.pushRadius,base.push,base.damageRadius,base.damage,type);
            default:
               return §^!6§.createExplosion(type,x,y);
         }
      }
   }
}
