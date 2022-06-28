package §3!3§
{
   import §2!H§.§&!U§;
   import §3p§.§#!f§;
   
   public class §!t§ extends §#!f§
   {
      
      public static const TYPE_BOMB_POWERUP:int = 5;
      
      private static var BOMB_POWERUP:§#!f§ = new §!t§(0,0,§&!U§.§2"§,§&!U§.§-r§,§&!U§.§>g§,§&!U§.§1!]§,TYPE_BOMB_POWERUP);
       
      
      public function §!t§(x:Number, y:Number, pushRadius:Number, push:Number, damageRadius:Number, damage:Number, explosionType:int = 0)
      {
         super(x,y,pushRadius,push,damageRadius,damage,explosionType);
      }
      
      public static function createExplosion(type:int, x:Number, y:Number) : §#!f§
      {
         var base:§#!f§ = null;
         switch(type)
         {
            case TYPE_BOMB_POWERUP:
               base = BOMB_POWERUP;
               return new §#!f§(x,y,base.pushRadius,base.push,base.damageRadius,base.damage,type);
            default:
               return §#!f§.createExplosion(type,x,y);
         }
      }
   }
}
