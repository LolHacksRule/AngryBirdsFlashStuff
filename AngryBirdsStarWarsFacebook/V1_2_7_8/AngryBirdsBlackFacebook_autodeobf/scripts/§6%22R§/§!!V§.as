package §6"R§
{
   import §1"s§.Sprite;
   import §1x§.b2World;
   import §3"$§.§[a§;
   import §4"F§.§^d§;
   import §>P§.§&"§;
   
   public class §!!V§ extends § !v§
   {
      
      public static const §^!3§:String = "RedBigBird";
      
      public static const § 7§:Number = 1;
       
      
      public function §!!V§(param1:Sprite, param2:§[a§, param3:b2World, param4:§&"§, param5:§^d§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function applyDamage(param1:Number, param2:§""M§, param3:§4!w§, param4:Boolean = true) : Number
      {
         if(§?"=§ < 0)
         {
            if(§ !4§.explosionDamageRadius || § !4§.explosionRadius)
            {
               if(param2)
               {
                  param2.§7"§(x,y,§ !4§.explosionRadius,§ !4§.explosionForce,§ !4§.explosionDamageRadius,§ !4§.explosionDamage);
               }
            }
         }
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override public function glow(param1:uint) : void
      {
         super.glow(param1);
         if(§3!m§)
         {
            §3!m§.scaleX = §3!m§.scaleY = § 7§;
         }
      }
      
      override public function activateSpecialPower(param1:§""M§, param2:Number, param3:Number) : Boolean
      {
         super.activateSpecialPower(param1,param2,param3);
         return false;
      }
   }
}
