package §`!f§
{
   import §"G§.§>!"§;
   import §"R§.§ !Q§;
   import §%Q§.§=[§;
   import §%Q§.§`!<§;
   import §'!9§.Sprite;
   import §+!Q§.§<[§;
   import §,!5§.§^g§;
   import §0!N§.§=+§;
   
   public class § '§ extends §=[§
   {
       
      
      public function § '§(param1:§^g§, param2:§=+§, param3:Sprite)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §`!<§
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc10_:* = null;
         if(_loc11_ || param3)
         {
            §§push(param1);
            if(!_loc12_)
            {
               if(§§pop().indexOf("MISC_EASTER_EGG_") == 0)
               {
                  while(true)
                  {
                     §§push("1000-");
                     if(_loc11_)
                     {
                        §§push(§§pop() + param1.split("_")[3]);
                     }
                     §§push(§§pop());
                     §§goto(addr101);
                  }
               }
               return super.addObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            }
            addr101:
            §§goto(addr81);
         }
         addr81:
         loop1:
         while(true)
         {
            _loc10_ = §§pop();
            while((AngryBirdsFP11.sUserProgress as §<[§).isEggUnlocked(_loc10_))
            {
               if(!_loc11_)
               {
                  break;
               }
               if(!(_loc12_ && param3))
               {
                  if(!_loc12_)
                  {
                     break loop1;
                  }
                  continue loop0;
               }
            }
         }
         return null;
      }
      
      override protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §`!<§
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(!_loc10_)
         {
            if(param2.indexOf("MISC_EASTER_EGG_") == 0)
            {
               if(!(_loc10_ && param3))
               {
                  return new §7!X§(this,param1,§?l§.mLevelEngine.mWorld,§?l§,§>Q§,param2,param3,param4,param5,param9);
               }
            }
         }
         return super.createObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      public function §&!Q§(param1:Number, param2:Number, param3:Number = 0, param4:Number = 1) : §>!"§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:Sprite = new Sprite();
         var _loc6_:§>!"§ = new §>!"§(this,_loc5_,§?l§.mLevelEngine.mWorld,§?l§,§>Q§,param1,param2,param3,param4);
         if(!_loc8_)
         {
            §;Y§[§;Y§.length] = _loc6_;
         }
         do
         {
            §!U§.addChild(_loc5_);
         }
         while(!_loc7_);
         
         return _loc6_;
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §]O§.push(§-%§.createExplosion(param1,param2,param3));
            do
            {
               § !Q§.playSound("TntExplosions","ChannelExplosions");
            }
            while(!(_loc4_ || param2));
            
         }
      }
   }
}
