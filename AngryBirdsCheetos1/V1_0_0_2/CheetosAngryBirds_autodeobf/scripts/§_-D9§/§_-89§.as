package §_-D9§
{
   import §_-GY§.Sprite;
   import §_-Kz§.§_-c3§;
   import §_-M6§.§_-Qg§;
   import §_-MP§.§_-BI§;
   import §_-Sr§.§_-Jq§;
   import §_-Sr§.§_-K-§;
   import §_-Ul§.§_-FD§;
   import §_-Ul§.§_-M5§;
   import §_-Ul§.§_-u-§;
   import §_-VH§.§_-X6§;
   import §_-fr§.§ else§;
   import §_-fr§.§_-FX§;
   import §_-fr§.§_-ZO§;
   import §_-fr§.§_-Zi§;
   import §_-gE§.§_-Tb§;
   import §_-hJ§.§_-5j§;
   import §_-l-§.§_-pI§;
   import §_-ob§.§_-xw§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.utils.clearInterval;
   
   public class §_-89§ extends § else§ implements §_-u-§
   {
       
      
      private var §_-3b§:§_-FX§;
      
      private var §_-2S§:int;
      
      private var callObject:Object;
      
      private var §_-jH§:uint;
      
      public function §_-89§(param1:§_-c3§, param2:§_-BI§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §_-FX§
      {
         var _loc10_:§_-FX§ = null;
         if(param2 == "BIRD_CHEETOS_BAG")
         {
            _loc10_ = new §_-dH§(this,param1,§_-GF§.mLevelEngine.mWorld,§_-GF§,§_-lQ§,param2,param3,param4,param5);
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
            case §_-ZO§.§_-Lj§:
               return §_-dH§.CHEETOS_EXPLOSION;
            default:
               return §_-K-§.§_-zY§;
         }
      }
      
      override protected function checkExplosions(param1:§_-FX§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         if(param1.§_-xg§().toUpperCase() == "WHITE_EGG" || param1.§_-xg§().toUpperCase() == "TNT" || param1.§_-xg§().toUpperCase() == "CHEETO")
         {
            if(param1.§_-05§.toUpperCase() == §_-Zi§.§_-GU§)
            {
               addExplosions(§_-ZO§.§_-oD§,param1.§implements§().GetPosition().x,param1.§implements§().GetPosition().y);
            }
            else if(param1.§_-xg§().toUpperCase() == "CHEETO")
            {
               §_-JM§.push(§_-ZO§.§_-ig§(§_-ZO§.§_-Lj§,param1.§implements§().GetPosition().x,param1.§implements§().GetPosition().y));
               _loc2_ = Math.random() * 3 + 1;
               _loc3_ = "Bird_Cheetos_Bag_Damage_" + _loc2_;
               §_-X6§.playSound(_loc3_,"ChannelExplosions");
            }
            else
            {
               addExplosions(§_-ZO§.§_-Uh§,param1.§implements§().GetPosition().x,param1.§implements§().GetPosition().y);
            }
         }
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §_-FX§
      {
         var _loc10_:§_-FX§ = super.addObject(param1,param2,param3,param4,param5,param6,param7,param8);
         if(param1.indexOf("SPOT_PRIZE") > -1)
         {
            this.§_-3b§ = _loc10_;
            this.§_-3b§.sprite.visible = false;
         }
         return _loc10_;
      }
      
      public function §_-vQ§() : Boolean
      {
         var _loc1_:§_-K-§ = null;
         if(this.§_-3b§)
         {
            _loc1_ = §_-GF§.particles.addParticle("CHEETOS_PACK_GLOW",§_-Jq§.§_-6O§,§_-K-§.§_-AI§,0,0,int.MAX_VALUE,"",0,0,0,0,90,1,15);
            _loc1_.§_-LX§(this.§_-3b§);
            this.§_-3b§.sprite.visible = true;
            return true;
         }
         return false;
      }
      
      public function §_-LB§() : void
      {
         if(§_-FB§.indexOf(this.§_-3b§) > -1)
         {
            §_-TC§(this.§_-3b§,false,false,false);
         }
      }
      
      override public function dispose() : void
      {
         this.§_-3b§ = null;
         if(this.§_-jH§)
         {
            clearInterval(this.§_-jH§);
         }
         super.dispose();
      }
      
      override public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§_-pI§ = null;
         var _loc5_:§_-FX§ = §_-FB§[param1];
         if(this.§_-3b§ && param2)
         {
            if(_loc5_ == this.§_-3b§)
            {
               §_-X6§.playSound("SpotPrize2");
               §_-xw§.sCheetosPopups.showPopup(§_-5j§.§_-dO§);
               this.callObject = {
                  "type":§_-pI§.§_-7S§,
                  "sessionID":§_-pI§.§_-o6§(),
                  "userID":§_-Tb§.§_-Bw§.name
               };
               _loc6_ = new §_-pI§(this.callObject,§_-rs§.§_-7S§,this,§_-pI§.§package§);
            }
         }
         super.removeObjectWithIndex(param1,param2,param3,param4);
      }
      
      override public function objectCollision(param1:§_-FX§, param2:§_-FX§) : void
      {
         if(param1 is §_-dH§)
         {
            (param1 as §_-dH§).§_-eQ§ = false;
            §_-GF§.activatePowerup();
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
            returnObject = §_-M5§.§_-uI§((e.currentTarget as URLLoader).data);
            if(returnObject)
            {
               if(returnObject.error != null && returnObject.error.code && returnObject.error.code as Number == §_-xw§.§_-nA§)
               {
                  §_-Tb§.§_-Bw§ = null;
                  if(returnObject.error.code as Number == §_-xw§.§_-nA§)
                  {
                     try
                     {
                        §_-Qg§.§_-No§("reauthenticate",§_-Tb§.§_-Bw§.§_-2o§);
                     }
                     catch(e:Error)
                     {
                     }
                  }
               }
               if(returnObject.userID)
               {
                  §_-Qg§.§_-No§("spotPrizeWin");
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
         §_-xw§.sCheetosPopups.showPopup(§_-5j§.ERROR,§_-FD§.getText("Error"));
      }
   }
}
