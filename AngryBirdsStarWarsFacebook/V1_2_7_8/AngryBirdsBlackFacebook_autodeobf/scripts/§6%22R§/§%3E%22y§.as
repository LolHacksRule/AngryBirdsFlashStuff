package §6"R§
{
   import §,"v§.§@§;
   import §,"v§.§^!2§;
   import §1"s§.Sprite;
   import §1x§.b2World;
   import §3"$§.§@!3§;
   import §3"$§.§[a§;
   import §3"$§.§]k§;
   import §4"F§.§^d§;
   import §>P§.§=!,§;
   import §^>§.b2Vec2;
   import com.angrybirds.§;!e§;
   import flash.events.Event;
   
   public class §>"y§ extends §6"1§ implements §`!V§
   {
      
      private static const §1j§:String = "EmperorHologramAnimation";
      
      private static const §;"4§:Number = 100;
      
      private static const §^`§:Number = 400;
      
      public static const §["+§:String = "BLOCK_SENSOR_PIG_A";
      
      public static const §^!4§:String = "BLOCK_SENSOR_PIG_B";
      
      public static const §4!G§:Number = 7000;
      
      public static const §20§:Number = 7000;
      
      private static const §0!c§:uint = 2;
      
      private static const §8S§:uint = 0;
      
      private static const LAUGH_FRAME_1:uint = 1;
      
      private static const LAUGH_FRAME_2:uint = 2;
      
      private static const BREAK_FRAME_1:uint = 3;
      
      private static const BREAK_FRAME_2:uint = 4;
       
      
      private var §?!l§:§@!3§;
      
      private var §%z§:Number = -1;
      
      private var §7" §:Number = -1;
      
      private var §4"?§:Boolean = false;
      
      private var §;!N§:String = "ChannelPig";
      
      private var §"!-§:§^!2§;
      
      private var §1";§:Boolean = false;
      
      private var §<c§:Boolean = true;
      
      private var §6"l§:Number = -1;
      
      private var §5v§:Number = -1;
      
      private var §]!0§:§^!2§;
      
      protected var §6"F§:§1_§;
      
      protected var §+#+§:§1_§;
      
      private var §!>§:Boolean = false;
      
      public function §>"y§(param1:Sprite, param2:§[a§, param3:b2World, param4:§=!,§, param5:§^d§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§'0§();
      }
      
      private function §>p§() : String
      {
         return Math.random() >= 0.5 ? "pigs_emperor_hologram_laugh_1" : "pigs_emperor_hologram_laugh_2";
      }
      
      override public function update(param1:Number, param2:§""M§) : void
      {
         if(this.§?!l§)
         {
            this.§`!Q§(param1);
            this.§#!A§(param1);
         }
         if(param2)
         {
            if(!this.§6"F§ && !this.§+#+§)
            {
               this.§4#2§(param2);
            }
            else
            {
               this.§]"8§();
            }
         }
         return super.update(param1,param2);
      }
      
      private function §4#2§(param1:§""M§) : void
      {
         this.§6"F§ = this.§^!z§(§["+§,param1);
         this.§+#+§ = this.§^!z§(§^!4§,param1);
      }
      
      private function §^!z§(param1:String, param2:§""M§) : §1_§
      {
         var _loc3_:b2Vec2 = §?"Z§().GetPosition();
         var _loc4_:§1_§;
         (_loc4_ = param2.addObject(param1,_loc3_.x,_loc3_.y,0,§super§.§4"D§) as §1_§).§6?§ = this;
         return _loc4_;
      }
      
      private function §]"8§() : void
      {
         this.§=!Z§(this.§6"F§);
         this.§=!Z§(this.§+#+§);
      }
      
      private function §=!Z§(param1:§1_§) : void
      {
         param1.§?"Z§().SetPosition(§?"Z§().GetPosition());
      }
      
      private function §<e§(param1:§""M§) : void
      {
         if(this.§6"F§)
         {
            if(param1)
            {
               param1.removeObject(this.§6"F§);
            }
            this.§6"F§ = null;
         }
         if(this.§+#+§)
         {
            if(param1)
            {
               param1.removeObject(this.§+#+§);
            }
            this.§+#+§ = null;
         }
      }
      
      public function §-p§(param1:§!z§, param2:§1_§) : void
      {
         if(param2 == this.§6"F§ || param2 == this.§+#+§)
         {
            this.§>Z§(param1,true);
         }
      }
      
      private function §>Z§(param1:§!z§, param2:Boolean) : void
      {
         this.§!>§ = param2;
         if(param1 is §%!0§ && this.§?!l§)
         {
            if(this.§!>§)
            {
               if(this.§6"l§ > 0)
               {
                  this.§6"l§ = -1;
                  this.§]!0§.stop();
               }
               this.§?!l§.currentFrame = §8S§;
            }
            else if(this.§6"l§ < 0)
            {
               this.§1!S§();
            }
         }
      }
      
      public function §4H§(param1:§!z§, param2:§1_§) : void
      {
         if(param1 is §%!0§)
         {
            if(param2 == this.§+#+§)
            {
               this.§>Z§(param1,false);
            }
         }
      }
      
      override public function updateBeforeRemoving(param1:§""M§) : void
      {
         if(this.§]!0§)
         {
            this.§]!0§.stop();
         }
         if(this.§"!-§)
         {
            this.§"!-§.stop();
            this.§"!-§.removeEventListener(Event.SOUND_COMPLETE,this.§set §);
         }
         this.§<c§ = false;
         this.§<e§(param1);
         super.updateBeforeRemoving(param1);
      }
      
      private function §#!A§(param1:Number) : void
      {
         if(!this.§?!l§)
         {
            return;
         }
         if(this.§6"l§ > 0)
         {
            this.§6"l§ -= param1;
            this.§5v§ -= param1;
            if(this.§5v§ < 0)
            {
               this.§5v§ = §;"4§;
               this.§?!l§.currentFrame = this.§?!l§.currentFrame == LAUGH_FRAME_1 ? int(LAUGH_FRAME_2) : int(LAUGH_FRAME_1);
            }
         }
         else if(!this.§!>§)
         {
            this.§?!l§.currentFrame = §0!c§;
         }
         if(this.§7" § == -1)
         {
            this.§7" § = 500;
         }
         else if(this.§<c§)
         {
            if(this.§1";§ == false)
            {
               this.§!>§ = false;
               this.§1";§ = true;
               this.§"!-§ = §@§.§=Y§("pigs_emperor_hologram_loop",§@§.§<"5§);
               this.§"!-§.addEventListener(Event.SOUND_COMPLETE,this.§set §);
            }
            this.§7" § -= param1;
            if(this.§7" § < 0)
            {
               this.§1!S§();
            }
         }
      }
      
      private function §set §(param1:Event) : void
      {
         this.§1";§ = false;
      }
      
      private function §1!S§() : void
      {
         if(this.§?!l§ && this.§<c§)
         {
            this.§]!0§ = §@§.§=Y§(this.§>p§(),§@§.§<"5§,0,2);
            this.§7" § = §4!G§ + Math.random() * §20§;
            this.§6"l§ = 3000;
            this.§?!l§.currentFrame = LAUGH_FRAME_1;
         }
      }
      
      private function §`!Q§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§%z§ != -1)
         {
            this.§%z§ -= param1;
            if(this.§%z§ < 0)
            {
               sprite.removeChild(this.§?!l§);
               this.§<c§ = false;
               this.§"!-§.stop();
               this.§?!l§ = null;
            }
            else
            {
               _loc2_ = this.§%z§ > §^`§ / 2 ? int(BREAK_FRAME_1) : int(BREAK_FRAME_2);
               this.§?!l§.currentFrame = _loc2_;
            }
         }
         else
         {
            this.§4"?§ = !this.§4"?§;
            if(this.§4"?§)
            {
               this.§?!l§.alpha = 0.75 + Math.random() * 0.25;
            }
         }
      }
      
      override protected function setDamageState(param1:Number, param2:§""M§) : Boolean
      {
         if(param1 > 0.02 && this.§?!l§ && this.§%z§ == -1)
         {
            §@§.§=Y§("pigs_emperor_hologram_break");
            this.§%z§ = §^`§;
            this.§?!l§.alpha = 1;
         }
         return super.setDamageState(param1,param2);
      }
      
      private function §'0§() : void
      {
         var _loc1_:§]k§ = §;!e§.§<x§.animationManager;
         var _loc2_:§[a§ = _loc1_.getAnimation(§1j§);
         if(!_loc2_)
         {
            _loc2_ = _loc1_.§`'§(§1j§,["HOLOGRAM_EMPEROR_BASIC","HOLOGRAM_EMPEROR_SMILE","HOLOGRAM_EMPEROR_SCREAM","HOLOGRAM_EMPEROR_BREAK_1","HOLOGRAM_EMPEROR_BREAK_2"]);
         }
         this.§?!l§ = new §@!3§(_loc2_);
         sprite.addChild(this.§?!l§);
         this.§?!l§.y = -90;
      }
   }
}
