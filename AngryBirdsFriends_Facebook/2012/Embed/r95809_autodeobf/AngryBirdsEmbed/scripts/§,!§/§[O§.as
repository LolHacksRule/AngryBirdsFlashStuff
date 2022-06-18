package §,!§
{
   import §&I§.§3! §;
   import §->§.§7d§;
   import §->§.Sprite;
   import §-l§.§?'§;
   import §[!$§.§"!%§;
   
   public class §[O§
   {
      
      public static const §!l§:String = "CutScene_Type_Intro";
      
      public static const §9!#§:String = "CutScene_Type_Outro";
      
      public static const §@!G§:String = "CutScene_Type_Final_Outro";
       
      
      private var §7K§:§"!%§;
      
      private var §>!%§:String;
      
      private var §&8§:Vector.<§4k§>;
      
      private var §&!9§:Number;
      
      private var §<X§:Number;
      
      private var § !;§:Number;
      
      private var §[&§:Number;
      
      private var §'M§:Sprite;
      
      private var §"!>§:Boolean = true;
      
      private var §?D§:uint;
      
      private var §3j§:Boolean;
      
      private var §]!1§:§7d§;
      
      private var §[!>§:§7d§;
      
      public function §[O§(param1:Object, param2:String)
      {
         var _loc3_:§4k§ = null;
         var _loc4_:Object = null;
         this.§&8§ = new Vector.<§4k§>();
         super();
         this.§&!9§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§>!%§ = §!l§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§>!%§ = §9!#§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§0=§(_loc4_);
               if(_loc3_)
               {
                  this.§&8§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§&8§)
            {
               if(_loc3_ is §0o§)
               {
                  (_loc3_ as §0o§).setSize(this.§ !;§,this.§[&§);
                  (_loc3_ as §0o§).§[W§ = this.§"!>§;
               }
               else if(_loc3_ is §<3§)
               {
                  (_loc3_ as §<3§).setSize(this.§ !;§,this.§[&§);
                  (_loc3_ as §<3§).§ o§ = this.§"!>§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§'M§;
      }
      
      private function §0=§(param1:Object) : §4k§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §4k§.§#A§:
               return new §<3§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §4k§.§0!3§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §0o§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §4k§.§&!§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §`w§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §4k§.§3!1§:
               return new §9<§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §4k§.END:
               this.§<X§ = param1.time * 1000;
               break;
            case §4k§.§@Y§:
               this.§ !;§ = param1.width;
               this.§[&§ = param1.height;
               break;
            case §4k§.§]_§:
               this.§"!>§ = false;
               break;
            case §4k§.§]H§:
               this.§"!>§ = true;
               break;
            case §4k§.§>!5§:
               this.§?D§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§'M§)
         {
            this.§'M§.dispose();
            this.§'M§ = null;
         }
         this.§&8§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§'M§)
         {
            this.§'M§ = new Sprite();
         }
         this.§&!9§ += param1;
         var _loc2_:int = this.§&8§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§&8§[_loc2_].update(this.§&!9§,this.§'M§,this.§7K§))
            {
               this.§&8§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§7"§();
         this.§'R§();
         this.§&w§();
         return this.§&!9§ < this.§<X§;
      }
      
      private function §&w§() : void
      {
         var _loc1_:int = §3! §.§"n§.§5P§.height;
         var _loc2_:Number = §?'§.§]!§;
         var _loc3_:Number = §?'§.§&!0§;
         var _loc4_:int = (_loc1_ - this.§[&§ * _loc2_) / _loc2_;
         this.§'M§.y = _loc4_ >> 1;
      }
      
      private function §7"§() : void
      {
         §3! §.§"n§.color = this.§?D§;
      }
      
      private function §'R§() : void
      {
         if(this.§3j§)
         {
            return;
         }
         var _loc1_:Sprite = this.§'M§.getChildByName(§<3§.§%!0§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§3j§ = true;
      }
      
      public function clone(param1:§"!%§) : §[O§
      {
         var _loc3_:§4k§ = null;
         var _loc2_:§[O§ = new §[O§(null,null);
         for each(_loc3_ in this.§&8§)
         {
            _loc2_.§&8§.push(_loc3_.clone());
         }
         _loc2_.§&!9§ = this.§&!9§;
         _loc2_.§<X§ = this.§<X§;
         _loc2_.§ !;§ = this.§ !;§;
         _loc2_.§[&§ = this.§[&§;
         _loc2_.§"!>§ = this.§"!>§;
         _loc2_.§?D§ = this.§?D§;
         _loc2_.§>!%§ = this.§>!%§;
         _loc2_.§7K§ = param1;
         return _loc2_;
      }
      
      public function get §8'§() : String
      {
         return this.§>!%§;
      }
      
      public function set §8'§(param1:String) : void
      {
         this.§>!%§ = param1;
      }
   }
}
