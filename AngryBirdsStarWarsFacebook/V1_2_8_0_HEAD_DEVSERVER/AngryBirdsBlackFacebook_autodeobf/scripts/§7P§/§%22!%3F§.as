package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §7!F§.§0'§;
   import §7!F§.§>"G§;
   import §7!F§.§`y§;
   import §<"B§.§94§;
   import §="2§.§4!5§;
   import §="2§.§?!r§;
   import §[R§.b2Vec2;
   import com.angrybirds.§,!q§;
   import flash.events.Event;
   
   public class §"!?§ extends §`#G§ implements §;!i§
   {
      
      private static const §#C§:String = "EmperorHologramAnimation";
      
      private static const §@3§:Number = 100;
      
      private static const §4!H§:Number = 400;
      
      public static const §7"9§:String = "BLOCK_SENSOR_PIG_A";
      
      public static const §+"c§:String = "BLOCK_SENSOR_PIG_B";
      
      public static const §?!P§:Number = 7000;
      
      public static const §@j§:Number = 7000;
      
      private static const §?"G§:uint = 2;
      
      private static const §3"`§:uint = 0;
      
      private static const LAUGH_FRAME_1:uint = 1;
      
      private static const LAUGH_FRAME_2:uint = 2;
      
      private static const BREAK_FRAME_1:uint = 3;
      
      private static const BREAK_FRAME_2:uint = 4;
       
      
      private var §3"I§:§0'§;
      
      private var §'"k§:Number = -1;
      
      private var §4"^§:Number = -1;
      
      private var §]!%§:Boolean = false;
      
      private var §#"n§:String = "ChannelPig";
      
      private var §!q§:§4!5§;
      
      private var §8"S§:Boolean = false;
      
      private var §7#0§:Boolean = true;
      
      private var §4"E§:Number = -1;
      
      private var §;"t§:Number = -1;
      
      private var §?f§:§4!5§;
      
      protected var §^1§:§ "=§;
      
      protected var §2#1§:§ "=§;
      
      private var §,!n§:Boolean = false;
      
      public function §"!?§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§9#&§();
      }
      
      private function §5#O§() : String
      {
         return Math.random() >= 0.5 ? "pigs_emperor_hologram_laugh_1" : "pigs_emperor_hologram_laugh_2";
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         if(this.§3"I§)
         {
            this.§5#4§(param1);
            this.§ #M§(param1);
         }
         if(param2)
         {
            if(!this.§^1§ && !this.§2#1§)
            {
               this.§#z§(param2);
            }
            else
            {
               this.§5!3§();
            }
         }
         return super.update(param1,param2);
      }
      
      private function §#z§(param1:§;$§) : void
      {
         this.§^1§ = this.§>3§(§7"9§,param1);
         this.§2#1§ = this.§>3§(§+"c§,param1);
      }
      
      private function §>3§(param1:String, param2:§;$§) : § "=§
      {
         var _loc3_:b2Vec2 = §3!t§().GetPosition();
         var _loc4_:§ "=§;
         (_loc4_ = param2.addObject(param1,_loc3_.x,_loc3_.y,0,§;=§.§""3§) as § "=§).§=?§ = this;
         return _loc4_;
      }
      
      private function §5!3§() : void
      {
         this.§+,§(this.§^1§);
         this.§+,§(this.§2#1§);
      }
      
      private function §+,§(param1:§ "=§) : void
      {
         param1.§3!t§().SetPosition(§3!t§().GetPosition());
      }
      
      private function §^_§(param1:§;$§) : void
      {
         if(this.§^1§)
         {
            if(param1)
            {
               param1.removeObject(this.§^1§);
            }
            this.§^1§ = null;
         }
         if(this.§2#1§)
         {
            if(param1)
            {
               param1.removeObject(this.§2#1§);
            }
            this.§2#1§ = null;
         }
      }
      
      public function §7`§(param1:§7B§, param2:§ "=§) : void
      {
         if(param2 == this.§^1§ || param2 == this.§2#1§)
         {
            this.§,k§(param1,true);
         }
      }
      
      private function §,k§(param1:§7B§, param2:Boolean) : void
      {
         this.§,!n§ = param2;
         if(param1 is §?"N§ && this.§3"I§)
         {
            if(this.§,!n§)
            {
               if(this.§4"E§ > 0)
               {
                  this.§4"E§ = -1;
                  this.§?f§.stop();
               }
               this.§3"I§.currentFrame = §3"`§;
            }
            else if(this.§4"E§ < 0)
            {
               this.§&!k§();
            }
         }
      }
      
      public function §0">§(param1:§7B§, param2:§ "=§) : void
      {
         if(param1 is §?"N§)
         {
            if(param2 == this.§2#1§)
            {
               this.§,k§(param1,false);
            }
         }
      }
      
      override public function updateBeforeRemoving(param1:§;$§) : void
      {
         if(this.§?f§)
         {
            this.§?f§.stop();
         }
         if(this.§!q§)
         {
            this.§!q§.stop();
            this.§!q§.removeEventListener(Event.SOUND_COMPLETE,this.§"#Z§);
         }
         this.§7#0§ = false;
         this.§^_§(param1);
         super.updateBeforeRemoving(param1);
      }
      
      private function § #M§(param1:Number) : void
      {
         if(!this.§3"I§)
         {
            return;
         }
         if(this.§4"E§ > 0)
         {
            this.§4"E§ -= param1;
            this.§;"t§ -= param1;
            if(this.§;"t§ < 0)
            {
               this.§;"t§ = §@3§;
               this.§3"I§.currentFrame = this.§3"I§.currentFrame == LAUGH_FRAME_1 ? int(LAUGH_FRAME_2) : int(LAUGH_FRAME_1);
            }
         }
         else if(!this.§,!n§)
         {
            this.§3"I§.currentFrame = §?"G§;
         }
         if(this.§4"^§ == -1)
         {
            this.§4"^§ = 500;
         }
         else if(this.§7#0§)
         {
            if(this.§8"S§ == false)
            {
               this.§,!n§ = false;
               this.§8"S§ = true;
               this.§!q§ = §?!r§.§"#_§("pigs_emperor_hologram_loop",§?!r§.§2!1§);
               this.§!q§.addEventListener(Event.SOUND_COMPLETE,this.§"#Z§);
            }
            this.§4"^§ -= param1;
            if(this.§4"^§ < 0)
            {
               this.§&!k§();
            }
         }
      }
      
      private function §"#Z§(param1:Event) : void
      {
         this.§8"S§ = false;
      }
      
      private function §&!k§() : void
      {
         if(this.§3"I§ && this.§7#0§)
         {
            this.§?f§ = §?!r§.§"#_§(this.§5#O§(),§?!r§.§2!1§,0,2);
            this.§4"^§ = §?!P§ + Math.random() * §@j§;
            this.§4"E§ = 3000;
            this.§3"I§.currentFrame = LAUGH_FRAME_1;
         }
      }
      
      private function §5#4§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§'"k§ != -1)
         {
            this.§'"k§ -= param1;
            if(this.§'"k§ < 0)
            {
               sprite.removeChild(this.§3"I§);
               this.§7#0§ = false;
               this.§!q§.stop();
               this.§3"I§ = null;
            }
            else
            {
               _loc2_ = this.§'"k§ > §4!H§ / 2 ? int(BREAK_FRAME_1) : int(BREAK_FRAME_2);
               this.§3"I§.currentFrame = _loc2_;
            }
         }
         else
         {
            this.§]!%§ = !this.§]!%§;
            if(this.§]!%§)
            {
               this.§3"I§.alpha = 0.75 + Math.random() * 0.25;
            }
         }
      }
      
      override protected function setDamageState(param1:Number, param2:§;$§) : Boolean
      {
         if(param1 > 0.02 && this.§3"I§ && this.§'"k§ == -1)
         {
            §?!r§.§"#_§("pigs_emperor_hologram_break");
            this.§'"k§ = §4!H§;
            this.§3"I§.alpha = 1;
         }
         return super.setDamageState(param1,param2);
      }
      
      private function §9#&§() : void
      {
         var _loc1_:§`y§ = §,!q§.§9!,§.animationManager;
         var _loc2_:§>"G§ = _loc1_.getAnimation(§#C§);
         if(!_loc2_)
         {
            _loc2_ = _loc1_.§%#M§(§#C§,["HOLOGRAM_EMPEROR_BASIC","HOLOGRAM_EMPEROR_SMILE","HOLOGRAM_EMPEROR_SCREAM","HOLOGRAM_EMPEROR_BREAK_1","HOLOGRAM_EMPEROR_BREAK_2"]);
         }
         this.§3"I§ = new §0'§(_loc2_);
         sprite.addChild(this.§3"I§);
         this.§3"I§.y = -90;
      }
   }
}
