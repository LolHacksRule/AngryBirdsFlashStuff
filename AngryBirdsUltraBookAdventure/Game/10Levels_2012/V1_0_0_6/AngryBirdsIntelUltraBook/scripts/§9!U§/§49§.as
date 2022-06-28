package §9!U§
{
   import §,!§.§![§;
   import §2_§.§'u§;
   import §3!G§.§ y§;
   import §5!c§.§9'§;
   import §7!B§.Sprite;
   import §9Y§.§[w§;
   import §=b§.§>!e§;
   import §=b§.§`!_§;
   
   public class §49§ extends §>!e§
   {
       
      
      public function §49§(param1:§'u§, param2:§ y§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §`!_§
      {
         var _loc10_:String = null;
         if(param1.indexOf("MISC_EASTER_EGG_") == 0)
         {
            _loc10_ = "1000-" + param1.split("_")[3];
            if((AngryBirdsFP11.sUserProgress as §![§).isEggUnlocked(_loc10_))
            {
               return null;
            }
         }
         return super.addObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §`!_§
      {
         if(param2.indexOf("MISC_EASTER_EGG_") == 0)
         {
            return new §%D§(this,param1,§#!3§.mLevelEngine.mWorld,§#!3§,§9!g§,param2,param3,param4,param5,param9);
         }
         return super.createObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      public function §=i§(param1:Number, param2:Number, param3:Number = 0, param4:Number = 1) : §[w§
      {
         var _loc5_:Sprite = new Sprite();
         var _loc6_:§[w§ = new §[w§(this,_loc5_,§#!3§.mLevelEngine.mWorld,§#!3§,§9!g§,param1,param2,param3,param4);
         §#;§[§#;§.length] = _loc6_;
         §1!,§.addChild(_loc5_);
         return _loc6_;
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         §8!8§.push(§ !x§.createExplosion(param1,param2,param3));
         §9'§.playSound("TntExplosions","ChannelExplosions");
      }
   }
}
