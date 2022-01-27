package §!r§
{
   import §!!k§.§1!^§;
   import §#g§.§11§;
   import §=G§.§9v§;
   import §>"_§.b2World;
   import §use§.Sprite;
   
   public class §6;§ extends §2!a§
   {
      
      public static const §5!L§:String = "RedBigBird";
      
      public static const §@"o§:Number = 1;
       
      
      public function §6;§(param1:Sprite, param2:§1!^§, param3:b2World, param4:§11§, param5:§9v§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function applyDamage(param1:Number, param2:§'=§, param3:§0N§, param4:Boolean = true) : Number
      {
         if(§@5§ < 0)
         {
            if(§7!d§.explosionDamageRadius || §7!d§.explosionRadius)
            {
               if(param2)
               {
                  param2.§?#6§(x,y,§7!d§.explosionRadius,§7!d§.explosionForce,§7!d§.explosionDamageRadius,§7!d§.explosionDamage);
               }
            }
         }
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override public function glow(param1:uint) : void
      {
         super.glow(param1);
         if(§"!;§)
         {
            §"!;§.scaleX = §"!;§.scaleY = §@"o§;
         }
      }
      
      override public function activateSpecialPower(param1:§'=§, param2:Number, param3:Number) : Boolean
      {
         super.activateSpecialPower(param1,param2,param3);
         return false;
      }
   }
}
