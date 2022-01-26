package §?[§
{
   import § T§.§"!2§;
   import § T§.§+!Q§;
   import § T§.§1!'§;
   import § T§.§`!'§;
   import §!4§.§0m§;
   import §!4§.§^!_§;
   import §#!5§.§>!0§;
   import §#K§.§,3§;
   import §'Q§.§=!R§;
   import §1!A§.Sprite;
   import §4!R§.§@,§;
   import §6=§.§`!<§;
   import §7z§.§]!-§;
   import §=q§.§?X§;
   import §[I§.§5y§;
   import §[I§.§8!B§;
   import §[I§.§;!K§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.utils.clearInterval;
   
   public class §[t§ extends §1!'§ implements §5y§
   {
       
      
      private var §5!0§:§"!2§;
      
      private var §,C§:int;
      
      private var callObject:Object;
      
      private var §]x§:uint;
      
      public function §[t§(param1:§]!-§, param2:§?X§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §"!2§
      {
         var _loc10_:§"!2§ = null;
         if(param2 == "BIRD_CHEETOS_BAG")
         {
            _loc10_ = new §4y§(this,param1,§^'§.mLevelEngine.mWorld,§^'§,§,!I§,param2,param3,param4,param5);
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
            case §+!Q§.§#!_§:
               return §4y§.CHEETOS_EXPLOSION;
            default:
               return §^!_§.§'8§;
         }
      }
      
      override protected function checkExplosions(param1:§"!2§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         if(param1.§?h§().toUpperCase() == "WHITE_EGG" || param1.§?h§().toUpperCase() == "TNT" || param1.§?h§().toUpperCase() == "CHEETO")
         {
            if(param1.§9@§.toUpperCase() == §`!'§.§^a§)
            {
               addExplosions(§+!Q§.§-;§,param1.§][§().GetPosition().x,param1.§][§().GetPosition().y);
            }
            else if(param1.§?h§().toUpperCase() == "CHEETO")
            {
               §,!R§.push(§+!Q§.§;-§(§+!Q§.§#!_§,param1.§][§().GetPosition().x,param1.§][§().GetPosition().y));
               _loc2_ = Math.random() * 3 + 1;
               _loc3_ = "Bird_Cheetos_Bag_Damage_" + _loc2_;
               §,3§.§7!=§(_loc3_,"ChannelExplosions");
            }
            else
            {
               addExplosions(§+!Q§.§";§,param1.§][§().GetPosition().x,param1.§][§().GetPosition().y);
            }
         }
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §"!2§
      {
         var _loc10_:§"!2§ = super.addObject(param1,param2,param3,param4,param5,param6,param7,param8);
         if(param1.indexOf("SPOT_PRIZE") > -1)
         {
            this.§5!0§ = _loc10_;
            this.§5!0§.sprite.visible = false;
         }
         return _loc10_;
      }
      
      public function §^6§() : Boolean
      {
         var _loc1_:§^!_§ = null;
         if(this.§5!0§)
         {
            _loc1_ = §^'§.particles.addParticle("CHEETOS_PACK_GLOW",§0m§.§%h§,§^!_§.§4t§,0,0,int.MAX_VALUE,"",0,0,0,0,90,1,15);
            _loc1_.§^!;§(this.§5!0§);
            this.§5!0§.sprite.visible = true;
            return true;
         }
         return false;
      }
      
      public function §+2§() : void
      {
         if(§=!L§.indexOf(this.§5!0§) > -1)
         {
            §^g§(this.§5!0§,false,false,false);
         }
      }
      
      override public function dispose() : void
      {
         this.§5!0§ = null;
         if(this.§]x§)
         {
            clearInterval(this.§]x§);
         }
         super.dispose();
      }
      
      override public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:§"!2§ = §=!L§[param1];
         super.removeObjectWithIndex(param1,param2,param3,param4);
      }
      
      override public function objectCollision(param1:§"!2§, param2:§"!2§) : Boolean
      {
         if(param1 is §4y§)
         {
            (param1 as §4y§).§=i§ = false;
            §^'§.activatePowerup();
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
            returnObject = §;!K§.§#[§((e.currentTarget as URLLoader).data);
            if(returnObject)
            {
               if(returnObject.error != null && returnObject.error.code && returnObject.error.code as Number == §=!R§.§?!C§)
               {
                  §@,§.§&!;§ = null;
                  if(returnObject.error.code as Number == §=!R§.§?!C§)
                  {
                     try
                     {
                        §>!0§.§7!I§("reauthenticate",§@,§.§&!;§.§-%§);
                     }
                     catch(e:Error)
                     {
                     }
                  }
               }
               if(returnObject.userID)
               {
                  §>!0§.§7!I§("spotPrizeWin");
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
         §=!R§.sCheetosPopups.showPopup(§`!<§.ERROR,§8!B§.getText("Error"));
      }
   }
}
