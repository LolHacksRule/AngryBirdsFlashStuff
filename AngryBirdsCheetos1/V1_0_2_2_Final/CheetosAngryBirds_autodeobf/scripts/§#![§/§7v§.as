package §#![§
{
   import §!X§.§86§;
   import §%w§.§;s§;
   import §&!7§.§,!A§;
   import §&p§.§9!H§;
   import §'!3§.§"!Q§;
   import §'!3§.§3n§;
   import §'!3§.§4C§;
   import §,h§.§+0§;
   import §,h§.§1!T§;
   import §,h§.§6M§;
   import §,h§.§`!2§;
   import §0! §.§7o§;
   import §0! §.§<2§;
   import §6v§.§>S§;
   import §@!?§.§0!U§;
   import §]!F§.§&!]§;
   import §]@§.Sprite;
   import §`!K§.§!!>§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.utils.clearInterval;
   
   public class §7v§ extends §6M§ implements §3n§
   {
       
      
      private var §#!=§:§+0§;
      
      private var §7;§:int;
      
      private var callObject:Object;
      
      private var §8'§:uint;
      
      public function §7v§(param1:§86§, param2:§&!]§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §+0§
      {
         var _loc10_:§+0§ = null;
         if(param2 == "BIRD_CHEETOS_BAG")
         {
            _loc10_ = new §5<§(this,param1,§>`§.mLevelEngine.mWorld,§>`§,§;!W§,param2,param3,param4,param5);
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
            case §1!T§.§`!D§:
               return §5<§.CHEETOS_EXPLOSION;
            default:
               return §7o§.§40§;
         }
      }
      
      override protected function checkExplosions(param1:§+0§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         if(param1.§7<§().toUpperCase() == "WHITE_EGG" || param1.§7<§().toUpperCase() == "TNT" || param1.§7<§().toUpperCase() == "CHEETO")
         {
            if(param1.§2!1§.toUpperCase() == §`!2§.§ else§)
            {
               addExplosions(§1!T§.§ 9§,param1.§?!7§().GetPosition().x,param1.§?!7§().GetPosition().y);
            }
            else if(param1.§7<§().toUpperCase() == "CHEETO")
            {
               §=! §.push(§1!T§.§%!J§(§1!T§.§`!D§,param1.§?!7§().GetPosition().x,param1.§?!7§().GetPosition().y));
               _loc2_ = Math.random() * 3 + 1;
               _loc3_ = "Bird_Cheetos_Bag_Damage_" + _loc2_;
               §!!>§.playSound(_loc3_,"ChannelExplosions");
            }
            else
            {
               addExplosions(§1!T§.§-!Z§,param1.§?!7§().GetPosition().x,param1.§?!7§().GetPosition().y);
            }
         }
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §+0§
      {
         var _loc10_:§+0§ = super.addObject(param1,param2,param3,param4,param5,param6,param7,param8);
         if(param1.indexOf("SPOT_PRIZE") > -1)
         {
            this.§#!=§ = _loc10_;
            this.§#!=§.sprite.visible = false;
         }
         return _loc10_;
      }
      
      public function §0!L§() : Boolean
      {
         var _loc1_:§7o§ = null;
         if(this.§#!=§)
         {
            _loc1_ = §>`§.particles.addParticle("CHEETOS_PACK_GLOW",§<2§.§^#§,§7o§.§%u§,0,0,int.MAX_VALUE,"",0,0,0,0,90,1,15);
            _loc1_.§%A§(this.§#!=§);
            this.§#!=§.sprite.visible = true;
            return true;
         }
         return false;
      }
      
      public function §9g§() : void
      {
         if(§=U§.indexOf(this.§#!=§) > -1)
         {
            §"!>§(this.§#!=§,false,false,false);
         }
      }
      
      override public function dispose() : void
      {
         this.§#!=§ = null;
         if(this.§8'§)
         {
            clearInterval(this.§8'§);
         }
         super.dispose();
      }
      
      override public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§>S§ = null;
         var _loc5_:§+0§ = §=U§[param1];
         if(this.§#!=§ && param2)
         {
            if(_loc5_ == this.§#!=§)
            {
               §!!>§.playSound("SpotPrize2");
               §;s§.sCheetosPopups.showPopup(§0!U§.§%!'§);
               this.callObject = {
                  "type":§>S§.§=1§,
                  "sessionID":§>S§.§9J§(),
                  "userID":§9!H§.§ o§.name
               };
               _loc6_ = new §>S§(this.callObject,§#x§.§=1§,this,§>S§.§"!H§);
            }
         }
         super.removeObjectWithIndex(param1,param2,param3,param4);
      }
      
      override public function objectCollision(param1:§+0§, param2:§+0§) : Boolean
      {
         if(param1 is §5<§)
         {
            (param1 as §5<§).§%7§ = false;
            §>`§.activatePowerup();
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
            returnObject = §"!Q§.§!i§((e.currentTarget as URLLoader).data);
            if(returnObject)
            {
               if(returnObject.error != null && returnObject.error.code && returnObject.error.code as Number == §;s§.§83§)
               {
                  §9!H§.§ o§ = null;
                  if(returnObject.error.code as Number == §;s§.§83§)
                  {
                     try
                     {
                        §,!A§.§9!M§("reauthenticate",§9!H§.§ o§.§ I§);
                     }
                     catch(e:Error)
                     {
                     }
                  }
               }
               if(returnObject.userID)
               {
                  §,!A§.§9!M§("spotPrizeWin");
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
         §;s§.sCheetosPopups.showPopup(§0!U§.ERROR,§4C§.getText("Error"));
      }
   }
}
