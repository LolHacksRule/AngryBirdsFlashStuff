package §>!J§
{
   import §3-§.§1L§;
   import §>Q§.§5!5§;
   import §[=§.§=!I§;
   import §[=§.Sprite;
   import §`!H§.§@!E§;
   
   public class §>!c§
   {
      
      public static const §6!a§:String = "CutScene_Type_Intro";
      
      public static const §@K§:String = "CutScene_Type_Outro";
      
      public static const §'0§:String = "CutScene_Type_Final_Outro";
       
      
      private var §6!;§:§@!E§;
      
      private var §"5§:String;
      
      private var §7u§:Vector.<§=!§>;
      
      private var §9E§:Number;
      
      private var § E§:Number;
      
      private var §,d§:Number;
      
      private var §"q§:Number;
      
      private var §%@§:Sprite;
      
      private var §9s§:Boolean = true;
      
      private var §,0§:uint;
      
      private var §,!b§:Boolean;
      
      private var §]!4§:§=!I§;
      
      private var §#V§:§=!I§;
      
      public function §>!c§(param1:Object, param2:String)
      {
         var _loc3_:§=!§ = null;
         var _loc4_:Object = null;
         this.§7u§ = new Vector.<§=!§>();
         super();
         this.§9E§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§"5§ = §6!a§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§"5§ = §@K§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§,!P§(_loc4_);
               if(_loc3_)
               {
                  this.§7u§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§7u§)
            {
               if(_loc3_ is §2$§)
               {
                  (_loc3_ as §2$§).§[!-§(this.§,d§,this.§"q§);
                  (_loc3_ as §2$§).§[!+§ = this.§9s§;
               }
               else if(_loc3_ is §`!6§)
               {
                  (_loc3_ as §`!6§).§[!-§(this.§,d§,this.§"q§);
                  (_loc3_ as §`!6§).§-!W§ = this.§9s§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§%@§;
      }
      
      private function §,!P§(param1:Object) : §=!§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §=!§.§5!O§:
               return new §`!6§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §=!§.§1!9§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §2$§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §=!§.§3!2§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §"§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §=!§.§-!2§:
               return new §4E§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §=!§.END:
               this.§ E§ = param1.time * 1000;
               break;
            case §=!§.§-Q§:
               this.§,d§ = param1.width;
               this.§"q§ = param1.height;
               break;
            case §=!§.§19§:
               this.§9s§ = false;
               break;
            case §=!§.§>G§:
               this.§9s§ = true;
               break;
            case §=!§.§?!_§:
               this.§,0§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§%@§)
         {
            this.§%@§.dispose();
            this.§%@§ = null;
         }
         this.§7u§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§%@§)
         {
            this.§%@§ = new Sprite();
         }
         this.§9E§ += param1;
         var _loc2_:int = this.§7u§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§7u§[_loc2_].update(this.§9E§,this.§%@§,this.§6!;§))
            {
               this.§7u§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§2!#§();
         this.§?!U§();
         this.§16§();
         return this.§9E§ < this.§ E§;
      }
      
      private function §16§() : void
      {
         var _loc1_:int = §5!5§.§5F§.§;S§.height;
         var _loc2_:Number = §1L§.§%v§;
         var _loc3_:Number = §1L§.§1t§;
         var _loc4_:int = (_loc1_ - this.§"q§ * _loc2_) / _loc2_;
         this.§%@§.y = _loc4_ >> 1;
      }
      
      private function §2!#§() : void
      {
         §5!5§.§5F§.color = this.§,0§;
      }
      
      private function §?!U§() : void
      {
         if(this.§,!b§)
         {
            return;
         }
         var _loc1_:Sprite = this.§%@§.getChildByName(§`!6§.§0!c§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§,!b§ = true;
      }
      
      public function clone(param1:§@!E§) : §>!c§
      {
         var _loc3_:§=!§ = null;
         var _loc2_:§>!c§ = new §>!c§(null,null);
         for each(_loc3_ in this.§7u§)
         {
            _loc2_.§7u§.push(_loc3_.clone());
         }
         _loc2_.§9E§ = this.§9E§;
         _loc2_.§ E§ = this.§ E§;
         _loc2_.§,d§ = this.§,d§;
         _loc2_.§"q§ = this.§"q§;
         _loc2_.§9s§ = this.§9s§;
         _loc2_.§,0§ = this.§,0§;
         _loc2_.§"5§ = this.§"5§;
         _loc2_.§6!;§ = param1;
         return _loc2_;
      }
      
      public function get §1q§() : String
      {
         return this.§"5§;
      }
      
      public function set §1q§(param1:String) : void
      {
         this.§"5§ = param1;
      }
   }
}
