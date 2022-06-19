package §6H§
{
   import §&!8§.§+!6§;
   import §&!8§.§4! §;
   import §&!8§.§7@§;
   import §&!8§.§[g§;
   import §,§.§ p§;
   import §-!Q§.§,!7§;
   import §1!4§.§7!?§;
   import §1!4§.§do§;
   import §1!E§.§>f§;
   import §2v§.§&O§;
   import §5G§.§?,§;
   import §=!g§.§!!@§;
   import §[h§.§4I§;
   import §[h§.§7Z§;
   import §[h§.§[!U§;
   import §^a§.Sprite;
   import §`![§.§!!K§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.utils.clearInterval;
   
   public class §^5§ extends §+!6§ implements §7Z§
   {
       
      
      private var §-$§:§[g§;
      
      private var §`a§:int;
      
      private var callObject:Object;
      
      private var §``§:uint;
      
      public function §^5§(param1:§ p§, param2:§!!K§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §[g§
      {
         var _loc10_:§[g§ = null;
         if(param2 == "BIRD_CHEETOS_BAG")
         {
            _loc10_ = new §#!;§(this,param1,§^!I§.mLevelEngine.mWorld,§^!I§,§2!E§,param2,param3,param4,param5);
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
            case §7@§.§!![§:
               return §#!;§.CHEETOS_EXPLOSION;
            default:
               return §7!?§.§[!M§;
         }
      }
      
      override protected function checkExplosions(param1:§[g§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         if(param1.§,X§().toUpperCase() == "WHITE_EGG" || param1.§,X§().toUpperCase() == "TNT" || param1.§,X§().toUpperCase() == "CHEETO")
         {
            if(param1.§>p§.toUpperCase() == §4! §.§6r§)
            {
               this.addExplosions(§7@§.§6U§,param1.§`e§().GetPosition().x,param1.§`e§().GetPosition().y);
            }
            else if(param1.§,X§().toUpperCase() == "CHEETO")
            {
               §[F§.push(§1b§.createExplosion(§1b§.§1=§,param1.§`e§().GetPosition().x,param1.§`e§().GetPosition().y));
               _loc2_ = Math.random() * 3 + 1;
               _loc3_ = "Bird_Cheetos_Bag_Damage_" + _loc2_;
               §,!7§.playSound(_loc3_,"ChannelExplosions");
            }
            else
            {
               this.addExplosions(§7@§.§`!a§,param1.§`e§().GetPosition().x,param1.§`e§().GetPosition().y);
            }
         }
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §[g§
      {
         var _loc10_:§[g§ = super.addObject(param1,param2,param3,param4,param5,param6,param7,param8);
         if(param1.indexOf("SPOT_PRIZE") > -1)
         {
            this.§-$§ = _loc10_;
            this.§-$§.sprite.visible = false;
         }
         return _loc10_;
      }
      
      public function §#!L§() : Boolean
      {
         var _loc1_:§7!?§ = null;
         if(this.§-$§)
         {
            _loc1_ = §^!I§.particles.addParticle("CHEETOS_PACK_GLOW",§do§.§&!d§,§7!?§.§22§,0,0,int.MAX_VALUE,"",0,0,0,0,90,1,15);
            _loc1_.§%1§(this.§-$§);
            this.§-$§.sprite.visible = true;
            return true;
         }
         return false;
      }
      
      public function §1f§() : void
      {
         if(§ #§.indexOf(this.§-$§) > -1)
         {
            §9?§(this.§-$§,false,false,false);
         }
      }
      
      override public function dispose() : void
      {
         this.§-$§ = null;
         if(this.§``§)
         {
            clearInterval(this.§``§);
         }
         super.dispose();
      }
      
      override public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:§[g§ = § #§[param1];
         super.removeObjectWithIndex(param1,param2,param3,param4);
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number, param4:Vector.<§[g§> = null) : void
      {
         §[F§.push(§1b§.createExplosion(param1,param2,param3));
         §,!7§.playSound("TntExplosions","ChannelExplosions");
      }
      
      override public function objectCollision(param1:§[g§, param2:§[g§) : Boolean
      {
         if(param1 is §#!;§)
         {
            (param1 as §#!;§).§5E§ = false;
            §^!I§.activatePowerup();
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
            returnObject = §[!U§.§ !=§((e.currentTarget as URLLoader).data);
            if(returnObject)
            {
               if(returnObject.error != null && returnObject.error.code && returnObject.error.code as Number == §?,§.§?!i§)
               {
                  §>f§.§%!`§ = null;
                  if(returnObject.error.code as Number == §?,§.§?!i§)
                  {
                     try
                     {
                        §!!@§.§%Q§("reauthenticate",§>f§.§%!`§.§6!W§);
                     }
                     catch(e:Error)
                     {
                     }
                  }
               }
               if(returnObject.userID)
               {
                  §!!@§.§%Q§("spotPrizeWin");
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
         §?,§.sCheetosPopups.showPopup(§&O§.ERROR,§4I§.getText("Error"));
      }
   }
}
