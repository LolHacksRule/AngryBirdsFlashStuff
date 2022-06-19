package §'_§
{
   import §,"-§.§2!P§;
   import §1k§.§%4§;
   import §3!Z§.§,>§;
   import §3,§.§[!;§;
   import §[!z§.§!"=§;
   import §]&§.Sprite;
   
   public class §89§ extends §=!&§
   {
       
      
      public function §89§(param1:§[!;§, param2:§!"=§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §9V§
      {
         var _loc10_:Array = null;
         var _loc11_:String = null;
         var _loc12_:String = null;
         var _loc13_:Array = null;
         var _loc14_:String = null;
         var _loc15_:String = null;
         if(param1.indexOf("MISC_EASTER_EGG_") == 0)
         {
            _loc10_ = param1.split("_");
            _loc11_ = _loc10_[_loc10_.length - 1];
            _loc12_ = "1000-" + _loc11_;
            if((AngryBirdsFP11.sUserProgress as §2!P§).isEggUnlocked(_loc12_))
            {
               return null;
            }
         }
         if(param1.indexOf("MISC_FB_GD_GOLDENEGG_") == 0)
         {
            _loc13_ = param1.split("_");
            _loc14_ = _loc13_[_loc13_.length - 1];
            _loc15_ = "3001-" + _loc14_;
            if((AngryBirdsFP11.sUserProgress as §2!P§).isEggUnlocked(_loc15_))
            {
               return null;
            }
         }
         return super.addObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §9V§
      {
         if(param2.indexOf("MISC_EASTER_EGG_") == 0)
         {
            return new §3!O§(this,param1,§0!J§.mLevelEngine.mWorld,§0!J§,§+!1§,param2,param3,param4,param5,param9);
         }
         if(param2.indexOf("MISC_FB_GD_GOLDENEGG_") == 0)
         {
            return new §2!r§(this,param1,§0!J§.mLevelEngine.mWorld,§0!J§,§+!1§,param2,param3,param4,param5,param9);
         }
         return super.createObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      public function §=A§(param1:Number, param2:Number, param3:Number = 0, param4:Number = 1) : §!W§
      {
         var _loc5_:Sprite = new Sprite();
         var _loc6_:§!W§ = new §!W§(this,_loc5_,§0!J§.mLevelEngine.mWorld,§0!J§,§+!1§,param1,param2,param3,param4);
         §,"!§[§,"!§.length] = _loc6_;
         §1N§.addChild(_loc5_);
         return _loc6_;
      }
      
      override protected function applyExplosionDamage(param1:§9V§, param2:Number) : void
      {
         param1.applyDamage(param2,true,false,false,true);
      }
      
      override protected function addDestructionParticles(param1:§9V§, param2:§,>§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         §"!3§.push(§!!O§.createExplosion(param1,param2,param3));
         §%4§.§>f§("TntExplosions","ChannelExplosions");
      }
   }
}
