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
         super(param1,param2,param3);
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §`!<§
      {
         var _loc10_:String = null;
         if(param1.indexOf("MISC_EASTER_EGG_") == 0)
         {
            _loc10_ = "1000-" + param1.split("_")[3];
            if((AngryBirdsFP11.sUserProgress as §<[§).isEggUnlocked(_loc10_))
            {
               return null;
            }
         }
         return super.addObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §`!<§
      {
         if(param2.indexOf("MISC_EASTER_EGG_") == 0)
         {
            return new §7!X§(this,param1,§?l§.mLevelEngine.mWorld,§?l§,§>Q§,param2,param3,param4,param5,param9);
         }
         return super.createObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      public function §&!Q§(param1:Number, param2:Number, param3:Number = 0, param4:Number = 1) : §>!"§
      {
         var _loc5_:Sprite = new Sprite();
         var _loc6_:§>!"§ = new §>!"§(this,_loc5_,§?l§.mLevelEngine.mWorld,§?l§,§>Q§,param1,param2,param3,param4);
         §;Y§[§;Y§.length] = _loc6_;
         §!U§.addChild(_loc5_);
         return _loc6_;
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         §]O§.push(§-%§.createExplosion(param1,param2,param3));
         § !Q§.playSound("TntExplosions","ChannelExplosions");
      }
   }
}
