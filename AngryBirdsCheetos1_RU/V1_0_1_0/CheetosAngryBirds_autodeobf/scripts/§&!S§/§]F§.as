package §&!S§
{
   import §!!V§.§&I§;
   import §&!5§.Sprite;
   import §,!?§.§-! §;
   import §1E§.§2^§;
   import §8e§.§"!U§;
   import §8e§.§7!H§;
   import §9!Z§.§<!W§;
   import §;!<§.§"$§;
   import §;!<§.§-U§;
   import §;!<§.§6C§;
   import §>8§.§#%§;
   import §?u§.§+V§;
   import §]!+§.§";§;
   import §]!+§.§'§;
   import §]!+§.§-!6§;
   import §]!+§.§<i§;
   import §^!!§.§'!_§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.utils.clearInterval;
   
   public class §]F§ extends §'§ implements §"$§
   {
       
      
      private var §"! §:§";§;
      
      private var §>6§:int;
      
      private var callObject:Object;
      
      private var §,d§:uint;
      
      public function §]F§(param1:§&I§, param2:§#%§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §";§
      {
         var _loc10_:§";§ = null;
         if(param2 == "BIRD_CHEETOS_BAG")
         {
            _loc10_ = new §"!N§(this,param1,§%v§.mLevelEngine.mWorld,§%v§,§ 7§,param2,param3,param4,param5);
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
            case §<i§.§,f§:
               return §"!N§.CHEETOS_EXPLOSION;
            default:
               return §"!U§.§5!=§;
         }
      }
      
      override protected function checkExplosions(param1:§";§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         if(param1.§#!-§().toUpperCase() == "WHITE_EGG" || param1.§#!-§().toUpperCase() == "TNT" || param1.§#!-§().toUpperCase() == "CHEETO")
         {
            if(param1.§+!J§.toUpperCase() == §-!6§.§#!2§)
            {
               addExplosions(§<i§.§"Y§,param1.§?A§().GetPosition().x,param1.§?A§().GetPosition().y);
            }
            else if(param1.§#!-§().toUpperCase() == "CHEETO")
            {
               §?e§.push(§<i§.§42§(§<i§.§,f§,param1.§?A§().GetPosition().x,param1.§?A§().GetPosition().y));
               _loc2_ = Math.random() * 3 + 1;
               _loc3_ = "Bird_Cheetos_Bag_Damage_" + _loc2_;
               §2^§.§ !C§(_loc3_,"ChannelExplosions");
            }
            else
            {
               addExplosions(§<i§.§`N§,param1.§?A§().GetPosition().x,param1.§?A§().GetPosition().y);
            }
         }
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §";§
      {
         var _loc10_:§";§ = super.addObject(param1,param2,param3,param4,param5,param6,param7,param8);
         if(param1.indexOf("SPOT_PRIZE") > -1)
         {
            this.§"! § = _loc10_;
            this.§"! §.sprite.visible = false;
         }
         return _loc10_;
      }
      
      public function §6v§() : Boolean
      {
         var _loc1_:§"!U§ = null;
         if(this.§"! §)
         {
            _loc1_ = §%v§.particles.addParticle("CHEETOS_PACK_GLOW",§7!H§.§'0§,§"!U§.§+6§,0,0,int.MAX_VALUE,"",0,0,0,0,90,1,15);
            _loc1_.§7+§(this.§"! §);
            this.§"! §.sprite.visible = true;
            return true;
         }
         return false;
      }
      
      public function §`P§() : void
      {
         if(§!!I§.indexOf(this.§"! §) > -1)
         {
            §-R§(this.§"! §,false,false,false);
         }
      }
      
      override public function dispose() : void
      {
         this.§"! § = null;
         if(this.§,d§)
         {
            clearInterval(this.§,d§);
         }
         super.dispose();
      }
      
      override public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:§";§ = §!!I§[param1];
         super.removeObjectWithIndex(param1,param2,param3,param4);
      }
      
      override public function objectCollision(param1:§";§, param2:§";§) : Boolean
      {
         if(param1 is §"!N§)
         {
            (param1 as §"!N§).§@p§ = false;
            §%v§.activatePowerup();
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
            returnObject = §-U§.§[f§((e.currentTarget as URLLoader).data);
            if(returnObject)
            {
               if(returnObject.error != null && returnObject.error.code && returnObject.error.code as Number == §-! §.§^>§)
               {
                  §'!_§.§=!"§ = null;
                  if(returnObject.error.code as Number == §-! §.§^>§)
                  {
                     try
                     {
                        §+V§.§3!'§("reauthenticate",§'!_§.§=!"§.§^!F§);
                     }
                     catch(e:Error)
                     {
                     }
                  }
               }
               if(returnObject.userID)
               {
                  §+V§.§3!'§("spotPrizeWin");
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
         §-! §.sCheetosPopups.showPopup(§<!W§.ERROR,§6C§.getText("Error"));
      }
   }
}
