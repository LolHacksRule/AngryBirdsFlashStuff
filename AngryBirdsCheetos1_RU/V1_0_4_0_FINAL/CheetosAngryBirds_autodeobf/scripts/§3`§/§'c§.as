package §3`§
{
   import §!$§.§!!O§;
   import §0V§.§`!O§;
   import §1e§.§&!R§;
   import §2!C§.§1!b§;
   import §3!8§.§8[§;
   import §3!8§.§[X§;
   import §3!8§.§`p§;
   import §3§.Sprite;
   import §39§.§=R§;
   import §3d§.§20§;
   import §3d§.§6!9§;
   import §3d§.§>-§;
   import §3d§.§@?§;
   import §>X§.§"^§;
   import §>X§.§7!%§;
   import §[p§.§"w§;
   import §]u§.§+e§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.utils.clearInterval;
   
   public class §'c§ extends §@?§ implements §8[§
   {
       
      
      private var §'!c§:§20§;
      
      private var §7!`§:int;
      
      private var callObject:Object;
      
      private var § q§:uint;
      
      public function §'c§(param1:§`!O§, param2:§=R§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §20§
      {
         var _loc10_:§20§ = null;
         if(param2 == "BIRD_CHEETOS_BAG")
         {
            _loc10_ = new §,!V§(this,param1,§!q§.mLevelEngine.mWorld,§!q§,§+_§,param2,param3,param4,param5);
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
            case §6!9§.§4$§:
               return §,!V§.CHEETOS_EXPLOSION;
            default:
               return §7!%§.§9! §;
         }
      }
      
      override protected function checkExplosions(param1:§20§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         if(param1.§&!@§().toUpperCase() == "WHITE_EGG" || param1.§&!@§().toUpperCase() == "TNT" || param1.§&!@§().toUpperCase() == "CHEETO")
         {
            if(param1.§6O§.toUpperCase() == §>-§.§>!H§)
            {
               addExplosions(§6!9§.§ !?§,param1.§=!,§().GetPosition().x,param1.§=!,§().GetPosition().y);
            }
            else if(param1.§&!@§().toUpperCase() == "CHEETO")
            {
               §+!!§.push(§6!9§.§"K§(§6!9§.§4$§,param1.§=!,§().GetPosition().x,param1.§=!,§().GetPosition().y));
               _loc2_ = Math.random() * 3 + 1;
               _loc3_ = "Bird_Cheetos_Bag_Damage_" + _loc2_;
               §!!O§.§<D§(_loc3_,"ChannelExplosions");
            }
            else
            {
               addExplosions(§6!9§.§3!#§,param1.§=!,§().GetPosition().x,param1.§=!,§().GetPosition().y);
            }
         }
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §20§
      {
         var _loc10_:§20§ = super.addObject(param1,param2,param3,param4,param5,param6,param7,param8);
         if(param1.indexOf("SPOT_PRIZE") > -1)
         {
            this.§'!c§ = _loc10_;
            this.§'!c§.sprite.visible = false;
         }
         return _loc10_;
      }
      
      public function §5p§() : Boolean
      {
         var _loc1_:§7!%§ = null;
         if(this.§'!c§)
         {
            _loc1_ = §!q§.particles.addParticle("CHEETOS_PACK_GLOW",§"^§.§4H§,§7!%§.§!w§,0,0,int.MAX_VALUE,"",0,0,0,0,90,1,15);
            _loc1_.§#!Q§(this.§'!c§);
            this.§'!c§.sprite.visible = true;
            return true;
         }
         return false;
      }
      
      public function §^!>§() : void
      {
         if(§;1§.indexOf(this.§'!c§) > -1)
         {
            §#z§(this.§'!c§,false,false,false);
         }
      }
      
      override public function dispose() : void
      {
         this.§'!c§ = null;
         if(this.§ q§)
         {
            clearInterval(this.§ q§);
         }
         super.dispose();
      }
      
      override public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:§20§ = §;1§[param1];
         super.removeObjectWithIndex(param1,param2,param3,param4);
      }
      
      override public function objectCollision(param1:§20§, param2:§20§) : Boolean
      {
         if(param1 is §,!V§)
         {
            (param1 as §,!V§).§"F§ = false;
            §!q§.activatePowerup();
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
            returnObject = §`p§.§=p§((e.currentTarget as URLLoader).data);
            if(returnObject)
            {
               if(returnObject.error != null && returnObject.error.code && returnObject.error.code as Number == §1!b§.§#+§)
               {
                  §"w§.§2C§ = null;
                  if(returnObject.error.code as Number == §1!b§.§#+§)
                  {
                     try
                     {
                        §+e§.§5?§("reauthenticate",§"w§.§2C§.§0m§);
                     }
                     catch(e:Error)
                     {
                     }
                  }
               }
               if(returnObject.userID)
               {
                  §+e§.§5?§("spotPrizeWin");
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
         §1!b§.sCheetosPopups.showPopup(§&!R§.ERROR,§[X§.getText("Error"));
      }
   }
}
