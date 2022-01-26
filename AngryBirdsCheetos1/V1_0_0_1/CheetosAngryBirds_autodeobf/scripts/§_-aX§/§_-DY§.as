package §_-aX§
{
   import §_-05§.§ do§;
   import §_-2r§.§_-sn§;
   import §_-3N§.§_-Dp§;
   import §_-Ls§.Sprite;
   import §_-T8§.§_-GI§;
   import §_-bl§.§_-7C§;
   import §_-bl§.§_-Ie§;
   import §_-bl§.§_-Qw§;
   import §_-bl§.§_-S4§;
   import §_-bw§.§_-zb§;
   import §_-cb§.§_-0B§;
   import §_-fg§.§_-cN§;
   import §_-q1§.§_-LA§;
   import §_-q1§.§_-Sn§;
   import §_-q1§.§_-VA§;
   import §_-we§.§_-5J§;
   import §_-we§.§_-yB§;
   import §_-zM§.§_-1v§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.utils.clearInterval;
   
   public class §_-DY§ extends §_-S4§ implements §_-LA§
   {
       
      
      private var §_-Y8§:§_-Ie§;
      
      private var §_-jZ§:int;
      
      private var callObject:Object;
      
      private var §_-vi§:uint;
      
      public function §_-DY§(param1:§_-sn§, param2:§_-GI§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §_-Ie§
      {
         var _loc10_:§_-Ie§ = null;
         if(param2 == "BIRD_CHEETOS_BAG")
         {
            _loc10_ = new §_-te§(this,param1,§_-5F§.mLevelEngine.mWorld,§_-5F§,§_-ru§,param2,param3,param4,param5);
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
            case §_-7C§.§_-SS§:
               return §_-te§.CHEETOS_EXPLOSION;
            default:
               return §_-yB§.§_-1P§;
         }
      }
      
      override protected function checkExplosions(param1:§_-Ie§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         if(param1.§_-y4§().toUpperCase() == "WHITE_EGG" || param1.§_-y4§().toUpperCase() == "TNT" || param1.§_-y4§().toUpperCase() == "CHEETO")
         {
            if(param1.§_-G2§.toUpperCase() == §_-Qw§.§_-MG§)
            {
               addExplosions(§_-7C§.§_-Sh§,param1.§_-BO§().GetPosition().x,param1.§_-BO§().GetPosition().y);
            }
            else if(param1.§_-y4§().toUpperCase() == "CHEETO")
            {
               §_-tV§.push(§_-7C§.§_-MK§(§_-7C§.§_-SS§,param1.§_-BO§().GetPosition().x,param1.§_-BO§().GetPosition().y));
               _loc2_ = Math.random() * 3 + 1;
               _loc3_ = "Bird_Cheetos_Bag_Damage_" + _loc2_;
               §_-0B§.playSound(_loc3_,"ChannelExplosions");
            }
            else
            {
               addExplosions(§_-7C§.§_-HE§,param1.§_-BO§().GetPosition().x,param1.§_-BO§().GetPosition().y);
            }
         }
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §_-Ie§
      {
         var _loc10_:§_-Ie§ = super.addObject(param1,param2,param3,param4,param5,param6,param7,param8);
         if(param1.indexOf("SPOT_PRIZE") > -1)
         {
            this.§_-Y8§ = _loc10_;
            this.§_-Y8§.sprite.visible = false;
         }
         return _loc10_;
      }
      
      public function §_-6U§() : Boolean
      {
         var _loc1_:§_-yB§ = null;
         if(this.§_-Y8§)
         {
            _loc1_ = §_-5F§.particles.addParticle("CHEETOS_PACK_GLOW",§_-5J§.§_-r§,§_-yB§.§_-7K§,0,0,int.MAX_VALUE,"",0,0,0,0,90,1,15);
            _loc1_.§_-1R§(this.§_-Y8§);
            this.§_-Y8§.sprite.visible = true;
            return true;
         }
         return false;
      }
      
      public function §_-EA§() : void
      {
         if(§_-5f§.indexOf(this.§_-Y8§) > -1)
         {
            §_-XB§(this.§_-Y8§,false,false,false);
         }
      }
      
      override public function dispose() : void
      {
         this.§_-Y8§ = null;
         if(this.§_-vi§)
         {
            clearInterval(this.§_-vi§);
         }
         super.dispose();
      }
      
      override public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§ do§ = null;
         var _loc5_:§_-Ie§ = §_-5f§[param1];
         if(this.§_-Y8§ && param2)
         {
            if(_loc5_ == this.§_-Y8§)
            {
               §_-0B§.playSound("SpotPrize2");
               §_-cN§.sCheetosPopups.showPopup(§_-1v§.§_-OR§);
               this.callObject = {
                  "type":§ do§.§_-h6§,
                  "sessionID":§ do§.§_-Ne§(),
                  "userID":§_-zb§.§_-0Y§.name
               };
               _loc6_ = new § do§(this.callObject,§_-Vc§.§_-h6§,this,§ do§.§_-rq§);
            }
         }
         super.removeObjectWithIndex(param1,param2,param3,param4);
      }
      
      override public function objectCollision(param1:§_-Ie§, param2:§_-Ie§) : void
      {
         if(param1 is §_-te§)
         {
            (param1 as §_-te§).§_-ez§ = false;
            §_-5F§.activatePowerup();
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
            returnObject = §_-VA§.§_-ji§((e.currentTarget as URLLoader).data);
            if(returnObject)
            {
               if(returnObject.error != null && returnObject.error.code && returnObject.error.code as Number == §_-cN§.§_-8P§)
               {
                  §_-zb§.§_-0Y§ = null;
                  if(returnObject.error.code as Number == §_-cN§.§_-8P§)
                  {
                     try
                     {
                        §_-Dp§.§_-JB§("reauthenticate",§_-zb§.§_-0Y§.§_-PG§);
                     }
                     catch(e:Error)
                     {
                     }
                  }
               }
               if(returnObject.userID)
               {
                  §_-Dp§.§_-JB§("spotPrizeWin");
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
         §_-cN§.sCheetosPopups.showPopup(§_-1v§.ERROR,§_-Sn§.getText("Error"));
      }
   }
}
