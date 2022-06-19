package §'!"§
{
   import §"!+§.§2!U§;
   import §"!+§.§6!7§;
   import §"!+§.§=w§;
   import §%!$§.§=m§;
   import §+a§.§8!I§;
   import §-!7§.§&$§;
   import §-!7§.§?L§;
   import §-!7§.§@m§;
   import §-!7§.§]!W§;
   import §2e§.§4!E§;
   import §3o§.§;!=§;
   import §4!6§.§,Y§;
   import §9N§.§9!%§;
   import §<!+§.§with§;
   import §<!U§.§]u§;
   import §?f§.§,v§;
   import §?f§.§-&§;
   import §`a§.Sprite;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.utils.clearInterval;
   
   public class §?!6§ extends §&$§ implements §=w§
   {
       
      
      private var §=4§:§@m§;
      
      private var §0f§:int;
      
      private var callObject:Object;
      
      private var §+!X§:uint;
      
      public function §?!6§(param1:§9!%§, param2:§with§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §@m§
      {
         var _loc10_:§@m§ = null;
         if(param2 == "BIRD_CHEETOS_BAG")
         {
            _loc10_ = new § -§(this,param1,§8@§.mLevelEngine.mWorld,§8@§,§7!2§,param2,param3,param4,param5);
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
            case §?L§.§0!;§:
               return § -§.CHEETOS_EXPLOSION;
            default:
               return §-&§.§9'§;
         }
      }
      
      override protected function checkExplosions(param1:§@m§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         if(param1.§7J§().toUpperCase() == "WHITE_EGG" || param1.§7J§().toUpperCase() == "TNT" || param1.§7J§().toUpperCase() == "CHEETO")
         {
            if(param1.§ h§.toUpperCase() == §]!W§.§'`§)
            {
               addExplosions(§?L§.§'H§,param1.§`!#§().GetPosition().x,param1.§`!#§().GetPosition().y);
            }
            else if(param1.§7J§().toUpperCase() == "CHEETO")
            {
               §6D§.push(§?L§.§<!V§(§?L§.§0!;§,param1.§`!#§().GetPosition().x,param1.§`!#§().GetPosition().y));
               _loc2_ = Math.random() * 3 + 1;
               _loc3_ = "Bird_Cheetos_Bag_Damage_" + _loc2_;
               §=m§.playSound(_loc3_,"ChannelExplosions");
            }
            else
            {
               addExplosions(§?L§.§6!1§,param1.§`!#§().GetPosition().x,param1.§`!#§().GetPosition().y);
            }
         }
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §@m§
      {
         var _loc10_:§@m§ = super.addObject(param1,param2,param3,param4,param5,param6,param7,param8);
         if(param1.indexOf("SPOT_PRIZE") > -1)
         {
            this.§=4§ = _loc10_;
            this.§=4§.sprite.visible = false;
         }
         return _loc10_;
      }
      
      public function §"k§() : Boolean
      {
         var _loc1_:§-&§ = null;
         if(this.§=4§)
         {
            _loc1_ = §8@§.particles.addParticle("CHEETOS_PACK_GLOW",§,v§.§'>§,§-&§.§ ,§,0,0,int.MAX_VALUE,"",0,0,0,0,90,1,15);
            _loc1_.§4,§(this.§=4§);
            this.§=4§.sprite.visible = true;
            return true;
         }
         return false;
      }
      
      public function §"!0§() : void
      {
         if(§5! §.indexOf(this.§=4§) > -1)
         {
            §3!K§(this.§=4§,false,false,false);
         }
      }
      
      override public function dispose() : void
      {
         this.§=4§ = null;
         if(this.§+!X§)
         {
            clearInterval(this.§+!X§);
         }
         super.dispose();
      }
      
      override public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§4!E§ = null;
         var _loc5_:§@m§ = §5! §[param1];
         if(this.§=4§ && param2)
         {
            if(_loc5_ == this.§=4§)
            {
               §=m§.playSound("SpotPrize2");
               §]u§.sCheetosPopups.showPopup(§8!I§.§<$§);
               this.callObject = {
                  "type":§4!E§.§]!N§,
                  "sessionID":§4!E§.§0E§(),
                  "userID":§;!=§.§`!;§.name
               };
               _loc6_ = new §4!E§(this.callObject,§,l§.§]!N§,this,§4!E§.§;4§);
            }
         }
         super.removeObjectWithIndex(param1,param2,param3,param4);
      }
      
      override public function objectCollision(param1:§@m§, param2:§@m§) : void
      {
         if(param1 is § -§)
         {
            (param1 as § -§).§&L§ = false;
            §8@§.activatePowerup();
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
            returnObject = §2!U§.§1!#§((e.currentTarget as URLLoader).data);
            if(returnObject)
            {
               if(returnObject.error != null && returnObject.error.code && returnObject.error.code as Number == §]u§.§,!#§)
               {
                  §;!=§.§`!;§ = null;
                  if(returnObject.error.code as Number == §]u§.§,!#§)
                  {
                     try
                     {
                        §,Y§.§[[§("reauthenticate",§;!=§.§`!;§.§each §);
                     }
                     catch(e:Error)
                     {
                     }
                  }
               }
               if(returnObject.userID)
               {
                  §,Y§.§[[§("spotPrizeWin");
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
         §]u§.sCheetosPopups.showPopup(§8!I§.ERROR,§6!7§.getText("Error"));
      }
   }
}
