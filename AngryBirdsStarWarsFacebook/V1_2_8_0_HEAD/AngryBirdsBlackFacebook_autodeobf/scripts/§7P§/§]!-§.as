package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§=+§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   
   public class §]!-§ extends §9"k§
   {
      
      public static const §+"§:String = "RedBigBird";
      
      public static const §0!;§:Number = 1;
       
      
      public function §]!-§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§=+§, param5:§94§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function applyDamage(param1:Number, param2:§;$§, param3:§&#=§, param4:Boolean = true) : Number
      {
         if(§ d§ < 0)
         {
            if(§<X§.explosionDamageRadius || §<X§.explosionRadius)
            {
               if(param2)
               {
                  param2.§6#4§(x,y,§<X§.explosionRadius,§<X§.explosionForce,§<X§.explosionDamageRadius,§<X§.explosionDamage);
               }
            }
         }
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override public function glow(param1:uint) : void
      {
         super.glow(param1);
         if(§ !d§)
         {
            § !d§.scaleX = § !d§.scaleY = §0!;§;
         }
      }
      
      override public function activateSpecialPower(param1:§;$§, param2:Number, param3:Number) : Boolean
      {
         super.activateSpecialPower(param1,param2,param3);
         return false;
      }
   }
}
