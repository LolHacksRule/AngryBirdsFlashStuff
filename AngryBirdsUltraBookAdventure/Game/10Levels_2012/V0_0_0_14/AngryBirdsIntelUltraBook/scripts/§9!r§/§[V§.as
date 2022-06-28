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
         super(param1,param2,param3);
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §4!H§
      {
         var _loc10_:String = null;
         if(param1.indexOf("MISC_EASTER_EGG_") == 0)
         {
            _loc10_ = "1000-" + param1.split("_")[3];
            if((AngryBirdsFP11.sUserProgress as §9!f§).isEggUnlocked(_loc10_))
            {
               return null;
            }
         }
         return super.addObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §4!H§
      {
         if(param2.indexOf("MISC_EASTER_EGG_") == 0)
         {
            return new §;!%§(this,param1,§+!X§.mLevelEngine.mWorld,§+!X§,§!E§,param2,param3,param4,param5,param9);
         }
         return super.createObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      public function § 3§(param1:Number, param2:Number, param3:Number = 0, param4:Number = 1) : §"f§
      {
         var _loc5_:Sprite = new Sprite();
         var _loc6_:§"f§ = new §"f§(this,_loc5_,§+!X§.mLevelEngine.mWorld,§+!X§,§!E§,param1,param2,param3,param4);
         §@!d§[§@!d§.length] = _loc6_;
         §==§.addChild(_loc5_);
         return _loc6_;
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         §5!%§.push(§<!B§.createExplosion(param1,param2,param3));
         §6!H§.playSound("TntExplosions","ChannelExplosions");
      }
   }
}
