package §package§
{
   import §!!%§.§7!W§;
   import §!!%§.§?f§;
   import §!!R§.Sprite;
   import §![§.§4!6§;
   import §#K§.§?I§;
   import §#v§.§ !2§;
   import §#v§.§!v§;
   import §#v§.;
   import §#v§.§-!7§;
   import §0!>§.§-i§;
   import §0!>§.§1!#§;
   import §0!>§.§=w§;
   import §2!6§.§%!$§;
   import §2e§.§4!E§;
   import §3!C§.§3o§;
   import §<!U§.§]u§;
   import §?!1§.§+a§;
   import §?'§.§9N§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.utils.clearInterval;
   
   public class §'!"§ extends §-!7§ implements §-i§
   {
       
      
      private var §?!6§:§#3§;
      
      private var §=4§:int;
      
      private var callObject:Object;
      
      private var §0f§:uint;
      
      public function §'!"§(param1:§9N§, param2:§?I§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §#3§
      {
         var _loc10_:§#3§ = null;
         if(param2 == "BIRD_CHEETOS_BAG")
         {
            _loc10_ = new §"!0§(this,param1,§;c§.mLevelEngine.mWorld,§;c§,§&$§,param2,param3,param4,param5);
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
            case §!v§.§8Z§:
               return §"!0§.CHEETOS_EXPLOSION;
            default:
               return §?f§.§,G§;
         }
      }
      
      override protected function checkExplosions(param1:§#3§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         if(param1.§<=§().toUpperCase() == "WHITE_EGG" || param1.§<=§().toUpperCase() == "TNT" || param1.§<=§().toUpperCase() == "CHEETO")
         {
            if(param1.§,!§.toUpperCase() == § !2§.§]!W§)
            {
               addExplosions(§!v§.§#-§,param1.§#a§().GetPosition().x,param1.§#a§().GetPosition().y);
            }
            else if(param1.§<=§().toUpperCase() == "CHEETO")
            {
               §7!2§.push(§!v§.§=!C§(§!v§.§8Z§,param1.§#a§().GetPosition().x,param1.§#a§().GetPosition().y));
               _loc2_ = Math.random() * 3 + 1;
               _loc3_ = "Bird_Cheetos_Bag_Damage_" + _loc2_;
               §%!$§.playSound(_loc3_,"ChannelExplosions");
            }
            else
            {
               addExplosions(§!v§.§'H§,param1.§#a§().GetPosition().x,param1.§#a§().GetPosition().y);
            }
         }
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §#3§
      {
         var _loc10_:§#3§ = super.addObject(param1,param2,param3,param4,param5,param6,param7,param8);
         if(param1.indexOf("SPOT_PRIZE") > -1)
         {
            this.§?!6§ = _loc10_;
            this.§?!6§.sprite.visible = false;
         }
         return _loc10_;
      }
      
      public function §+!X§() : Boolean
      {
         var _loc1_:§?f§ = null;
         if(this.§?!6§)
         {
            _loc1_ = §;c§.particles.addParticle("CHEETOS_PACK_GLOW",§7!W§.§`!+§,§?f§.§"z§,0,0,int.MAX_VALUE,"",0,0,0,0,90,1,15);
            _loc1_.§[c§(this.§?!6§);
            this.§?!6§.sprite.visible = true;
            return true;
         }
         return false;
      }
      
      public function §"k§() : void
      {
         if(§=!,§.indexOf(this.§?!6§) > -1)
         {
            §5F§(this.§?!6§,false,false,false);
         }
      }
      
      override public function dispose() : void
      {
         this.§?!6§ = null;
         if(this.§0f§)
         {
            clearInterval(this.§0f§);
         }
         super.dispose();
      }
      
      override public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§4!E§ = null;
         var _loc5_:§#3§ = §=!,§[param1];
         if(this.§?!6§ && param2)
         {
            if(_loc5_ == this.§?!6§)
            {
               §%!$§.playSound("SpotPrize2");
               §]u§.sCheetosPopups.showPopup(§+a§.§-k§);
               this.callObject = {
                  "type":§4!E§.§]!N§,
                  "sessionID":§4!E§.§0E§(),
                  "userID":§3o§.§-j§.name
               };
               _loc6_ = new §4!E§(this.callObject,§,l§.§]!N§,this,§4!E§.§;4§);
            }
         }
         super.removeObjectWithIndex(param1,param2,param3,param4);
      }
      
      override public function objectCollision(param1:§#3§, param2:§#3§) : void
      {
         if(param1 is §"!0§)
         {
            (param1 as §"!0§).§ -§ = false;
            §;c§.activatePowerup();
         }
         else
         {
            super.objectCollision(param1,param2);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var returnObject:Object = null;
         var e:Event = param1;
         try
         {
            returnObject = §=w§.§`m§((e.currentTarget as URLLoader).data);
            if(returnObject)
            {
               if(returnObject.error != null && returnObject.error.code && returnObject.error.code as Number == §]u§.§,!#§)
               {
                  §3o§.§-j§ = null;
                  if(returnObject.error.code as Number == §]u§.§,!#§)
                  {
                     try
                     {
                        §4!6§.§]l§("reauthenticate",§3o§.§-j§.§7'§);
                     }
                     catch(e:Error)
                     {
                     }
                  }
               }
               if(returnObject.userID)
               {
                  §4!6§.§]l§("spotPrizeWin");
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
         §]u§.sCheetosPopups.showPopup(§+a§.ERROR,§1!#§.getText("Error"));
      }
   }
}
