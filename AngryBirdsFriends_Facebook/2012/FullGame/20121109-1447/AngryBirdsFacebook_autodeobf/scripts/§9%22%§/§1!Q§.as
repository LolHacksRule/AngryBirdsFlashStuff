package §9"%§
{
   import §#!e§.§1"B§;
   import §%!v§.§[<§;
   import §%Q§.§4u§;
   import §%Q§.§6G§;
   import §1!$§.Sprite;
   import §6!B§.§>!E§;
   import §9"!§.§9"3§;
   import §]!4§.§^!f§;
   import flash.geom.Point;
   
   public class §1!Q§ extends §]a§
   {
      
      private static const §95§:Boolean = true;
      
      private static const §3!;§:int = 3000;
       
      
      public var §;'§:Sprite;
      
      private var §;!E§:Vector.<Object>;
      
      public function §1!Q§(param1:§9"3§, param2:§1"B§, param3:Sprite)
      {
         this.§;'§ = new Sprite();
         this.§;'§.§`!u§ = false;
         super(param1,param2,param3);
      }
      
      override protected function removeChildFromMainSprite(param1:Sprite) : void
      {
         if(this.§;'§.contains(param1))
         {
            this.§;'§.removeChild(param1);
            return;
         }
         super.removeChildFromMainSprite(param1);
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §&!r§
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
            if((AngryBirdsFP11.sUserProgress as §[<§).§6M§(_loc13_))
            {
               return null;
            }
         }
         if(param1.indexOf("MISC_FB_GD_GOLDENEGG_") == 0)
         {
            _loc14_ = param1.split("_");
            _loc15_ = _loc14_[_loc14_.length - 1];
            _loc16_ = "3001-" + _loc15_;
            if((AngryBirdsFP11.sUserProgress as §[<§).§6M§(_loc16_))
            {
               return null;
            }
         }
         var _loc10_:§&!r§ = super.addObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         if(param1.indexOf("_ZOMBIE") != -1)
         {
            _loc10_.sprite.removeFromParent();
            this.§;'§.addChild(_loc10_.sprite);
         }
         return _loc10_;
      }
      
      override public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         this.§;'§.x = -param1;
         this.§;'§.y = -param2;
         super.updateScrollAndScale(param1,param2);
      }
      
      override public function addObjectParsePigs(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §&!r§
      {
         var _loc11_:§4u§ = §6G§.§1!P§(param2);
         if(param2.indexOf("_INFECTED") != -1)
         {
            return new §<!V§(this,param1,§@O§.mLevelEngine.mWorld,§@O§,§5!b§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         if(param2.indexOf("_ZOMBIE") != -1)
         {
            return new §<o§(this,param1,§@O§.mLevelEngine.mWorld,§@O§,§5!b§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         return super.addObjectParsePigs(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §&!r§
      {
         if(param2.indexOf("MISC_EASTER_EGG_") == 0)
         {
            return new §5!m§(this,param1,§@O§.mLevelEngine.mWorld,§@O§,§5!b§,param2,param3,param4,param5,param9);
         }
         if(param2.indexOf("MISC_FB_GD_GOLDENEGG_") == 0)
         {
            return new §"!^§(this,param1,§@O§.mLevelEngine.mWorld,§@O§,§5!b§,param2,param3,param4,param5,param9);
         }
         return super.createObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      public function §?!6§(param1:Number, param2:Number, param3:Number = 0, param4:Number = 1) : §&!9§
      {
         var _loc5_:Sprite = new Sprite();
         var _loc6_:§&!9§ = new §&!9§(this,_loc5_,§@O§.mLevelEngine.mWorld,§@O§,§5!b§,param1,param2,param3,param4);
         §=",§[§=",§.length] = _loc6_;
         §6"-§.addChild(_loc5_);
         return _loc6_;
      }
      
      override protected function applyExplosionDamage(param1:§&!r§, param2:Number) : void
      {
         param1.applyDamage(param2,true,false,false,true);
      }
      
      override protected function addDestructionParticles(param1:§&!r§, param2:§^!f§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number, param4:Vector.<§&!r§> = null) : void
      {
         § '§.push(§6!u§.createExplosion(param1,param2,param3,param4));
         if(param1 != §^!x§.§`§)
         {
            §>!E§.§7N§("TntExplosions","ChannelExplosions");
         }
      }
      
      public function §4!R§(param1:Object) : void
      {
         if(!this.§;!E§)
         {
            this.§;!E§ = new Vector.<Object>();
         }
         this.§;!E§.push(param1);
      }
      
      override public function updateLevelObjectsGoingOn(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         var _loc4_:Point = null;
         var _loc5_:Point = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:§<o§ = null;
         if(this.§;!E§ != null)
         {
            _loc2_ = this.§;!E§.length - 1;
            while(_loc2_ >= 0)
            {
               _loc3_ = this.§;!E§[_loc2_];
               _loc4_ = _loc3_.point;
               _loc5_ = _loc3_.normal;
               if(!isNaN(_loc4_.x) && !isNaN(_loc4_.y))
               {
                  _loc6_ = Math.atan2(_loc5_.x,_loc5_.y);
                  _loc7_ = -47 * §9"3§.§'"F§;
                  (_loc8_ = this.addObject(_loc3_.itemName,_loc4_.x + _loc5_.x * _loc7_,_loc4_.y + _loc5_.y * _loc7_,_loc6_ * 57.2957795 + 180,false,false,false,1,false) as §<o§).§@p§(_loc4_,_loc5_);
               }
               this.§;!E§.splice(_loc2_,1);
               _loc2_--;
            }
         }
         super.updateLevelObjectsGoingOn(param1);
      }
      
      override public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         if(this.§;!E§ != null && this.§;!E§.length != 0)
         {
            return true;
         }
         return super.isPigsAlive(param1);
      }
      
      override public function getPigCount(param1:Boolean = false) : int
      {
         var _loc2_:int = super.getPigCount(param1);
         if(this.§;!E§ != null && this.§;!E§.length != 0)
         {
            _loc2_ += this.§;!E§.length;
         }
         return _loc2_;
      }
      
      override public function isWorldAtSleep() : Boolean
      {
         if(this.§;!E§ != null && this.§;!E§.length != 0)
         {
            return false;
         }
         return super.isWorldAtSleep();
      }
   }
}
