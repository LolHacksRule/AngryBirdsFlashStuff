package §3!#§
{
   import §0!2§.§5"L§;
   import §9"=§.§3!p§;
   import §<";§.§'y§;
   import §>s§.§+m§;
   import §]!v§.Sprite;
   import §`!n§.§#!s§;
   
   public class §<!g§ extends §04§
   {
       
      
      public var §,!m§:Sprite;
      
      public function §<!g§(param1:§5"L§, param2:§#!s§, param3:Sprite)
      {
         this.§,!m§ = new Sprite();
         this.§,!m§.§5! § = false;
         super(param1,param2,param3);
      }
      
      override protected function removeChildFromMainSprite(param1:Sprite) : void
      {
         if(this.§,!m§.contains(param1))
         {
            this.§,!m§.removeChild(param1);
            return;
         }
         super.removeChildFromMainSprite(param1);
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §5"A§
      {
         var _loc11_:Array = null;
         var _loc12_:String = null;
         var _loc13_:String = null;
         var _loc14_:Array = null;
         var _loc15_:String = null;
         var _loc16_:String = null;
         if(param1.indexOf("MISC_EASTER_EGG_") == 0)
         {
            _loc11_ = param1.split("_");
            _loc12_ = _loc11_[_loc11_.length - 1];
            _loc13_ = "1000-" + _loc12_;
            if((AngryBirdsFP11.sUserProgress as §'y§).§#!e§(_loc13_))
            {
               return null;
            }
         }
         if(param1.indexOf("MISC_FB_GD_GOLDENEGG_") == 0)
         {
            _loc14_ = param1.split("_");
            _loc15_ = _loc14_[_loc14_.length - 1];
            _loc16_ = "3001-" + _loc15_;
            if((AngryBirdsFP11.sUserProgress as §'y§).§#!e§(_loc16_))
            {
               return null;
            }
         }
         return super.addObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         this.§,!m§.x = -param1;
         this.§,!m§.y = -param2;
         super.updateScrollAndScale(param1,param2);
      }
      
      override protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §5"A§
      {
         if(param2.indexOf("MISC_EASTER_EGG_") == 0)
         {
            return new §7S§(this,param1,§^!"§.mLevelEngine.mWorld,§^!"§,§7!E§,param2,param3,param4,param5,param9);
         }
         if(param2.indexOf("MISC_FB_GD_GOLDENEGG_") == 0)
         {
            return new § !I§(this,param1,§^!"§.mLevelEngine.mWorld,§^!"§,§7!E§,param2,param3,param4,param5,param9);
         }
         if(param2.indexOf("MISC_FB_ROLLING_SNOWBALL") == 0)
         {
            return new §=o§(this,param1,§^!"§.mLevelEngine.mWorld,§^!"§,§7!E§,param2,param3,param4,param5,param9);
         }
         if(param2.indexOf("MISC_FB_SNOWBALL_CANNON") == 0)
         {
            return new §>!j§(this,param1,§^!"§.mLevelEngine.mWorld,§^!"§,§7!E§,param2,param3,param4,param5,param9);
         }
         if(param2.indexOf("POWERUP_BOMB") == 0)
         {
            return new §>!Z§(this,param1,§^!"§.mLevelEngine.mWorld,§^!"§,§7!E§,param3,param4,param5,param9);
         }
         if(param2.indexOf("BIRD_CHRISTMAS") == 0)
         {
            return new §%",§(this,param1,§^!"§.mLevelEngine.mWorld,§^!"§,§7!E§,param2,param3,param4,param5,param8,param9);
         }
         return super.createObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      public function §;!4§(param1:Number, param2:Number, param3:Number = 0, param4:Number = 1) : §>!Z§
      {
         var _loc5_:Sprite = new Sprite();
         return this.addObject("POWERUP_BOMB",param1,param2,param3,false,false,false,param4) as §>!Z§;
      }
      
      override protected function applyExplosionDamage(param1:§5"A§, param2:Number) : void
      {
         param1.applyDamage(param2,true,false,false,true);
      }
      
      override public function objectCollision(param1:§5"A§, param2:§5"A§) : Boolean
      {
         if(param1 is §=o§)
         {
            if((param1 as §=o§).§5!w§(param2) && param2.§3q§())
            {
               return true;
            }
         }
         else if(param2 is §=o§)
         {
            if((param2 as §=o§).§5!w§(param1) && param1.§3q§())
            {
               return true;
            }
         }
         if(param1 is §>!Z§ && param2 is §>!Z§)
         {
            if(!(param1 as §>!Z§).§1"2§ && !(param2 as §>!Z§).§1"2§)
            {
               return false;
            }
         }
         return super.objectCollision(param1,param2);
      }
      
      override public function objectCollisionEnded(param1:§5"A§, param2:§5"A§) : void
      {
         if(param1 is §=o§)
         {
            (param1 as §=o§).§3+§(param2);
         }
         else if(param2 is §=o§)
         {
            (param2 as §=o§).§3+§(param1);
         }
      }
      
      override protected function addDestructionParticles(param1:§5"A§, param2:§3!p§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number, param4:Vector.<§5"A§> = null) : void
      {
         §-">§.push(§=J§.createExplosion(param1,param2,param3,param4));
         if(param1 != §0"A§.§5"=§ && param1 != §=J§.§`!"§)
         {
            §+m§.§]!N§("TntExplosions","ChannelExplosions");
         }
      }
      
      override protected function getMainExplosionCoreName(param1:int) : String
      {
         switch(param1)
         {
            case §=J§.§`!"§:
               return "";
            default:
               return super.getMainExplosionCoreName(param1);
         }
      }
      
      public function §,!y§(param1:uint) : Vector.<§5"A§>
      {
         var _loc7_:§5"A§ = null;
         var _loc8_:uint = 0;
         var _loc9_:Vector.<§5"A§> = null;
         if(!isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = §#"5§.length;
         var _loc3_:int = §<"4§();
         if(_loc3_ == 0)
         {
            return null;
         }
         var _loc4_:Vector.<§5"A§> = new Vector.<§5"A§>();
         var _loc5_:int = §#"5§.length - 1;
         while(_loc5_ >= 0)
         {
            if((_loc7_ = §#"5§[_loc5_] as §5"A§) && _loc7_.§!!D§() && _loc7_.§!!U§ > 0)
            {
               _loc4_[_loc4_.length] = _loc7_;
            }
            _loc5_--;
         }
         var _loc6_:Vector.<§5"A§> = new Vector.<§5"A§>();
         while(_loc6_.length < param1)
         {
            if(_loc4_.length == 0)
            {
               _loc6_[_loc6_.length] = null;
            }
            else
            {
               _loc8_ = _loc4_.length * Math.random();
               _loc9_ = _loc4_.splice(_loc8_,1);
               _loc6_[_loc6_.length] = _loc9_[0];
            }
         }
         return _loc6_;
      }
   }
}
