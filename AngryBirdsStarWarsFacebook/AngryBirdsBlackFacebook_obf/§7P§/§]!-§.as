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
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §+"§ = "RedBigBird";
            do
            {
               §0!;§ = 1;
            }
            while(!_loc2_);
            
         }
      }
      
      public function §]!-§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§=+§, param5:§94§, param6:Number = 1.0, param7:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      override public function applyDamage(param1:Number, param2:§;$§, param3:§&#=§, param4:Boolean = true) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            if(§ d§ < 0)
            {
               loop0:
               while(true)
               {
                  §§push(Boolean(§<X§.explosionDamageRadius));
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(§§pop())
                        {
                           if(!(_loc6_ && param1))
                           {
                              if(_loc5_)
                              {
                                 if(param2)
                                 {
                                    if(!(_loc6_ && param3))
                                    {
                                       while(true)
                                       {
                                          param2.§6#4§(x,y,§<X§.explosionRadius,§<X§.explosionForce,§<X§.explosionDamageRadius,§<X§.explosionDamage);
                                       }
                                       addr77:
                                    }
                                 }
                                 break;
                              }
                              loop3:
                              while(true)
                              {
                                 §§push(Boolean(§<X§.explosionRadius));
                                 if(!(_loc6_ && param1))
                                 {
                                    break;
                                 }
                                 addr110:
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop3;
                                 }
                              }
                              if(!_loc6_)
                              {
                                 continue;
                              }
                              continue loop1;
                           }
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 break loop2;
                              }
                              continue loop0;
                           }
                        }
                        §§goto(addr24);
                     }
                     §§goto(addr110);
                  }
               }
            }
            addr24:
            return super.applyDamage(param1,param2,param3,param4);
         }
         §§goto(addr77);
      }
      
      override public function glow(param1:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.glow(param1);
            if(_loc3_)
            {
               if(§ !d§)
               {
                  if(_loc3_ || _loc2_)
                  {
                     § !d§.scaleX = § !d§.scaleY = §0!;§;
                     addr42:
                  }
               }
            }
            return;
         }
         §§goto(addr42);
      }
      
      override public function activateSpecialPower(param1:§;$§, param2:Number, param3:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            super.activateSpecialPower(param1,param2,param3);
         }
         return false;
      }
   }
}
