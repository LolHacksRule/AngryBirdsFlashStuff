package §]!]§
{
   import §0!_§.§!!G§;
   import §3!0§.§`i§;
   import §=!d§.§5!5§;
   import §`!B§.Sprite;
   import §`!B§.§]!J§;
   
   public class §[?§
   {
      
      public static const §?!2§:String = "CutScene_Type_Intro";
      
      public static const §"!D§:String = "CutScene_Type_Outro";
      
      public static const §9!5§:String = "CutScene_Type_Final_Outro";
       
      
      private var §=!Q§:§!!G§;
      
      private var §[!"§:String;
      
      private var §'"7§:Vector.<§;Y§>;
      
      private var §"!<§:Number;
      
      private var §3U§:Number;
      
      private var §5"5§:Number;
      
      private var §"!i§:Number;
      
      private var § C§:Sprite;
      
      private var §4f§:Boolean = true;
      
      private var §[!;§:uint;
      
      private var §-?§:Boolean;
      
      private var §3H§:§]!J§;
      
      private var §6G§:§]!J§;
      
      public function §[?§(param1:Object, param2:String)
      {
         var _loc3_:§;Y§ = null;
         var _loc4_:Object = null;
         this.§'"7§ = new Vector.<§;Y§>();
         super();
         this.§"!<§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§[!"§ = §?!2§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§[!"§ = §"!D§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§+k§(_loc4_);
               if(_loc3_)
               {
                  this.§'"7§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§'"7§)
            {
               if(_loc3_ is §^!=§)
               {
                  (_loc3_ as §^!=§).setSize(this.§5"5§,this.§"!i§);
                  (_loc3_ as §^!=§).horizontal = this.§4f§;
               }
               else if(_loc3_ is §@Y§)
               {
                  (_loc3_ as §@Y§).setSize(this.§5"5§,this.§"!i§);
                  (_loc3_ as §@Y§).§@!J§ = this.§4f§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§ C§;
      }
      
      private function §+k§(param1:Object) : §;Y§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §;Y§.§"!;§:
               return new §@Y§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §;Y§.SCROLL:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §^!=§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §;Y§.§6"1§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §#y§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §;Y§.§=@§:
               return new §5!]§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §;Y§.END:
               this.§3U§ = param1.time * 1000;
               break;
            case §;Y§.§@",§:
               this.§5"5§ = param1.width;
               this.§"!i§ = param1.height;
               break;
            case §;Y§.§5!<§:
               this.§4f§ = false;
               break;
            case §;Y§.§+"+§:
               this.§4f§ = true;
               break;
            case §;Y§.§`"1§:
               this.§[!;§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
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
         this.§'"7§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§ C§)
         {
            this.§ C§ = new Sprite();
         }
         this.§"!<§ += param1;
         var _loc2_:int = this.§'"7§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§'"7§[_loc2_].update(this.§"!<§,this.§ C§,this.§=!Q§))
            {
               this.§'"7§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§4U§();
         this.§#l§();
         this.§,!3§();
         return this.§"!<§ < this.§3U§;
      }
      
      private function §,!3§() : void
      {
         var _loc1_:int = §5!5§.§5`§.height;
         var _loc2_:Number = §`i§.§=!I§;
         var _loc3_:Number = §`i§.§%!a§;
         var _loc4_:int = (_loc1_ - this.§"!i§ * _loc2_) / _loc2_;
         this.§ C§.y = _loc4_ >> 1;
      }
      
      private function §4U§() : void
      {
         §5!5§.§^'§.color = this.§[!;§;
      }
      
      private function §#l§() : void
      {
         if(this.§-?§)
         {
            return;
         }
         var _loc1_:Sprite = this.§ C§.getChildByName(§@Y§.§=!5§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§-?§ = true;
      }
      
      public function clone(param1:§!!G§) : §[?§
      {
         var _loc3_:§;Y§ = null;
         var _loc2_:§[?§ = new §[?§(null,null);
         for each(_loc3_ in this.§'"7§)
         {
            _loc2_.§'"7§.push(_loc3_.clone());
         }
         _loc2_.§"!<§ = this.§"!<§;
         _loc2_.§3U§ = this.§3U§;
         _loc2_.§5"5§ = this.§5"5§;
         _loc2_.§"!i§ = this.§"!i§;
         _loc2_.§4f§ = this.§4f§;
         _loc2_.§[!;§ = this.§[!;§;
         _loc2_.§[!"§ = this.§[!"§;
         _loc2_.§=!Q§ = param1;
         return _loc2_;
      }
      
      public function get §@!u§() : String
      {
         return this.§[!"§;
      }
      
      public function set §@!u§(param1:String) : void
      {
         this.§[!"§ = param1;
      }
   }
}
