package §,%§
{
   import §3",§.§0"<§;
   import §7"1§.§%W§;
   import §@!-§.§3"1§;
   import §@!i§.§'!a§;
   import §@!i§.Sprite;
   
   public class §-!4§
   {
      
      public static const §1j§:String = "CutScene_Type_Intro";
      
      public static const §+!;§:String = "CutScene_Type_Outro";
      
      public static const §>!n§:String = "CutScene_Type_Final_Outro";
       
      
      private var §9!r§:§3"1§;
      
      private var §#'§:String;
      
      private var §7-§:Vector.<§"!2§>;
      
      private var §&!w§:Number;
      
      private var § c§:Number;
      
      private var §%w§:Number;
      
      private var §-N§:Number;
      
      private var §+;§:Sprite;
      
      private var §4P§:Boolean = true;
      
      private var §'p§:uint;
      
      private var §;!T§:Boolean;
      
      private var §@!2§:§'!a§;
      
      private var §^!h§:§'!a§;
      
      public function §-!4§(param1:Object, param2:String)
      {
         var _loc3_:§"!2§ = null;
         var _loc4_:Object = null;
         this.§7-§ = new Vector.<§"!2§>();
         super();
         this.§&!w§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§#'§ = §1j§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§#'§ = §+!;§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§6!I§(_loc4_);
               if(_loc3_)
               {
                  this.§7-§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§7-§)
            {
               if(_loc3_ is §<B§)
               {
                  (_loc3_ as §<B§).setSize(this.§%w§,this.§-N§);
                  (_loc3_ as §<B§).§3g§ = this.§4P§;
               }
               else if(_loc3_ is §6S§)
               {
                  (_loc3_ as §6S§).setSize(this.§%w§,this.§-N§);
                  (_loc3_ as §6S§).§,@§ = this.§4P§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§+;§;
      }
      
      private function §6!I§(param1:Object) : §"!2§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §"!2§.§;!+§:
               return new §6S§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §"!2§.§#!b§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §<B§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §"!2§.§8O§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §'!E§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §"!2§.§[!h§:
               return new §9";§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §"!2§.END:
               this.§ c§ = param1.time * 1000;
               break;
            case §"!2§.§!!x§:
               this.§%w§ = param1.width;
               this.§-N§ = param1.height;
               break;
            case §"!2§.§?!W§:
               this.§4P§ = false;
               break;
            case §"!2§.§8"5§:
               this.§4P§ = true;
               break;
            case §"!2§.§^"4§:
               this.§'p§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§+;§)
         {
            this.§+;§.dispose();
            this.§+;§ = null;
         }
         this.§7-§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§+;§)
         {
            this.§+;§ = new Sprite();
         }
         this.§&!w§ += param1;
         var _loc2_:int = this.§7-§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§7-§[_loc2_].update(this.§&!w§,this.§+;§,this.§9!r§))
            {
               this.§7-§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§]l§();
         this.§<S§();
         this.§&!7§();
         return this.§&!w§ < this.§ c§;
      }
      
      private function §&!7§() : void
      {
         var _loc1_:int = §0"<§.§<?§.§9R§.height;
         var _loc2_:Number = §%W§.§@!N§;
         var _loc3_:Number = §%W§.§`N§;
         var _loc4_:int = (_loc1_ - this.§-N§ * _loc2_) / _loc2_;
         this.§+;§.y = _loc4_ >> 1;
      }
      
      private function §]l§() : void
      {
         §0"<§.§<?§.color = this.§'p§;
      }
      
      private function §<S§() : void
      {
         if(this.§;!T§)
         {
            return;
         }
         var _loc1_:Sprite = this.§+;§.getChildByName(§6S§.§`"§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§;!T§ = true;
      }
      
      public function clone(param1:§3"1§) : §-!4§
      {
         var _loc3_:§"!2§ = null;
         var _loc2_:§-!4§ = new §-!4§(null,null);
         for each(_loc3_ in this.§7-§)
         {
            _loc2_.§7-§.push(_loc3_.clone());
         }
         _loc2_.§&!w§ = this.§&!w§;
         _loc2_.§ c§ = this.§ c§;
         _loc2_.§%w§ = this.§%w§;
         _loc2_.§-N§ = this.§-N§;
         _loc2_.§4P§ = this.§4P§;
         _loc2_.§'p§ = this.§'p§;
         _loc2_.§#'§ = this.§#'§;
         _loc2_.§9!r§ = param1;
         return _loc2_;
      }
      
      public function get §4w§() : String
      {
         return this.§#'§;
      }
      
      public function set §4w§(param1:String) : void
      {
         this.§#'§ = param1;
      }
   }
}
