package §9!r§
{
   import §!!§.§>4§;
   import §%!c§.§"f§;
   import §'H§.§9!f§;
   import §+&§.§-!7§;
   import §1!T§.§6!H§;
   import §9E§.Sprite;
   import §]![§.§4!H§;
   import §]![§.§[?§;
   
   public class §[V§ extends §[?§
   {
       
      
      public function §[V§(param1:§-!7§, param2:§>4§, param3:Sprite)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §4!H§
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc10_:* = null;
         if(!(_loc11_ && param1))
         {
            §§push(param1);
            if(_loc12_)
            {
               if(§§pop().indexOf("MISC_EASTER_EGG_") == 0)
               {
                  loop0:
                  while(true)
                  {
                     §§push("1000-");
                     if(_loc12_ || param1)
                     {
                        §§push(§§pop() + param1.split("_")[3]);
                     }
                     §§push(§§pop());
                     addr102:
                     while(true)
                     {
                        _loc10_ = §§pop();
                        while((AngryBirdsFP11.sUserProgress as §9!f§).isEggUnlocked(_loc10_))
                        {
                           if(!_loc11_)
                           {
                              return null;
                           }
                           if(!_loc11_)
                           {
                              if(!_loc11_)
                              {
                                 addr79:
                                 break;
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
               return super.addObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            }
            §§goto(addr102);
         }
         §§goto(addr79);
      }
      
      override protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §4!H§
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc10_)
         {
            if(param2.indexOf("MISC_EASTER_EGG_") == 0)
            {
               if(!(_loc11_ && param1))
               {
                  §§goto(addr50);
               }
            }
            return super.createObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         addr50:
         return new §;!%§(this,param1,§+!X§.mLevelEngine.mWorld,§+!X§,§!E§,param2,param3,param4,param5,param9);
      }
      
      public function § 3§(param1:Number, param2:Number, param3:Number = 0, param4:Number = 1) : §"f§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:Sprite = new Sprite();
         var _loc6_:§"f§ = new §"f§(this,_loc5_,§+!X§.mLevelEngine.mWorld,§+!X§,§!E§,param1,param2,param3,param4);
         if(!_loc8_)
         {
            §@!d§[§@!d§.length] = _loc6_;
         }
         do
         {
            §==§.addChild(_loc5_);
         }
         while(_loc8_ && param2);
         
         return _loc6_;
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            §5!%§.push(§<!B§.createExplosion(param1,param2,param3));
         }
         do
         {
            §6!H§.playSound("TntExplosions","ChannelExplosions");
         }
         while(_loc4_ && param3);
         
      }
   }
}
