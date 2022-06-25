package §3Y§
{
   import §1!&§.Sprite;
   import §1%§.b2World;
   import §?!&§.b2Vec2;
   import §?A§.LevelMain;
   
   public class §>!7§ extends §[r§
   {
      
      public static const §4"§:String = "MISC_FOOD_EGG";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §4"§ = "MISC_FOOD_EGG";
         }
      }
      
      public function §>!7§(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!(_loc12_ && param2))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:LevelObjectManager) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            §§push(super.activateSpecialPower(param1));
            if(!_loc5_)
            {
               §§push(!§§pop());
               if(!_loc5_)
               {
                  §§goto(addr32);
               }
               §§goto(addr36);
            }
            addr32:
            if(§§pop())
            {
               if(_loc6_)
               {
                  §§goto(addr36);
               }
            }
            var _loc2_:Number = §8!N§().GetPosition().x;
            var _loc3_:Number = §8!N§().GetPosition().y;
            §§push(param1);
            §§push(§4"§);
            §§push(_loc2_);
            §§push(_loc3_);
            if(!_loc5_)
            {
               §§push(§§pop() + 0.01);
            }
            var _loc4_:LevelObject = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,false,true,true,scale);
            if(_loc6_)
            {
               _loc4_.§2v§ = true;
               do
               {
                  _loc4_.§8!N§().SetLinearVelocity(new b2Vec2(0,100));
                  do
                  {
                     §8!N§().ApplyImpulse(new b2Vec2(30 * §8!N§().GetMass(),-60 * §8!N§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
                  }
                  while(!_loc6_);
                  
               }
               while(_loc5_);
               
            }
            return true;
         }
         addr36:
         return false;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super.applyDamage(param1,param2,param3,param4,param5,param6);
            for(; §6!9§; do
            {
               § get§.setDamagedFrame();
            }
            while(!_loc8_);
            ,if(!(_loc7_ && param1))
            {
               break;
            })
            {
               if(_loc7_)
               {
                  continue;
               }
            }
            return §19§;
         }
         while(true)
         {
            §19§ = §^V§ - 1;
            §§goto(addr73);
         }
      }
   }
}
