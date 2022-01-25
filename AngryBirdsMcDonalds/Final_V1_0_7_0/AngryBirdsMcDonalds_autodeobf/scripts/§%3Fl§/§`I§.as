package §?l§
{
   import §%!5§.§7;§;
   import §0@§.§"%§;
   import §0@§.Sprite;
   import §7! §.§4n§;
   import §each §.§'!3§;
   
   public class §`I§
   {
      
      public static const §5]§:String = "CutScene_Type_Intro";
      
      public static const §[!d§:String = "CutScene_Type_Outro";
      
      public static const §"!]§:String = "CutScene_Type_Final_Outro";
       
      
      private var §!3§:§4n§;
      
      private var §`!g§:String;
      
      private var §4h§:Vector.<§0!W§>;
      
      private var §&! §:Number;
      
      private var §6!0§:Number;
      
      private var §"§:Number;
      
      private var §&'§:Number;
      
      private var §#Y§:Sprite;
      
      private var §+I§:Boolean = true;
      
      private var §0!@§:uint;
      
      private var §8g§:Boolean;
      
      private var §8!B§:§"%§;
      
      private var §!!E§:§"%§;
      
      public function §`I§(param1:Object, param2:String)
      {
         var _loc3_:§0!W§ = null;
         var _loc4_:Object = null;
         this.§4h§ = new Vector.<§0!W§>();
         super();
         this.§&! § = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§`!g§ = §5]§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§`!g§ = §[!d§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§"!"§(_loc4_);
               if(_loc3_)
               {
                  this.§4h§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§4h§)
            {
               if(_loc3_ is §9v§)
               {
                  (_loc3_ as §9v§).§%!e§(this.§"§,this.§&'§);
                  (_loc3_ as §9v§).§+6§ = this.§+I§;
               }
               else if(_loc3_ is §7!T§)
               {
                  (_loc3_ as §7!T§).§%!e§(this.§"§,this.§&'§);
                  (_loc3_ as §7!T§).§]!2§ = this.§+I§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§#Y§;
      }
      
      private function §"!"§(param1:Object) : §0!W§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §0!W§.§#!R§:
               return new §7!T§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §0!W§.§%p§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §9v§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §0!W§.§1!D§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §#!C§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §0!W§.§&!d§:
               return new §%D§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §0!W§.END:
               this.§6!0§ = param1.time * 1000;
               break;
            case §0!W§.§2C§:
               this.§"§ = param1.width;
               this.§&'§ = param1.height;
               break;
            case §0!W§.§?I§:
               this.§+I§ = false;
               break;
            case §0!W§.§ R§:
               this.§+I§ = true;
               break;
            case §0!W§.§ !7§:
               this.§0!@§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§#Y§)
         {
            this.§#Y§.dispose();
            this.§#Y§ = null;
         }
         this.§4h§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§#Y§)
         {
            this.§#Y§ = new Sprite();
         }
         this.§&! § += param1;
         var _loc2_:int = this.§4h§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§4h§[_loc2_].update(this.§&! §,this.§#Y§,this.§!3§))
            {
               this.§4h§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§ 3§();
         this.§6!<§();
         this.§'!O§();
         return this.§&! § < this.§6!0§;
      }
      
      private function §'!O§() : void
      {
         var _loc1_:int = §'!3§.§1!n§.§7!V§.height;
         var _loc2_:Number = §7;§.§#!T§;
         var _loc3_:Number = §7;§.§,§;
         var _loc4_:int = (_loc1_ - this.§&'§ * _loc2_) / _loc2_;
         this.§#Y§.y = _loc4_ >> 1;
      }
      
      private function § 3§() : void
      {
         §'!3§.§1!n§.color = this.§0!@§;
      }
      
      private function §6!<§() : void
      {
         if(this.§8g§)
         {
            return;
         }
         var _loc1_:Sprite = this.§#Y§.getChildByName(§7!T§.§;5§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§8g§ = true;
      }
      
      public function clone(param1:§4n§) : §`I§
      {
         var _loc3_:§0!W§ = null;
         var _loc2_:§`I§ = new §`I§(null,null);
         for each(_loc3_ in this.§4h§)
         {
            _loc2_.§4h§.push(_loc3_.clone());
         }
         _loc2_.§&! § = this.§&! §;
         _loc2_.§6!0§ = this.§6!0§;
         _loc2_.§"§ = this.§"§;
         _loc2_.§&'§ = this.§&'§;
         _loc2_.§+I§ = this.§+I§;
         _loc2_.§0!@§ = this.§0!@§;
         _loc2_.§`!g§ = this.§`!g§;
         _loc2_.§!3§ = param1;
         return _loc2_;
      }
      
      public function get §-n§() : String
      {
         return this.§`!g§;
      }
      
      public function set §-n§(param1:String) : void
      {
         this.§`!g§ = param1;
      }
   }
}
