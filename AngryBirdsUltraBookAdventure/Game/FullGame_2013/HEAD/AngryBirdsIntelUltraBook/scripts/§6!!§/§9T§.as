package §6!!§
{
   import §#!,§.Sprite;
   import §>!8§.b2Vec2;
   import §>!L§.b2World;
   import §]!@§.LevelMain;
   
   public class §9T§ extends §6!f§
   {
      
      public static const final:String = "MISC_FOOD_EGG";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            final = "MISC_FOOD_EGG";
         }
      }
      
      public function §9T§(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_ || param2)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:LevelObjectManager) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || _loc2_)
         {
            §§push(super.activateSpecialPower(param1));
            if(!_loc5_)
            {
               §§push(!§§pop());
               if(!(_loc5_ && this))
               {
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        §§goto(addr41);
                     }
                  }
                  var _loc2_:Number = §@!'§().GetPosition().x;
                  var _loc3_:Number = §@!'§().GetPosition().y;
                  §§push(param1);
                  §§push(final);
                  §§push(_loc2_);
                  §§push(_loc3_);
                  if(_loc6_)
                  {
                     §§push(§§pop() + 0.01);
                  }
                  var _loc4_:LevelObject = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,false,true,true,scale);
                  if(_loc6_)
                  {
                     _loc4_.§`!f§ = true;
                  }
                  do
                  {
                     _loc4_.§@!'§().SetLinearVelocity(new b2Vec2(0,100));
                     do
                     {
                        §@!'§().ApplyImpulse(new b2Vec2(30 * §@!'§().GetMass(),-60 * §@!'§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
                     }
                     while(_loc5_ && param1);
                     
                  }
                  while(!_loc6_);
                  
                  return true;
               }
            }
            §§goto(addr41);
         }
         addr41:
         return false;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super.applyDamage(param1,param2,param3,param4,param5,param6);
            loop0:
            while(§+!O§)
            {
               loop1:
               while(!(_loc7_ && param3))
               {
                  while(true)
                  {
                     §3W§ = §>!"§ - 1;
                     do
                     {
                        §`!P§.setDamagedFrame();
                     }
                     while(!_loc8_);
                     
                     if(_loc8_)
                     {
                        break loop0;
                     }
                     continue loop1;
                  }
               }
            }
            return §3W§;
         }
         §§goto(addr67);
      }
   }
}
