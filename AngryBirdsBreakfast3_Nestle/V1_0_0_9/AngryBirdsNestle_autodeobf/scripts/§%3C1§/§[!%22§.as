package §<1§
{
   import §0!_§.§!!G§;
   import §3!0§.§`i§;
   import §=!d§.§5!5§;
   import §`!B§.Sprite;
   import §`!B§.§]!J§;
   
   public class §[!"§
   {
      
      public static const §"!D§:String = "CutScene_Type_Intro";
      
      public static const §9!5§:String = "CutScene_Type_Outro";
      
      public static const §;Y§:String = "CutScene_Type_Final_Outro";
       
      
      private var §=!Q§:§!!G§;
      
      private var §'"7§:String;
      
      private var §3U§:Vector.<§@",§>;
      
      private var §"!<§:Number;
      
      private var §4f§:Number;
      
      private var §5"5§:Number;
      
      private var §"!i§:Number;
      
      private var § C§:Sprite;
      
      private var §[!;§:Boolean = true;
      
      private var §-?§:uint;
      
      private var §3H§:Boolean;
      
      private var §6G§:§]!J§;
      
      private var §+k§:§]!J§;
      
      public function §[!"§(param1:Object, param2:String)
      {
         var _loc3_:§@",§ = null;
         var _loc4_:Object = null;
         this.§3U§ = new Vector.<§@",§>();
         super();
         this.§"!<§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§'"7§ = §"!D§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§'"7§ = §9!5§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§,!3§(_loc4_);
               if(_loc3_)
               {
                  this.§3U§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§3U§)
            {
               if(_loc3_ is §7!g§)
               {
                  (_loc3_ as §7!g§).setSize(this.§5"5§,this.§"!i§);
                  (_loc3_ as §7!g§).horizontal = this.§[!;§;
               }
               else if(_loc3_ is §,!c§)
               {
                  (_loc3_ as §,!c§).setSize(this.§5"5§,this.§"!i§);
                  (_loc3_ as §,!c§).§=!5§ = this.§[!;§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§ C§;
      }
      
      private function §,!3§(param1:Object) : §@",§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §@",§.§6"1§:
               return new §,!c§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §@",§.SCROLL:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §7!g§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §@",§.§=@§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §?[§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §@",§.§5!<§:
               return new §]"6§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §@",§.END:
               this.§4f§ = param1.time * 1000;
               break;
            case §@",§.§"!;§:
               this.§5"5§ = param1.width;
               this.§"!i§ = param1.height;
               break;
            case §@",§.§+"+§:
               this.§[!;§ = false;
               break;
            case §@",§.§`"1§:
               this.§[!;§ = true;
               break;
            case §@",§.§5!]§:
               this.§-?§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§ C§)
         {
            this.§ C§.dispose();
            this.§ C§ = null;
         }
         this.§3U§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§ C§)
         {
            this.§ C§ = new Sprite();
         }
         this.§"!<§ += param1;
         var _loc2_:int = this.§3U§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§3U§[_loc2_].update(this.§"!<§,this.§ C§,this.§=!Q§))
            {
               this.§3U§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§#l§();
         this.§@!u§();
         this.§4U§();
         return this.§"!<§ < this.§4f§;
      }
      
      private function §4U§() : void
      {
         var _loc1_:int = §5!5§.§5`§.height;
         var _loc2_:Number = §`i§.§=!I§;
         var _loc3_:Number = §`i§.§%!a§;
         var _loc4_:int = (_loc1_ - this.§"!i§ * _loc2_) / _loc2_;
         this.§ C§.y = _loc4_ >> 1;
      }
      
      private function §#l§() : void
      {
         §5!5§.§^'§.color = this.§-?§;
      }
      
      private function §@!u§() : void
      {
         if(this.§3H§)
         {
            return;
         }
         var _loc1_:Sprite = this.§ C§.getChildByName(§,!c§.§^!=§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§3H§ = true;
      }
      
      public function clone(param1:§!!G§) : §[!"§
      {
         var _loc3_:§@",§ = null;
         var _loc2_:§[!"§ = new §[!"§(null,null);
         for each(_loc3_ in this.§3U§)
         {
            _loc2_.§3U§.push(_loc3_.clone());
         }
         _loc2_.§"!<§ = this.§"!<§;
         _loc2_.§4f§ = this.§4f§;
         _loc2_.§5"5§ = this.§5"5§;
         _loc2_.§"!i§ = this.§"!i§;
         _loc2_.§[!;§ = this.§[!;§;
         _loc2_.§-?§ = this.§-?§;
         _loc2_.§'"7§ = this.§'"7§;
         _loc2_.§=!Q§ = param1;
         return _loc2_;
      }
      
      public function get §?!2§() : String
      {
         return this.§'"7§;
      }
      
      public function set §?!2§(param1:String) : void
      {
         this.§'"7§ = param1;
      }
   }
}
