package §0!w§
{
   import §-!+§.§6"6§;
   import §=!<§.§5!U§;
   import §`"2§.§6!,§;
   import §`L§.§=!x§;
   import §`L§.Sprite;
   
   public class § 2§
   {
      
      public static const §=X§:String = "CutScene_Type_Intro";
      
      public static const §6!G§:String = "CutScene_Type_Outro";
      
      public static const §%u§:String = "CutScene_Type_Final_Outro";
       
      
      private var §>!t§:§6!,§;
      
      private var §`u§:String;
      
      private var §7!8§:Vector.<§5i§>;
      
      private var §[!#§:Number;
      
      private var §,U§:Number;
      
      private var §+!C§:Number;
      
      private var §1z§:Number;
      
      private var §`B§:Sprite;
      
      private var §@!w§:Boolean = true;
      
      private var §1f§:uint;
      
      private var §5!o§:Boolean;
      
      private var §>2§:§=!x§;
      
      private var §#!%§:§=!x§;
      
      public function § 2§(param1:Object, param2:String)
      {
         var _loc3_:§5i§ = null;
         var _loc4_:Object = null;
         this.§7!8§ = new Vector.<§5i§>();
         super();
         this.§[!#§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§`u§ = §=X§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§`u§ = §6!G§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§1";§(_loc4_);
               if(_loc3_)
               {
                  this.§7!8§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§7!8§)
            {
               if(_loc3_ is §8!I§)
               {
                  (_loc3_ as §8!I§).setSize(this.§+!C§,this.§1z§);
                  (_loc3_ as §8!I§).§[F§ = this.§@!w§;
               }
               else if(_loc3_ is §#"2§)
               {
                  (_loc3_ as §#"2§).setSize(this.§+!C§,this.§1z§);
                  (_loc3_ as §#"2§).§5"=§ = this.§@!w§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§`B§;
      }
      
      private function §1";§(param1:Object) : §5i§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §5i§.§-7§:
               return new §#"2§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §5i§.§8]§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §8!I§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §5i§.§2!j§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §8-§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §5i§.§?!6§:
               return new §`P§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §5i§.END:
               this.§,U§ = param1.time * 1000;
               break;
            case §5i§.§#!<§:
               this.§+!C§ = param1.width;
               this.§1z§ = param1.height;
               break;
            case §5i§.§ 0§:
               this.§@!w§ = false;
               break;
            case §5i§.§5!_§:
               this.§@!w§ = true;
               break;
            case §5i§.§""&§:
               this.§1f§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§`B§)
         {
            this.§`B§.dispose();
            this.§`B§ = null;
         }
         this.§7!8§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§`B§)
         {
            this.§`B§ = new Sprite();
         }
         this.§[!#§ += param1;
         var _loc2_:int = this.§7!8§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§7!8§[_loc2_].update(this.§[!#§,this.§`B§,this.§>!t§))
            {
               this.§7!8§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§!o§();
         this.§;!r§();
         this.§`!§();
         return this.§[!#§ < this.§,U§;
      }
      
      private function §`!§() : void
      {
         var _loc1_:int = §6"6§.§^F§.§>""§.height;
         var _loc2_:Number = §5!U§.§=k§;
         var _loc3_:Number = §5!U§.§#"1§;
         var _loc4_:int = (_loc1_ - this.§1z§ * _loc2_) / _loc2_;
         this.§`B§.y = _loc4_ >> 1;
      }
      
      private function §!o§() : void
      {
         §6"6§.§^F§.color = this.§1f§;
      }
      
      private function §;!r§() : void
      {
         if(this.§5!o§)
         {
            return;
         }
         var _loc1_:Sprite = this.§`B§.getChildByName(§#"2§.§%"%§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§5!o§ = true;
      }
      
      public function clone(param1:§6!,§) : § 2§
      {
         var _loc3_:§5i§ = null;
         var _loc2_:§ 2§ = new § 2§(null,null);
         for each(_loc3_ in this.§7!8§)
         {
            _loc2_.§7!8§.push(_loc3_.clone());
         }
         _loc2_.§[!#§ = this.§[!#§;
         _loc2_.§,U§ = this.§,U§;
         _loc2_.§+!C§ = this.§+!C§;
         _loc2_.§1z§ = this.§1z§;
         _loc2_.§@!w§ = this.§@!w§;
         _loc2_.§1f§ = this.§1f§;
         _loc2_.§`u§ = this.§`u§;
         _loc2_.§>!t§ = param1;
         return _loc2_;
      }
      
      public function get §!g§() : String
      {
         return this.§`u§;
      }
      
      public function set §!g§(param1:String) : void
      {
         this.§`u§ = param1;
      }
   }
}
