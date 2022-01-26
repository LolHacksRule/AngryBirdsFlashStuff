package §_-CA§
{
   import §_-0-K§.§_-FL§;
   import §_-5b§.§_-Vj§;
   import §_-E5§.§_-Wo§;
   import §_-Fk§.§_-Cb§;
   import §_-Fk§.§_-P2§;
   import §_-Fk§.§_-lp§;
   import §_-Fk§.§_-pf§;
   import §_-G§.§_-o5§;
   import §_-Is§.§_-3Q§;
   import §_-Lw§.§_-RT§;
   import §_-Lw§.§_-hQ§;
   import §_-Q2§.§_-Zr§;
   import §_-Xz§.§_-SW§;
   import §_-Y7§.§_-Sg§;
   import §_-Y7§.§_-Y-§;
   import §_-Y7§.§_-d8§;
   import §_-kI§.§_-Iv§;
   import §case §.Sprite;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.utils.clearInterval;
   
   public class §_-4-§ extends §_-lp§ implements §_-Sg§
   {
       
      
      private var §_-eW§:§_-Cb§;
      
      private var §_-nX§:int;
      
      private var callObject:Object;
      
      private var §_-0I§:uint;
      
      public function §_-4-§(param1:§_-FL§, param2:§_-Vj§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §_-Cb§
      {
         var _loc10_:§_-Cb§ = null;
         if(param2 == "BIRD_CHEETOS_BAG")
         {
            _loc10_ = new §_-hU§(this,param1,§_-mC§.mLevelEngine.mWorld,§_-mC§,§_-HM§,param2,param3,param4,param5);
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
            case §_-P2§.§_-di§:
               return §_-hU§.CHEETOS_EXPLOSION;
            default:
               return §_-hQ§.§_-kO§;
         }
      }
      
      override protected function checkExplosions(param1:§_-Cb§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         if(param1.§_-5B§().toUpperCase() == "WHITE_EGG" || param1.§_-5B§().toUpperCase() == "TNT" || param1.§_-5B§().toUpperCase() == "CHEETO")
         {
            if(param1.§_-k-§.toUpperCase() == §_-pf§.§_-Fg§)
            {
               addExplosions(§_-P2§.§_-PF§,param1.§_-Zv§().GetPosition().x,param1.§_-Zv§().GetPosition().y);
            }
            else if(param1.§_-5B§().toUpperCase() == "CHEETO")
            {
               §_-VG§.push(§_-P2§.§_-5X§(§_-P2§.§_-di§,param1.§_-Zv§().GetPosition().x,param1.§_-Zv§().GetPosition().y));
               _loc2_ = Math.random() * 3 + 1;
               _loc3_ = "Bird_Cheetos_Bag_Damage_" + _loc2_;
               §_-Wo§.playSound(_loc3_,"ChannelExplosions");
            }
            else
            {
               addExplosions(§_-P2§.§_-5z§,param1.§_-Zv§().GetPosition().x,param1.§_-Zv§().GetPosition().y);
            }
         }
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §_-Cb§
      {
         var _loc10_:§_-Cb§ = super.addObject(param1,param2,param3,param4,param5,param6,param7,param8);
         if(param1.indexOf("SPOT_PRIZE") > -1)
         {
            this.§_-eW§ = _loc10_;
            this.§_-eW§.sprite.visible = false;
         }
         return _loc10_;
      }
      
      public function §_-AQ§() : Boolean
      {
         var _loc1_:§_-hQ§ = null;
         if(this.§_-eW§)
         {
            _loc1_ = §_-mC§.particles.addParticle("CHEETOS_PACK_GLOW",§_-RT§.§_-GD§,§_-hQ§.§_-Wf§,0,0,int.MAX_VALUE,"",0,0,0,0,90,1,15);
            _loc1_.§_-Gw§(this.§_-eW§);
            this.§_-eW§.sprite.visible = true;
            return true;
         }
         return false;
      }
      
      public function §_-eV§() : void
      {
         if(§_-zQ§.indexOf(this.§_-eW§) > -1)
         {
            §_-Dp§(this.§_-eW§,false,false,false);
         }
      }
      
      override public function dispose() : void
      {
         this.§_-eW§ = null;
         if(this.§_-0I§)
         {
            clearInterval(this.§_-0I§);
         }
         super.dispose();
      }
      
      override public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§_-o5§ = null;
         var _loc5_:§_-Cb§ = §_-zQ§[param1];
         if(this.§_-eW§ && param2)
         {
            if(_loc5_ == this.§_-eW§)
            {
               §_-Wo§.playSound("SpotPrize2");
               §_-SW§.sCheetosPopups.showPopup(§_-Zr§.§_-Ba§);
               this.callObject = {
                  "type":§_-o5§.§_-Mr§,
                  "sessionID":§_-o5§.§_-YD§(),
                  "userID":§_-Iv§.§_-r5§.name
               };
               _loc6_ = new §_-o5§(this.callObject,§_-WX§.§_-Mr§,this,§_-o5§.§_-oS§);
            }
         }
         super.removeObjectWithIndex(param1,param2,param3,param4);
      }
      
      override public function objectCollision(param1:§_-Cb§, param2:§_-Cb§) : void
      {
         if(param1 is §_-hU§)
         {
            (param1 as §_-hU§).§_-WH§ = false;
            §_-mC§.activatePowerup();
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
            returnObject = §_-d8§.§_-QX§((e.currentTarget as URLLoader).data);
            if(returnObject)
            {
               if(returnObject.error != null && returnObject.error.code && returnObject.error.code as Number == §_-SW§.§_-9y§)
               {
                  §_-Iv§.§_-r5§ = null;
                  if(returnObject.error.code as Number == §_-SW§.§_-9y§)
                  {
                     try
                     {
                        §_-3Q§.§_-st§("reauthenticate",§_-Iv§.§_-r5§.§_-Go§);
                     }
                     catch(e:Error)
                     {
                     }
                  }
               }
               if(returnObject.userID)
               {
                  §_-3Q§.§_-st§("spotPrizeWin");
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
         §_-SW§.sCheetosPopups.showPopup(§_-Zr§.ERROR,§_-Y-§.getText("Error"));
      }
   }
}
