package §9T§
{
   import §#J§.§,x§;
   import §#J§.§9^§;
   import §#J§.§]B§;
   import §#b§.§85§;
   import §'!Y§.§+e§;
   import §'!Y§.§^Z§;
   import §'=§.§]d§;
   import §+!8§.§;A§;
   import §,'§.§[2§;
   import §,H§.Sprite;
   import §-A§.§%9§;
   import §1o§.§'M§;
   import §8O§.§'S§;
   import §;z§.§!+§;
   import §;z§.§4!#§;
   import §;z§.§>S§;
   import §;z§.§]!N§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.utils.clearInterval;
   
   public class §+8§ extends §]!N§ implements §9^§
   {
       
      
      private var §0h§:§!+§;
      
      private var §`!=§:int;
      
      private var callObject:Object;
      
      private var §`!S§:uint;
      
      public function §+8§(param1:§%9§, param2:§85§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §!+§
      {
         var _loc10_:§!+§ = null;
         if(param2 == "BIRD_CHEETOS_BAG")
         {
            _loc10_ = new §;d§(this,param1,§return§.mLevelEngine.mWorld,§return§,§0! §,param2,param3,param4,param5);
         }
         else
         {
            _loc10_ = super.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         return _loc10_;
      }
      
      override protected function getMainExplosionCoreName(param1:int) : String
      {
         switch(param1)
         {
            case §4!#§.§]!-§:
               return §;d§.CHEETOS_EXPLOSION;
            default:
               return §+e§.§>F§;
         }
      }
      
      override protected function checkExplosions(param1:§!+§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         if(param1.§!d§().toUpperCase() == "WHITE_EGG" || param1.§!d§().toUpperCase() == "TNT" || param1.§!d§().toUpperCase() == "CHEETO")
         {
            if(param1.§10§.toUpperCase() == §>S§.§9!6§)
            {
               addExplosions(§4!#§.§^f§,param1.§^!V§().GetPosition().x,param1.§^!V§().GetPosition().y);
            }
            else if(param1.§!d§().toUpperCase() == "CHEETO")
            {
               §%!,§.push(§4!#§.§<x§(§4!#§.§]!-§,param1.§^!V§().GetPosition().x,param1.§^!V§().GetPosition().y));
               _loc2_ = Math.random() * 3 + 1;
               _loc3_ = "Bird_Cheetos_Bag_Damage_" + _loc2_;
               §'M§.§1T§(_loc3_,"ChannelExplosions");
            }
            else
            {
               addExplosions(§4!#§.§->§,param1.§^!V§().GetPosition().x,param1.§^!V§().GetPosition().y);
            }
         }
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §!+§
      {
         var _loc10_:§!+§ = super.addObject(param1,param2,param3,param4,param5,param6,param7,param8);
         if(param1.indexOf("SPOT_PRIZE") > -1)
         {
            this.§0h§ = _loc10_;
            this.§0h§.sprite.visible = false;
         }
         return _loc10_;
      }
      
      public function §6!%§() : Boolean
      {
         var _loc1_:§+e§ = null;
         if(this.§0h§)
         {
            _loc1_ = §return§.particles.addParticle("CHEETOS_PACK_GLOW",§^Z§.§1a§,§+e§.§]@§,0,0,int.MAX_VALUE,"",0,0,0,0,90,1,15);
            _loc1_.§ _§(this.§0h§);
            this.§0h§.sprite.visible = true;
            return true;
         }
         return false;
      }
      
      public function § +§() : void
      {
         if(§<!4§.indexOf(this.§0h§) > -1)
         {
            §@!C§(this.§0h§,false,false,false);
         }
      }
      
      override public function dispose() : void
      {
         this.§0h§ = null;
         if(this.§`!S§)
         {
            clearInterval(this.§`!S§);
         }
         super.dispose();
      }
      
      override public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:§!+§ = §<!4§[param1];
         super.removeObjectWithIndex(param1,param2,param3,param4);
      }
      
      override public function objectCollision(param1:§!+§, param2:§!+§) : Boolean
      {
         if(param1 is §;d§)
         {
            (param1 as §;d§).§#X§ = false;
            §return§.activatePowerup();
            return false;
         }
         return super.objectCollision(param1,param2);
      }
      
      public function onComplete(param1:Event) : void
      {
         var returnObject:Object = null;
         var e:Event = param1;
         try
         {
            returnObject = §,x§.§%x§((e.currentTarget as URLLoader).data);
            if(returnObject)
            {
               if(returnObject.error != null && returnObject.error.code && returnObject.error.code as Number == §;A§.§]!M§)
               {
                  §'S§.§^!+§ = null;
                  if(returnObject.error.code as Number == §;A§.§]!M§)
                  {
                     try
                     {
                        §[2§.§^J§("reauthenticate",§'S§.§^!+§.§!X§);
                     }
                     catch(e:Error)
                     {
                     }
                  }
               }
               if(returnObject.userID)
               {
                  §[2§.§^J§("spotPrizeWin");
               }
            }
         }
         catch(e:Error)
         {
         }
      }
      
      public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      public function onIOError(param1:IOErrorEvent) : void
      {
         §;A§.sCheetosPopups.showPopup(§]d§.ERROR,§]B§.getText("Error"));
      }
   }
}
