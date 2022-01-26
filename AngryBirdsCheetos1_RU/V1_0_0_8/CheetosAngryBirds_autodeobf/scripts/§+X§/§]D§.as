package §+X§
{
   import §#!<§.§8!3§;
   import §%!5§.§;D§;
   import §%Y§.§,5§;
   import §,B§.§4!0§;
   import §0H§.§0!&§;
   import §2>§.§?!1§;
   import §8!`§.§4J§;
   import §;!Q§.Sprite;
   import §=@§.§4k§;
   import §=@§.§5c§;
   import §=@§.§<E§;
   import §]!D§.§"$§;
   import §]!D§.§'Q§;
   import §]!D§.§?!9§;
   import §]!D§.§@!]§;
   import §`;§.§5i§;
   import §`;§.§[E§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.utils.clearInterval;
   
   public class §]D§ extends §?!9§ implements §5c§
   {
       
      
      private var §;@§:§@!]§;
      
      private var §74§:int;
      
      private var callObject:Object;
      
      private var §5A§:uint;
      
      public function §]D§(param1:§4J§, param2:§0!&§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §@!]§
      {
         var _loc10_:§@!]§ = null;
         if(param2 == "BIRD_CHEETOS_BAG")
         {
            _loc10_ = new §#o§(this,param1,§'N§.mLevelEngine.mWorld,§'N§,§<!'§,param2,param3,param4,param5);
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
            case §"$§.§;!C§:
               return §#o§.CHEETOS_EXPLOSION;
            default:
               return §[E§.§]L§;
         }
      }
      
      override protected function checkExplosions(param1:§@!]§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         if(param1.§8r§().toUpperCase() == "WHITE_EGG" || param1.§8r§().toUpperCase() == "TNT" || param1.§8r§().toUpperCase() == "CHEETO")
         {
            if(param1.§4u§.toUpperCase() == §'Q§.§9Y§)
            {
               addExplosions(§"$§.§^#§,param1.§^!_§().GetPosition().x,param1.§^!_§().GetPosition().y);
            }
            else if(param1.§8r§().toUpperCase() == "CHEETO")
            {
               §+C§.push(§"$§.§3!F§(§"$§.§;!C§,param1.§^!_§().GetPosition().x,param1.§^!_§().GetPosition().y));
               _loc2_ = Math.random() * 3 + 1;
               _loc3_ = "Bird_Cheetos_Bag_Damage_" + _loc2_;
               §?!1§.§0!O§(_loc3_,"ChannelExplosions");
            }
            else
            {
               addExplosions(§"$§.§+R§,param1.§^!_§().GetPosition().x,param1.§^!_§().GetPosition().y);
            }
         }
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §@!]§
      {
         var _loc10_:§@!]§ = super.addObject(param1,param2,param3,param4,param5,param6,param7,param8);
         if(param1.indexOf("SPOT_PRIZE") > -1)
         {
            this.§;@§ = _loc10_;
            this.§;@§.sprite.visible = false;
         }
         return _loc10_;
      }
      
      public function §5!5§() : Boolean
      {
         var _loc1_:§[E§ = null;
         if(this.§;@§)
         {
            _loc1_ = §'N§.particles.addParticle("CHEETOS_PACK_GLOW",§5i§.§,A§,§[E§.§!`§,0,0,int.MAX_VALUE,"",0,0,0,0,90,1,15);
            _loc1_.§+d§(this.§;@§);
            this.§;@§.sprite.visible = true;
            return true;
         }
         return false;
      }
      
      public function §?!G§() : void
      {
         if(§'_§.indexOf(this.§;@§) > -1)
         {
            §@!@§(this.§;@§,false,false,false);
         }
      }
      
      override public function dispose() : void
      {
         this.§;@§ = null;
         if(this.§5A§)
         {
            clearInterval(this.§5A§);
         }
         super.dispose();
      }
      
      override public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:§@!]§ = §'_§[param1];
         super.removeObjectWithIndex(param1,param2,param3,param4);
      }
      
      override public function objectCollision(param1:§@!]§, param2:§@!]§) : Boolean
      {
         if(param1 is §#o§)
         {
            (param1 as §#o§).§<]§ = false;
            §'N§.activatePowerup();
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
            returnObject = §<E§.§!C§((e.currentTarget as URLLoader).data);
            if(returnObject)
            {
               if(returnObject.error != null && returnObject.error.code && returnObject.error.code as Number == §,5§.§0!"§)
               {
                  §8!3§.§^!E§ = null;
                  if(returnObject.error.code as Number == §,5§.§0!"§)
                  {
                     try
                     {
                        §;D§.§;!6§("reauthenticate",§8!3§.§^!E§.§5@§);
                     }
                     catch(e:Error)
                     {
                     }
                  }
               }
               if(returnObject.userID)
               {
                  §;D§.§;!6§("spotPrizeWin");
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
         §,5§.sCheetosPopups.showPopup(§4!0§.ERROR,§4k§.getText("Error"));
      }
   }
}
