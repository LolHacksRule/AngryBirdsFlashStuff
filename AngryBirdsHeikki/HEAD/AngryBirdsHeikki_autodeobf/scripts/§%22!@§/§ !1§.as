package §"!@§
{
   import §&L§.§?]§;
   import §+!]§.§!,§;
   import §6!;§.§;o§;
   import §6!;§.Sprite;
   import §8O§.§&#§;
   
   public class § !1§
   {
      
      public static const §2D§:String = "CutScene_Type_Intro";
      
      public static const §<!S§:String = "CutScene_Type_Outro";
      
      public static const §`A§:String = "CutScene_Type_Final_Outro";
       
      
      private var §[G§:§!,§;
      
      private var §=!,§:String;
      
      private var §0!@§:Vector.<§,!T§>;
      
      private var §2!N§:Number;
      
      private var §5-§:Number;
      
      private var §@S§:Number;
      
      private var §1!U§:Number;
      
      private var §4!B§:Sprite;
      
      private var §!!;§:Boolean = true;
      
      private var §,J§:uint;
      
      private var §?!d§:Boolean;
      
      private var §!!=§:§;o§;
      
      private var §>!I§:§;o§;
      
      public function § !1§(param1:Object, param2:String)
      {
         var _loc3_:§,!T§ = null;
         var _loc4_:Object = null;
         this.§0!@§ = new Vector.<§,!T§>();
         super();
         this.§2!N§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§=!,§ = §2D§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§=!,§ = §<!S§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§&A§(_loc4_);
               if(_loc3_)
               {
                  this.§0!@§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§0!@§)
            {
               if(_loc3_ is §%l§)
               {
                  (_loc3_ as §%l§).§'!3§(this.§@S§,this.§1!U§);
                  (_loc3_ as §%l§).§-!S§ = this.§!!;§;
               }
               else if(_loc3_ is §3v§)
               {
                  (_loc3_ as §3v§).§'!3§(this.§@S§,this.§1!U§);
                  (_loc3_ as §3v§).§^!A§ = this.§!!;§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§4!B§;
      }
      
      private function §&A§(param1:Object) : §,!T§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §,!T§.§function§:
               return new §3v§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §,!T§.§7c§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §%l§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §,!T§.§@!+§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §;-§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §,!T§.§'!K§:
               return new §[q§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §,!T§.END:
               this.§5-§ = param1.time * 1000;
               break;
            case §,!T§.§?b§:
               this.§@S§ = param1.width;
               this.§1!U§ = param1.height;
               break;
            case §,!T§.§-D§:
               this.§!!;§ = false;
               break;
            case §,!T§.§;,§:
               this.§!!;§ = true;
               break;
            case §,!T§.§@H§:
               this.§,J§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§4!B§)
         {
            this.§4!B§.dispose();
            this.§4!B§ = null;
         }
         this.§0!@§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§4!B§)
         {
            this.§4!B§ = new Sprite();
         }
         this.§2!N§ += param1;
         var _loc2_:int = this.§0!@§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§0!@§[_loc2_].update(this.§2!N§,this.§4!B§,this.§[G§))
            {
               this.§0!@§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§%"§();
         this.§"!B§();
         this.§6!8§();
         return this.§2!N§ < this.§5-§;
      }
      
      private function §6!8§() : void
      {
         var _loc1_:int = §?]§.§`!H§.§-y§.height;
         var _loc2_:Number = §&#§.§>!L§;
         var _loc3_:Number = §&#§.§>!§;
         var _loc4_:int = (_loc1_ - this.§1!U§ * _loc2_) / _loc2_;
         this.§4!B§.y = _loc4_ >> 1;
      }
      
      private function §%"§() : void
      {
         §?]§.§`!H§.color = this.§,J§;
      }
      
      private function §"!B§() : void
      {
         if(this.§?!d§)
         {
            return;
         }
         var _loc1_:Sprite = this.§4!B§.getChildByName(§3v§.§?!E§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§?!d§ = true;
      }
      
      public function clone(param1:§!,§) : § !1§
      {
         var _loc3_:§,!T§ = null;
         var _loc2_:§ !1§ = new § !1§(null,null);
         for each(_loc3_ in this.§0!@§)
         {
            _loc2_.§0!@§.push(_loc3_.clone());
         }
         _loc2_.§2!N§ = this.§2!N§;
         _loc2_.§5-§ = this.§5-§;
         _loc2_.§@S§ = this.§@S§;
         _loc2_.§1!U§ = this.§1!U§;
         _loc2_.§!!;§ = this.§!!;§;
         _loc2_.§,J§ = this.§,J§;
         _loc2_.§=!,§ = this.§=!,§;
         _loc2_.§[G§ = param1;
         return _loc2_;
      }
      
      public function get §+!0§() : String
      {
         return this.§=!,§;
      }
      
      public function set §+!0§(param1:String) : void
      {
         this.§=!,§ = param1;
      }
   }
}
