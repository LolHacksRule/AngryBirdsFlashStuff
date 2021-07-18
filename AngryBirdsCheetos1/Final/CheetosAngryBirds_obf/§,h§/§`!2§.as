package §,h§
{
   import §!X§.§86§;
   import §0!G§.b2Vec2;
   import §]@§.Sprite;
   import §`j§.b2World;
   
   public class §`!2§ extends §4!9§
   {
      
      public static const § else§:String = "MISC_FOOD_EGG";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            § else§ = "MISC_FOOD_EGG";
         }
      }
      
      public function §`!2§(param1:§6M§, param2:Sprite, param3:b2World, param4:§86§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!(_loc13_ && param3))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§6M§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(super.activateSpecialPower(param1));
            if(!_loc5_)
            {
               if(!§§pop())
               {
                  if(_loc6_ || _loc3_)
                  {
                     §§goto(addr33);
                  }
               }
               var _loc2_:Number = §?!7§().GetPosition().x;
               var _loc3_:Number = §?!7§().GetPosition().y;
               §§push(param1);
               §§push(§ else§);
               §§push(_loc2_);
               §§push(_loc3_);
               if(_loc6_)
               {
                  §§push(§§pop() + 0.01);
               }
               var _loc4_:§+0§;
               (_loc4_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,false,true,true,scale)).§,O§ = true;
               if(_loc6_ || this)
               {
                  _loc4_.§?!7§().SetLinearVelocity(new b2Vec2(0,100));
                  do
                  {
                     §?!7§().ApplyImpulse(new b2Vec2(30 * §?!7§().GetMass(),-60 * §?!7§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
                  }
                  while(_loc5_ && this);
                  
               }
               return true;
            }
            §§goto(addr33);
         }
         addr33:
         return false;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param1)
         {
            super.applyDamage(param1,param2,param3,param4,param5,param6);
            loop0:
            while(§;J§)
            {
               loop1:
               while(true)
               {
                  §,!&§ = §+?§ - 1;
                  addr62:
                  while(true)
                  {
                     §2P§.setDamagedFrame();
                     if(!(_loc7_ && param2))
                     {
                        if(_loc8_)
                        {
                           if(_loc8_)
                           {
                              break loop0;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            return §,!&§;
         }
         §§goto(addr62);
      }
   }
}
