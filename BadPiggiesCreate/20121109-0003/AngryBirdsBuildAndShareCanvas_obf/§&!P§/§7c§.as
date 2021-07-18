package §&!P§
{
   import §"J§.b2World;
   import §%!0§.§,4§;
   import §+!-§.Sprite;
   import §<!a§.b2Vec2;
   
   public class §7c§ extends §9`§
   {
      
      public static const §]L§:String = "MISC_FOOD_EGG";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §]L§ = "MISC_FOOD_EGG";
         }
      }
      
      public function §7c§(param1:§^!!§, param2:Sprite, param3:b2World, param4:§,4§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!(_loc13_ && this))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§^!!§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §§push(super.activateSpecialPower(param1));
            if(!_loc6_)
            {
               if(!§§pop())
               {
                  if(!_loc6_)
                  {
                     §§goto(addr27);
                  }
               }
               var _loc2_:Number = getBody().GetPosition().x;
               var _loc3_:Number = getBody().GetPosition().y;
               §§push(param1);
               §§push(§]L§);
               §§push(_loc2_);
               §§push(_loc3_);
               if(!(_loc6_ && this))
               {
                  §§push(§§pop() + 0.01);
               }
               var _loc4_:§``§;
               (_loc4_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,false,true,true,scale)).§#!X§ = true;
               if(_loc5_ || this)
               {
                  _loc4_.getBody().SetLinearVelocity(new b2Vec2(0,100));
                  do
                  {
                     getBody().ApplyImpulse(new b2Vec2(30 * getBody().GetMass(),-60 * getBody().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
                  }
                  while(!_loc5_);
                  
               }
               return true;
            }
            §§goto(addr27);
         }
         addr27:
         return false;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param1)
         {
            super.applyDamage(param1,param2,param3,param4,param5,param6);
         }
         while(§+^§)
         {
            do
            {
               §8W§ = §%5§ - 1;
               do
               {
                  §8C§.setDamagedFrame();
               }
               while(_loc8_ && param1);
               
            }
            while(_loc8_);
            
            if(_loc7_)
            {
               break;
            }
         }
         return §8W§;
      }
   }
}
