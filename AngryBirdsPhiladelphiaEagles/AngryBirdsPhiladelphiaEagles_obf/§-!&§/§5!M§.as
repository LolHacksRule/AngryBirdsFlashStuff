package §-!&§
{
   import § N§.Sprite;
   import §9T§.§1r§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §5!M§ extends §1!"§
   {
      
      public static const §?!,§:String = "MISC_FOOD_EGG";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §?!,§ = "MISC_FOOD_EGG";
         }
      }
      
      public function §5!M§(param1:§20§, param2:Sprite, param3:b2World, param4:§1r§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§20§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || _loc2_)
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc6_)
            {
               if(!§§pop())
               {
                  if(_loc6_)
                  {
                     §§goto(addr33);
                  }
               }
               var _loc2_:Number = §`%§().GetPosition().x;
               var _loc3_:Number = §`%§().GetPosition().y;
               §§push(param1);
               §§push(§?!,§);
               §§push(_loc2_);
               §§push(_loc3_);
               if(!(_loc5_ && _loc2_))
               {
                  §§push(§§pop() + 0.01);
               }
               var _loc4_:§3!,§;
               (_loc4_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,false,true,true,scale)).§5§ = true;
               if(_loc6_ || _loc3_)
               {
                  _loc4_.§`%§().SetLinearVelocity(new b2Vec2(0,100));
                  do
                  {
                     §`%§().ApplyImpulse(new b2Vec2(30 * §`%§().GetMass(),-60 * §`%§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
                  }
                  while(_loc5_);
                  
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
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param1))
         {
            super.applyDamage(param1,param2,param3,param4,param5,param6);
         }
         loop0:
         while(§ I§)
         {
            loop1:
            do
            {
               §8!2§ = §53§ - 1;
               while(_loc7_)
               {
                  §3! §.setDamagedFrame();
                  if(_loc7_ || param2)
                  {
                     continue loop1;
                  }
               }
               continue loop0;
            }
            while(!(_loc7_ || this));
            
            break;
         }
         return §8!2§;
      }
   }
}
