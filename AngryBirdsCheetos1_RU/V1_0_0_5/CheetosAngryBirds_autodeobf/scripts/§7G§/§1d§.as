package §7G§
{
   import §"C§.§6'§;
   import §"C§.§7s§;
   import §"C§.§?w§;
   import §"C§.§]%§;
   import §%b§.§0!Z§;
   import §&!`§.§&A§;
   import §0C§.§;!Q§;
   import §2V§.§!!_§;
   import §4!§.§&6§;
   import §4!§.§&J§;
   import §4!§.§2!L§;
   import §9$§.§;!K§;
   import §98§.§;m§;
   import §98§.§=!F§;
   import §;C§.§5!O§;
   import §?!N§.§?!"§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.utils.clearInterval;
   import §null §.Sprite;
   
   public class §1d§ extends §7s§ implements §2!L§
   {
       
      
      private var §+5§:§?w§;
      
      private var §;2§:int;
      
      private var callObject:Object;
      
      private var §0!`§:uint;
      
      public function §1d§(param1:§0!Z§, param2:§;!Q§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §?w§
      {
         var _loc10_:§?w§ = null;
         if(param2 == "BIRD_CHEETOS_BAG")
         {
            _loc10_ = new §^0§(this,param1,§]!8§.mLevelEngine.mWorld,§]!8§,§ Y§,param2,param3,param4,param5);
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
            case §]%§.§,P§:
               return §^0§.CHEETOS_EXPLOSION;
            default:
               return §=!F§.§>6§;
         }
      }
      
      override protected function checkExplosions(param1:§?w§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         if(param1.§ !$§().toUpperCase() == "WHITE_EGG" || param1.§ !$§().toUpperCase() == "TNT" || param1.§ !$§().toUpperCase() == "CHEETO")
         {
            if(param1.§]!W§.toUpperCase() == §6'§.§0B§)
            {
               addExplosions(§]%§.§@r§,param1.§?@§().GetPosition().x,param1.§?@§().GetPosition().y);
            }
            else if(param1.§ !$§().toUpperCase() == "CHEETO")
            {
               §3=§.push(§]%§.§9!Q§(§]%§.§,P§,param1.§?@§().GetPosition().x,param1.§?@§().GetPosition().y));
               _loc2_ = Math.random() * 3 + 1;
               _loc3_ = "Bird_Cheetos_Bag_Damage_" + _loc2_;
               §5!O§.§-q§(_loc3_,"ChannelExplosions");
            }
            else
            {
               addExplosions(§]%§.§[!X§,param1.§?@§().GetPosition().x,param1.§?@§().GetPosition().y);
            }
         }
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §?w§
      {
         var _loc10_:§?w§ = super.addObject(param1,param2,param3,param4,param5,param6,param7,param8);
         if(param1.indexOf("SPOT_PRIZE") > -1)
         {
            this.§+5§ = _loc10_;
            this.§+5§.sprite.visible = false;
         }
         return _loc10_;
      }
      
      public function §3S§() : Boolean
      {
         var _loc1_:§=!F§ = null;
         if(this.§+5§)
         {
            _loc1_ = §]!8§.particles.addParticle("CHEETOS_PACK_GLOW",§;m§.§'g§,§=!F§.§'U§,0,0,int.MAX_VALUE,"",0,0,0,0,90,1,15);
            _loc1_.§%&§(this.§+5§);
            this.§+5§.sprite.visible = true;
            return true;
         }
         return false;
      }
      
      public function §!q§() : void
      {
         if(§,v§.indexOf(this.§+5§) > -1)
         {
            §"!0§(this.§+5§,false,false,false);
         }
      }
      
      override public function dispose() : void
      {
         this.§+5§ = null;
         if(this.§0!`§)
         {
            clearInterval(this.§0!`§);
         }
         super.dispose();
      }
      
      override public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:§?w§ = §,v§[param1];
         super.removeObjectWithIndex(param1,param2,param3,param4);
      }
      
      override public function objectCollision(param1:§?w§, param2:§?w§) : Boolean
      {
         if(param1 is §^0§)
         {
            (param1 as §^0§).§&0§ = false;
            §]!8§.activatePowerup();
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
            returnObject = §&6§.§1!2§((e.currentTarget as URLLoader).data);
            if(returnObject)
            {
               if(returnObject.error != null && returnObject.error.code && returnObject.error.code as Number == §&A§.§2w§)
               {
                  §;!K§.§+!K§ = null;
                  if(returnObject.error.code as Number == §&A§.§2w§)
                  {
                     try
                     {
                        §?!"§.§7`§("reauthenticate",§;!K§.§+!K§.§'!9§);
                     }
                     catch(e:Error)
                     {
                     }
                  }
               }
               if(returnObject.userID)
               {
                  §?!"§.§7`§("spotPrizeWin");
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
         §&A§.sCheetosPopups.showPopup(§!!_§.ERROR,§&J§.getText("Error"));
      }
   }
}
