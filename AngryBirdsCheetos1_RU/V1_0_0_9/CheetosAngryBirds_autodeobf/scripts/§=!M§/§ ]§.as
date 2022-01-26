package §=!M§
{
   import § !X§.§+2§;
   import §"!@§.§&;§;
   import §#!P§.§#A§;
   import §#!P§.§&!4§;
   import §#!P§.§2!W§;
   import §#!P§.§@N§;
   import §27§.§ M§;
   import §27§.§4+§;
   import §3E§.§6w§;
   import §5!G§.§31§;
   import §7u§.Sprite;
   import §8!#§.§6G§;
   import §>!1§.§!!Q§;
   import §>!1§.§9A§;
   import §>!1§.§>!A§;
   import §>!6§.§0L§;
   import §@1§.§]R§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.utils.clearInterval;
   
   public class § ]§ extends §#A§ implements §>!A§
   {
       
      
      private var §[s§:§2!W§;
      
      private var §!y§:int;
      
      private var callObject:Object;
      
      private var §4s§:uint;
      
      public function § ]§(param1:§6w§, param2:§&;§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §2!W§
      {
         var _loc10_:§2!W§ = null;
         if(param2 == "BIRD_CHEETOS_BAG")
         {
            _loc10_ = new §[q§(this,param1,§]v§.mLevelEngine.mWorld,§]v§,§2!L§,param2,param3,param4,param5);
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
            case §@N§.§?! §:
               return §[q§.CHEETOS_EXPLOSION;
            default:
               return §4+§.§>!!§;
         }
      }
      
      override protected function checkExplosions(param1:§2!W§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         if(param1.§ !-§().toUpperCase() == "WHITE_EGG" || param1.§ !-§().toUpperCase() == "TNT" || param1.§ !-§().toUpperCase() == "CHEETO")
         {
            if(param1.§<Y§.toUpperCase() == §&!4§.§3m§)
            {
               addExplosions(§@N§.§<d§,param1.§84§().GetPosition().x,param1.§84§().GetPosition().y);
            }
            else if(param1.§ !-§().toUpperCase() == "CHEETO")
            {
               §;5§.push(§@N§.§%J§(§@N§.§?! §,param1.§84§().GetPosition().x,param1.§84§().GetPosition().y));
               _loc2_ = Math.random() * 3 + 1;
               _loc3_ = "Bird_Cheetos_Bag_Damage_" + _loc2_;
               §31§.§>%§(_loc3_,"ChannelExplosions");
            }
            else
            {
               addExplosions(§@N§.§@e§,param1.§84§().GetPosition().x,param1.§84§().GetPosition().y);
            }
         }
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §2!W§
      {
         var _loc10_:§2!W§ = super.addObject(param1,param2,param3,param4,param5,param6,param7,param8);
         if(param1.indexOf("SPOT_PRIZE") > -1)
         {
            this.§[s§ = _loc10_;
            this.§[s§.sprite.visible = false;
         }
         return _loc10_;
      }
      
      public function §8d§() : Boolean
      {
         var _loc1_:§4+§ = null;
         if(this.§[s§)
         {
            _loc1_ = §]v§.particles.addParticle("CHEETOS_PACK_GLOW",§ M§.§7<§,§4+§.§&'§,0,0,int.MAX_VALUE,"",0,0,0,0,90,1,15);
            _loc1_.§>J§(this.§[s§);
            this.§[s§.sprite.visible = true;
            return true;
         }
         return false;
      }
      
      public function §^!M§() : void
      {
         if(§0!7§.indexOf(this.§[s§) > -1)
         {
            §1!;§(this.§[s§,false,false,false);
         }
      }
      
      override public function dispose() : void
      {
         this.§[s§ = null;
         if(this.§4s§)
         {
            clearInterval(this.§4s§);
         }
         super.dispose();
      }
      
      override public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:§2!W§ = §0!7§[param1];
         super.removeObjectWithIndex(param1,param2,param3,param4);
      }
      
      override public function objectCollision(param1:§2!W§, param2:§2!W§) : Boolean
      {
         if(param1 is §[q§)
         {
            (param1 as §[q§).§%j§ = false;
            §]v§.activatePowerup();
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
            returnObject = §!!Q§.§+!!§((e.currentTarget as URLLoader).data);
            if(returnObject)
            {
               if(returnObject.error != null && returnObject.error.code && returnObject.error.code as Number == §]R§.§+3§)
               {
                  §6G§.§+J§ = null;
                  if(returnObject.error.code as Number == §]R§.§+3§)
                  {
                     try
                     {
                        §0L§.§[!H§("reauthenticate",§6G§.§+J§.§0C§);
                     }
                     catch(e:Error)
                     {
                     }
                  }
               }
               if(returnObject.userID)
               {
                  §0L§.§[!H§("spotPrizeWin");
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
         §]R§.sCheetosPopups.showPopup(§+2§.ERROR,§9A§.getText("Error"));
      }
   }
}
