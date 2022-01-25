package §3n§
{
   import § !K§.§&&§;
   import § !K§.Sprite;
   import §-v§.§,!1§;
   import §6l§.§79§;
   import §9!Y§.§!q§;
   
   public class §1!7§
   {
      
      public static const §6s§:String = "CutScene_Type_Intro";
      
      public static const §6k§:String = "CutScene_Type_Outro";
      
      public static const §6!Y§:String = "CutScene_Type_Final_Outro";
       
      
      private var §!!@§:§!q§;
      
      private var §5!0§:String;
      
      private var §[H§:Vector.<§'0§>;
      
      private var §7!G§:Number;
      
      private var §60§:Number;
      
      private var §3§:Number;
      
      private var §=!=§:Number;
      
      private var §]!+§:Sprite;
      
      private var §+!a§:Boolean = true;
      
      private var §`!^§:uint;
      
      private var §1!O§:Boolean;
      
      private var §2f§:§&&§;
      
      private var §1!8§:§&&§;
      
      public function §1!7§(param1:Object, param2:String)
      {
         var _loc3_:§'0§ = null;
         var _loc4_:Object = null;
         this.§[H§ = new Vector.<§'0§>();
         super();
         this.§7!G§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§5!0§ = §6s§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§5!0§ = §6k§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§+!1§(_loc4_);
               if(_loc3_)
               {
                  this.§[H§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§[H§)
            {
               if(_loc3_ is §+B§)
               {
                  (_loc3_ as §+B§).§9![§(this.§3§,this.§=!=§);
                  (_loc3_ as §+B§).§^S§ = this.§+!a§;
               }
               else if(_loc3_ is §`H§)
               {
                  (_loc3_ as §`H§).§9![§(this.§3§,this.§=!=§);
                  (_loc3_ as §`H§).§7g§ = this.§+!a§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§]!+§;
      }
      
      private function §+!1§(param1:Object) : §'0§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §'0§.§<4§:
               return new §`H§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §'0§.§1!=§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §+B§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §'0§.§-m§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §6I§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §'0§.§?!9§:
               return new §[f§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §'0§.END:
               this.§60§ = param1.time * 1000;
               break;
            case §'0§.§-d§:
               this.§3§ = param1.width;
               this.§=!=§ = param1.height;
               break;
            case §'0§.§?!A§:
               this.§+!a§ = false;
               break;
            case §'0§.§!%§:
               this.§+!a§ = true;
               break;
            case §'0§.§4v§:
               this.§`!^§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
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
         this.§[H§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§]!+§)
         {
            this.§]!+§ = new Sprite();
         }
         this.§7!G§ += param1;
         var _loc2_:int = this.§[H§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§[H§[_loc2_].update(this.§7!G§,this.§]!+§,this.§!!@§))
            {
               this.§[H§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§&!a§();
         this.§'!I§();
         this.§9!N§();
         return this.§7!G§ < this.§60§;
      }
      
      private function §9!N§() : void
      {
         var _loc1_:int = §79§.§#[§.§=!;§.height;
         var _loc2_:Number = §,!1§.§@!7§;
         var _loc3_:Number = §,!1§.§"R§;
         var _loc4_:int = (_loc1_ - this.§=!=§ * _loc2_) / _loc2_;
         this.§]!+§.y = _loc4_ >> 1;
      }
      
      private function §&!a§() : void
      {
         §79§.§#[§.color = this.§`!^§;
      }
      
      private function §'!I§() : void
      {
         if(this.§1!O§)
         {
            return;
         }
         var _loc1_:Sprite = this.§]!+§.getChildByName(§`H§.§>f§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§1!O§ = true;
      }
      
      public function clone(param1:§!q§) : §1!7§
      {
         var _loc3_:§'0§ = null;
         var _loc2_:§1!7§ = new §1!7§(null,null);
         for each(_loc3_ in this.§[H§)
         {
            _loc2_.§[H§.push(_loc3_.clone());
         }
         _loc2_.§7!G§ = this.§7!G§;
         _loc2_.§60§ = this.§60§;
         _loc2_.§3§ = this.§3§;
         _loc2_.§=!=§ = this.§=!=§;
         _loc2_.§+!a§ = this.§+!a§;
         _loc2_.§`!^§ = this.§`!^§;
         _loc2_.§5!0§ = this.§5!0§;
         _loc2_.§!!@§ = param1;
         return _loc2_;
      }
      
      public function get §4!a§() : String
      {
         return this.§5!0§;
      }
      
      public function set §4!a§(param1:String) : void
      {
         this.§5!0§ = param1;
      }
   }
}
