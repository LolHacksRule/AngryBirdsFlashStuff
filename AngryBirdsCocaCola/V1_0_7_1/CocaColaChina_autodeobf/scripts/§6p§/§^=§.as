package §6p§
{
   import § F§.§3!&§;
   import §,!Q§.§2P§;
   import §,!Q§.Sprite;
   import §-v§.§,!1§;
   import §2l§.§]O§;
   
   public class §^=§
   {
      
      public static const §4!a§:String = "CutScene_Type_Intro";
      
      public static const §6s§:String = "CutScene_Type_Outro";
      
      public static const §6k§:String = "CutScene_Type_Final_Outro";
       
      
      private var §!!@§:§]O§;
      
      private var §1!7§:String;
      
      private var §5!0§:Vector.<§6!Y§>;
      
      private var §7!G§:Number;
      
      private var §[H§:Number;
      
      private var §8a§:Number;
      
      private var §[K§:Number;
      
      private var §]!+§:Sprite;
      
      private var §60§:Boolean = true;
      
      private var §+!a§:uint;
      
      private var §`!^§:Boolean;
      
      private var §1!O§:§2P§;
      
      private var §2f§:§2P§;
      
      public function §^=§(param1:Object, param2:String)
      {
         var _loc3_:§6!Y§ = null;
         var _loc4_:Object = null;
         this.§5!0§ = new Vector.<§6!Y§>();
         super();
         this.§7!G§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§1!7§ = §4!a§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§1!7§ = §6s§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§1!8§(_loc4_);
               if(_loc3_)
               {
                  this.§5!0§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§5!0§)
            {
               if(_loc3_ is §>f§)
               {
                  (_loc3_ as §>f§).§7g§(this.§8a§,this.§[K§);
                  (_loc3_ as §>f§).§2+§ = this.§60§;
               }
               else if(_loc3_ is §'$§)
               {
                  (_loc3_ as §'$§).§7g§(this.§8a§,this.§[K§);
                  (_loc3_ as §'$§).§6!5§ = this.§60§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§]!+§;
      }
      
      private function §1!8§(param1:Object) : §6!Y§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §6!Y§.§-d§:
               return new §'$§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §6!Y§.§<4§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §>f§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §6!Y§.§1!=§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §+t§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §6!Y§.§-m§:
               return new §4v§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §6!Y§.END:
               this.§[H§ = param1.time * 1000;
               break;
            case §6!Y§.§'0§:
               this.§8a§ = param1.width;
               this.§[K§ = param1.height;
               break;
            case §6!Y§.§?!9§:
               this.§60§ = false;
               break;
            case §6!Y§.§?!A§:
               this.§60§ = true;
               break;
            case §6!Y§.§!%§:
               this.§+!a§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§]!+§)
         {
            this.§]!+§.dispose();
            this.§]!+§ = null;
         }
         this.§5!0§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§]!+§)
         {
            this.§]!+§ = new Sprite();
         }
         this.§7!G§ += param1;
         var _loc2_:int = this.§5!0§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§5!0§[_loc2_].update(this.§7!G§,this.§]!+§,this.§!!@§))
            {
               this.§5!0§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§9!N§();
         this.§&!a§();
         this.§+!1§();
         return this.§7!G§ < this.§[H§;
      }
      
      private function §+!1§() : void
      {
         var _loc1_:int = §3!&§.§<1§.§3!O§.height;
         var _loc2_:Number = §,!1§.§@!7§;
         var _loc3_:Number = §,!1§.§"R§;
         var _loc4_:int = (_loc1_ - this.§[K§ * _loc2_) / _loc2_;
         this.§]!+§.y = _loc4_ >> 1;
      }
      
      private function §9!N§() : void
      {
         §3!&§.§<1§.color = this.§+!a§;
      }
      
      private function §&!a§() : void
      {
         if(this.§`!^§)
         {
            return;
         }
         var _loc1_:Sprite = this.§]!+§.getChildByName(§'$§.§9![§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§`!^§ = true;
      }
      
      public function clone(param1:§]O§) : §^=§
      {
         var _loc3_:§6!Y§ = null;
         var _loc2_:§^=§ = new §^=§(null,null);
         for each(_loc3_ in this.§5!0§)
         {
            _loc2_.§5!0§.push(_loc3_.clone());
         }
         _loc2_.§7!G§ = this.§7!G§;
         _loc2_.§[H§ = this.§[H§;
         _loc2_.§8a§ = this.§8a§;
         _loc2_.§[K§ = this.§[K§;
         _loc2_.§60§ = this.§60§;
         _loc2_.§+!a§ = this.§+!a§;
         _loc2_.§1!7§ = this.§1!7§;
         _loc2_.§!!@§ = param1;
         return _loc2_;
      }
      
      public function get §'!I§() : String
      {
         return this.§1!7§;
      }
      
      public function set §'!I§(param1:String) : void
      {
         this.§1!7§ = param1;
      }
   }
}
