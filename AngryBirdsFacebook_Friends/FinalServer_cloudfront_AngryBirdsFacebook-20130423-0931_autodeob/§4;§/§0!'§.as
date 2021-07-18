package §4;§
{
   import §"a§.§!"J§;
   import §'!6§.§5T§;
   import §'!6§.Sprite;
   import §<T§.§`m§;
   import §@!"§.§?l§;
   
   public class §0!'§
   {
      
      public static const §<=§:String = "CutScene_Type_Intro";
      
      public static const §6"7§:String = "CutScene_Type_Outro";
      
      public static const §#!Y§:String = "CutScene_Type_Final_Outro";
       
      
      private var §=!2§:§`m§;
      
      private var §]J§:String;
      
      private var §#"K§:Vector.<§^g§>;
      
      private var §"!M§:Number;
      
      private var §0!=§:Number;
      
      private var §,>§:Number;
      
      private var §`;§:Number;
      
      private var §?!T§:Sprite;
      
      private var §,!M§:Boolean = true;
      
      private var §5"I§:uint;
      
      private var §<"I§:Boolean;
      
      private var §2h§:§5T§;
      
      private var §9"B§:§5T§;
      
      public function §0!'§(param1:Object, param2:String)
      {
         var _loc3_:§^g§ = null;
         var _loc4_:Object = null;
         this.§#"K§ = new Vector.<§^g§>();
         super();
         this.§"!M§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§]J§ = §<=§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§]J§ = §6"7§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§!"5§(_loc4_);
               if(_loc3_)
               {
                  this.§#"K§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§#"K§)
            {
               if(_loc3_ is §8"%§)
               {
                  (_loc3_ as §8"%§).setSize(this.§,>§,this.§`;§);
                  (_loc3_ as §8"%§).§!W§ = this.§,!M§;
               }
               else if(_loc3_ is §+!$§)
               {
                  (_loc3_ as §+!$§).setSize(this.§,>§,this.§`;§);
                  (_loc3_ as §+!$§).§7^§ = this.§,!M§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§?!T§;
      }
      
      private function §!"5§(param1:Object) : §^g§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §^g§.§^!V§:
               return new §+!$§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §^g§.§9;§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §8"%§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §^g§.§-a§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §0!7§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §^g§.§[Q§:
               return new §-W§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §^g§.END:
               this.§0!=§ = param1.time * 1000;
               break;
            case §^g§.§%!c§:
               this.§,>§ = param1.width;
               this.§`;§ = param1.height;
               break;
            case §^g§.§`!E§:
               this.§,!M§ = false;
               break;
            case §^g§.§4e§:
               this.§,!M§ = true;
               break;
            case §^g§.§2!'§:
               this.§5"I§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§?!T§)
         {
            this.§?!T§.dispose();
            this.§?!T§ = null;
         }
         this.§#"K§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§?!T§)
         {
            this.§?!T§ = new Sprite();
         }
         this.§"!M§ += param1;
         var _loc2_:int = this.§#"K§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§#"K§[_loc2_].update(this.§"!M§,this.§?!T§,this.§=!2§))
            {
               this.§#"K§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§0]§();
         this.§7`§();
         return this.§"!M§ < this.§0!=§;
      }
      
      private function §7`§() : void
      {
         var _loc1_:int = §!"J§.§8N§.height;
         var _loc2_:Number = §?l§.§+!9§;
         var _loc3_:Number = §?l§.§0!S§;
         var _loc4_:int = (_loc1_ - this.§`;§ * _loc2_) / _loc2_;
         this.§?!T§.y = _loc4_ >> 1;
      }
      
      private function §0]§() : void
      {
         §!"J§.§1&§.color = this.§5"I§;
      }
      
      public function clone(param1:§`m§) : §0!'§
      {
         var _loc3_:§^g§ = null;
         var _loc2_:§0!'§ = new §0!'§(null,null);
         for each(_loc3_ in this.§#"K§)
         {
            _loc2_.§#"K§.push(_loc3_.clone());
         }
         _loc2_.§"!M§ = this.§"!M§;
         _loc2_.§0!=§ = this.§0!=§;
         _loc2_.§,>§ = this.§,>§;
         _loc2_.§`;§ = this.§`;§;
         _loc2_.§,!M§ = this.§,!M§;
         _loc2_.§5"I§ = this.§5"I§;
         _loc2_.§]J§ = this.§]J§;
         _loc2_.§=!2§ = param1;
         return _loc2_;
      }
      
      public function get §'!G§() : String
      {
         return this.§]J§;
      }
      
      public function set §'!G§(param1:String) : void
      {
         this.§]J§ = param1;
      }
   }
}
