package §!r§
{
   import §!!k§.§'§;
   import §!!k§.§1!^§;
   import §!!k§.§?!3§;
   import §#g§.§["%§;
   import §7"A§.b2Vec2;
   import §=G§.§9v§;
   import §>"_§.b2World;
   import §`"1§.§0"M§;
   import §`"1§.§=Q§;
   import com.angrybirds.§<!J§;
   import flash.events.Event;
   import §use§.Sprite;
   
   public class §";§ extends §%E§ implements §##5§
   {
      
      private static const §'"b§:String = "EmperorHologramAnimation";
      
      private static const §8!?§:Number = 100;
      
      private static const §[!9§:Number = 400;
      
      public static const §59§:String = "BLOCK_SENSOR_PIG_A";
      
      public static const §`O§:String = "BLOCK_SENSOR_PIG_B";
      
      public static const §%"x§:Number = 7000;
      
      public static const §!%§:Number = 7000;
      
      private static const §7!K§:uint = 2;
      
      private static const §`"A§:uint = 0;
      
      private static const LAUGH_FRAME_1:uint = 1;
      
      private static const LAUGH_FRAME_2:uint = 2;
      
      private static const BREAK_FRAME_1:uint = 3;
      
      private static const BREAK_FRAME_2:uint = 4;
       
      
      private var §,!9§:§'#4§;
      
      private var §;"]§:Number = -1;
      
      private var §[!=§:Number = -1;
      
      private var §!!e§:Boolean = false;
      
      private var §]y§:String = "ChannelPig";
      
      private var §8!o§:§0"M§;
      
      private var §+!p§:Boolean = false;
      
      private var §#!]§:Boolean = true;
      
      private var §`!o§:Number = -1;
      
      private var §7]§:Number = -1;
      
      private var §1#&§:§0"M§;
      
      protected var §2!"§:§+#0§;
      
      protected var §-!L§:§+#0§;
      
      private var §0P§:Boolean = false;
      
      public function §";§(param1:Sprite, param2:§1!^§, param3:b2World, param4:§["%§, param5:§9v§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§3"d§();
      }
      
      private function §#"§() : String
      {
         return Math.random() >= 0.5 ? "pigs_emperor_hologram_laugh_1" : "pigs_emperor_hologram_laugh_2";
      }
      
      override public function update(param1:Number, param2:§'=§) : void
      {
         if(this.§,!9§)
         {
            this.§9"X§(param1);
            this.§;!f§(param1);
         }
         if(param2)
         {
            if(!this.§2!"§ && !this.§-!L§)
            {
               this.§@"M§(param2);
            }
            else
            {
               this.§7!c§();
            }
         }
         return super.update(param1,param2);
      }
      
      private function §@"M§(param1:§'=§) : void
      {
         this.§2!"§ = this.§5!U§(§59§,param1);
         this.§-!L§ = this.§5!U§(§`O§,param1);
      }
      
      private function §5!U§(param1:String, param2:§'=§) : §+#0§
      {
         var _loc3_:b2Vec2 = §3"s§().GetPosition();
         var _loc4_:§+#0§;
         (_loc4_ = param2.addObject(param1,_loc3_.x,_loc3_.y,0,§9"f§.§["_§) as §+#0§).§-!X§ = this;
         return _loc4_;
      }
      
      private function §7!c§() : void
      {
         this.§`v§(this.§2!"§);
         this.§`v§(this.§-!L§);
      }
      
      private function §`v§(param1:§+#0§) : void
      {
         param1.§3"s§().SetPosition(§3"s§().GetPosition());
      }
      
      private function §7U§(param1:§'=§) : void
      {
         if(this.§2!"§)
         {
            if(param1)
            {
               param1.removeObject(this.§2!"§);
            }
            this.§2!"§ = null;
         }
         if(this.§-!L§)
         {
            if(param1)
            {
               param1.removeObject(this.§-!L§);
            }
            this.§-!L§ = null;
         }
      }
      
      public function §]§(param1:§?!x§, param2:§+#0§) : void
      {
         if(param2 == this.§2!"§ || param2 == this.§-!L§)
         {
            this.§!#§(param1,true);
         }
      }
      
      private function §!#§(param1:§?!x§, param2:Boolean) : void
      {
         this.§0P§ = param2;
         if(param1 is §;!T§ && this.§,!9§)
         {
            if(this.§0P§)
            {
               if(this.§`!o§ > 0)
               {
                  this.§`!o§ = -1;
                  this.§1#&§.stop();
               }
               this.§,!9§.currentFrame = §`"A§;
            }
            else if(this.§`!o§ < 0)
            {
               this.§^&§();
            }
         }
      }
      
      public function §3"1§(param1:§?!x§, param2:§+#0§) : void
      {
         if(param1 is §;!T§)
         {
            if(param2 == this.§-!L§)
            {
               this.§!#§(param1,false);
            }
         }
      }
      
      override public function updateBeforeRemoving(param1:§'=§) : void
      {
         if(this.§1#&§)
         {
            this.§1#&§.stop();
         }
         if(this.§8!o§)
         {
            this.§8!o§.stop();
            this.§8!o§.removeEventListener(Event.SOUND_COMPLETE,this.§3A§);
         }
         this.§#!]§ = false;
         this.§7U§(param1);
         super.updateBeforeRemoving(param1);
      }
      
      private function §;!f§(param1:Number) : void
      {
         if(!this.§,!9§)
         {
            return;
         }
         if(this.§`!o§ > 0)
         {
            this.§`!o§ -= param1;
            this.§7]§ -= param1;
            if(this.§7]§ < 0)
            {
               this.§7]§ = §8!?§;
               this.§,!9§.currentFrame = this.§,!9§.currentFrame == LAUGH_FRAME_1 ? int(LAUGH_FRAME_2) : int(LAUGH_FRAME_1);
            }
         }
         else if(!this.§0P§)
         {
            this.§,!9§.currentFrame = §7!K§;
         }
         if(this.§[!=§ == -1)
         {
            this.§[!=§ = 500;
         }
         else if(this.§#!]§)
         {
            if(this.§+!p§ == false)
            {
               this.§0P§ = false;
               this.§+!p§ = true;
               this.§8!o§ = §=Q§.§`!A§("pigs_emperor_hologram_loop",§=Q§.§@"=§);
               this.§8!o§.addEventListener(Event.SOUND_COMPLETE,this.§3A§);
            }
            this.§[!=§ -= param1;
            if(this.§[!=§ < 0)
            {
               this.§^&§();
            }
         }
      }
      
      private function §3A§(param1:Event) : void
      {
         this.§+!p§ = false;
      }
      
      private function §^&§() : void
      {
         if(this.§,!9§ && this.§#!]§)
         {
            this.§1#&§ = §=Q§.§`!A§(this.§#"§(),§=Q§.§@"=§,0,2);
            this.§[!=§ = §%"x§ + Math.random() * §!%§;
            this.§`!o§ = 3000;
            this.§,!9§.currentFrame = LAUGH_FRAME_1;
         }
      }
      
      private function §9"X§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§;"]§ != -1)
         {
            this.§;"]§ -= param1;
            if(this.§;"]§ < 0)
            {
               sprite.removeChild(this.§,!9§);
               this.§#!]§ = false;
               this.§8!o§.stop();
               this.§,!9§ = null;
            }
            else
            {
               _loc2_ = this.§;"]§ > §[!9§ / 2 ? int(BREAK_FRAME_1) : int(BREAK_FRAME_2);
               this.§,!9§.currentFrame = _loc2_;
            }
         }
         else
         {
            this.§!!e§ = !this.§!!e§;
            if(this.§!!e§)
            {
               this.§,!9§.alpha = 0.75 + Math.random() * 0.25;
            }
         }
      }
      
      override protected function setDamageState(param1:Number, param2:§'=§) : Boolean
      {
         if(param1 > 0.02 && this.§,!9§ && this.§;"]§ == -1)
         {
            §=Q§.§`!A§("pigs_emperor_hologram_break");
            this.§;"]§ = §[!9§;
            this.§,!9§.alpha = 1;
         }
         return super.setDamageState(param1,param2);
      }
      
      private function §3"d§() : void
      {
         var _loc1_:§?!3§ = §<!J§.§=!%§.animationManager;
         var _loc2_:§1!^§ = _loc1_.getAnimation(§'"b§);
         if(!_loc2_)
         {
            _loc2_ = _loc1_.§&!d§(§'"b§,["HOLOGRAM_EMPEROR_BASIC","HOLOGRAM_EMPEROR_SMILE","HOLOGRAM_EMPEROR_SCREAM","HOLOGRAM_EMPEROR_BREAK_1","HOLOGRAM_EMPEROR_BREAK_2"]);
         }
         this.§,!9§ = new §'#4§(_loc2_);
         sprite.addChild(this.§,!9§);
         this.§,!9§.y = -90;
      }
   }
}
