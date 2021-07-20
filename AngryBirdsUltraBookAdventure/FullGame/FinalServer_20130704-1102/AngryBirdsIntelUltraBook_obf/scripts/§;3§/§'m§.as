package §;3§
{
   import § var§.§ 4§;
   import § var§.§!u§;
   import §"!i§.§"!'§;
   import §"m§.§;I§;
   import §40§.§5G§;
   import §[!b§.§-!Q§;
   import §[;§.§#!6§;
   import §`g§.Sprite;
   
   public class §'m§ extends § 4§
   {
       
      
      public function §'m§(param1:§5G§, param2:§"!'§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §!u§
      {
         var _loc10_:String = null;
         if(param1.indexOf("MISC_EASTER_EGG_") == 0)
         {
            _loc10_ = "1000-" + param1.split("_")[3];
            if((AngryBirdsFP11.sUserProgress as §#!6§).§8E§(_loc10_))
            {
               return null;
            }
         }
         return super.addObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §!u§
      {
         if(param2.indexOf("MISC_EASTER_EGG_") == 0)
         {
            return new §^L§(this,param1,§#!U§.mLevelEngine.mWorld,§#!U§,§"!5§,param2,param3,param4,param5,param9);
         }
         return super.createObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      public function §%]§(param1:Number, param2:Number, param3:Number = 0, param4:Number = 1) : §;I§
      {
         var _loc5_:Sprite = new Sprite();
         var _loc6_:§;I§ = new §;I§(this,_loc5_,§#!U§.mLevelEngine.mWorld,§#!U§,§"!5§,param1,param2,param3,param4);
         §7-§[§7-§.length] = _loc6_;
         §4G§.addChild(_loc5_);
         return _loc6_;
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number, param4:Vector.<§!u§> = null) : void
      {
         §0T§.push(§2!f§.createExplosion(param1,param2,param3));
         §-!Q§.§#3§("TntExplosions","ChannelExplosions");
      }
   }
}
