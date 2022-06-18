package §,!2§
{
   import §#h§.§]!"§;
   import §#h§.§^!+§;
   import §#h§.§break§;
   import §0L§.§&Y§;
   import §3n§.§<D§;
   import §4p§.§-5§;
   import §7!7§.§return§;
   import §8!C§.§%v§;
   import §8!C§.§2!4§;
   import §9!a§.Sprite;
   import §9T§.§=!^§;
   import §[>§.§'!'§;
   import §[>§.§5!$§;
   import §[>§.§[S§;
   import §[>§.§`,§;
   import §^9§.§3A§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.utils.clearInterval;
   import §import§.§&^§;
   
   public class §-!S§ extends §'!'§ implements §break§
   {
       
      
      private var §3!"§:§`,§;
      
      private var §73§:int;
      
      private var callObject:Object;
      
      private var §4!-§:uint;
      
      public function §-!S§(param1:§=!^§, param2:§3A§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §`,§
      {
         var _loc10_:§`,§ = null;
         if(param2 == "BIRD_CHEETOS_BAG")
         {
            _loc10_ = new §9=§(this,param1,§&?§.mLevelEngine.mWorld,§&?§,§!g§,param2,param3,param4,param5);
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
            case §5!$§.§4E§:
               return §9=§.CHEETOS_EXPLOSION;
            default:
               return §%v§.§%5§;
         }
      }
      
      override protected function checkExplosions(param1:§`,§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         if(param1.§=!8§().toUpperCase() == "WHITE_EGG" || param1.§=!8§().toUpperCase() == "TNT" || param1.§=!8§().toUpperCase() == "CHEETO")
         {
            if(param1.§@!]§.toUpperCase() == §[S§.§=!<§)
            {
               addExplosions(§5!$§.§ T§,param1.§7!<§().GetPosition().x,param1.§7!<§().GetPosition().y);
            }
            else if(param1.§=!8§().toUpperCase() == "CHEETO")
            {
               §`v§.push(§5!$§.§9v§(§5!$§.§4E§,param1.§7!<§().GetPosition().x,param1.§7!<§().GetPosition().y));
               _loc2_ = Math.random() * 3 + 1;
               _loc3_ = "Bird_Cheetos_Bag_Damage_" + _loc2_;
               §return§.§2!S§(_loc3_,"ChannelExplosions");
            }
            else
            {
               addExplosions(§5!$§.§+!C§,param1.§7!<§().GetPosition().x,param1.§7!<§().GetPosition().y);
            }
         }
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §`,§
      {
         var _loc10_:§`,§ = super.addObject(param1,param2,param3,param4,param5,param6,param7,param8);
         if(param1.indexOf("SPOT_PRIZE") > -1)
         {
            this.§3!"§ = _loc10_;
            this.§3!"§.sprite.visible = false;
         }
         return _loc10_;
      }
      
      public function §?4§() : Boolean
      {
         var _loc1_:§%v§ = null;
         if(this.§3!"§)
         {
            _loc1_ = §&?§.particles.addParticle("CHEETOS_PACK_GLOW",§2!4§.§@!P§,§%v§.§[H§,0,0,int.MAX_VALUE,"",0,0,0,0,90,1,15);
            _loc1_.§ d§(this.§3!"§);
            this.§3!"§.sprite.visible = true;
            return true;
         }
         return false;
      }
      
      public function §+0§() : void
      {
         if(§6! §.indexOf(this.§3!"§) > -1)
         {
            §>1§(this.§3!"§,false,false,false);
         }
      }
      
      override public function dispose() : void
      {
         this.§3!"§ = null;
         if(this.§4!-§)
         {
            clearInterval(this.§4!-§);
         }
         super.dispose();
      }
      
      override public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:§`,§ = §6! §[param1];
         super.removeObjectWithIndex(param1,param2,param3,param4);
      }
      
      override public function objectCollision(param1:§`,§, param2:§`,§) : Boolean
      {
         if(param1 is §9=§)
         {
            (param1 as §9=§).§`K§ = false;
            §&?§.activatePowerup();
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
            returnObject = §]!"§.§5A§((e.currentTarget as URLLoader).data);
            if(returnObject)
            {
               if(returnObject.error != null && returnObject.error.code && returnObject.error.code as Number == §<D§.§5!8§)
               {
                  §&Y§.§>!_§ = null;
                  if(returnObject.error.code as Number == §<D§.§5!8§)
                  {
                     try
                     {
                        §&^§.§4'§("reauthenticate",§&Y§.§>!_§.§;S§);
                     }
                     catch(e:Error)
                     {
                     }
                  }
               }
               if(returnObject.userID)
               {
                  §&^§.§4'§("spotPrizeWin");
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
         §<D§.sCheetosPopups.showPopup(§-5§.ERROR,§^!+§.getText("Error"));
      }
   }
}
